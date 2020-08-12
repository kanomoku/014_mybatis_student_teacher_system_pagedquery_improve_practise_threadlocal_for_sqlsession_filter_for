package com.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mapper.StudentMapper;
import com.mapper.TeacherMapper;
import com.pojo.PageInfo;
import com.pojo.Student;
import com.pojo.Teacher;
import com.service.StudentService;
import com.util.MyBatisUtil;

public class StudentServiceImpl implements StudentService {

	@Override
	public PageInfo showPage(String sname, String tname, String pageSizeStr, String pageNumStr) {
		int pageSize = 2;
		int pageNum = 1;
		if (pageSizeStr != null && !"".equals(pageSizeStr)) {
			pageSize = Integer.parseInt(pageSizeStr);
		}
		if (pageNumStr != null && !"".equals(pageNumStr)) {
			pageNum = Integer.parseInt(pageNumStr);
		}
		PageInfo pi = new PageInfo();
		pi.setPageNum(pageNum);
		pi.setPageSize(pageSize);
		pi.setSname(sname);
		pi.setTname(tname);
		pi.setPageStart(pageSize * (pageNum - 1));

		SqlSession session = MyBatisUtil.getSession();
		StudentMapper studentMapper = session.getMapper(StudentMapper.class);
		List<Student> studentList = studentMapper.selByPage(pi);
		TeacherMapper teacherMapper = session.getMapper(TeacherMapper.class);
		for (Student student : studentList) {
			Teacher teacher = teacherMapper.selById(student.getId());
			student.setTeacher(teacher);
		}
		pi.setList(studentList);
		long count = studentMapper.selCountByPageInfo(pi);
		pi.setTotal(count % pageSize == 0 ? count / pageSize : count / pageSize + 1);

		return pi;
	}

}
