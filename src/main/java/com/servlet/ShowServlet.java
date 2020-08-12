package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.PageInfo;
import com.service.StudentService;
import com.service.impl.StudentServiceImpl;

@WebServlet("/show")
public class ShowServlet extends HttpServlet {
	StudentService studentService = new StudentServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		String sname = req.getParameter("sname");
		if (sname != null && "".equals(sname)) {
			sname = new String(sname.getBytes("iso-8859-1"), "utf-8");
		}
		String tname = req.getParameter("tname");
		if (tname != null && "".equals(tname)) {
			tname = new String(tname.getBytes("iso-8859-1"), "utf-8");
		}
		String pageSize = req.getParameter("pageSize");
		if (pageSize != null && "".equals(pageSize)) {
			pageSize = new String(pageSize.getBytes("iso-8859-1"), "utf-8");
		}
		String pageNum = req.getParameter("pageNum");
		if (pageNum != null && "".equals(pageNum)) {
			pageNum = new String(pageNum.getBytes("iso-8859-1"), "utf-8");
		}
		
		PageInfo showPageInfo = studentService.showPage(sname, tname, pageSize, pageNum);
		req.setAttribute("showPageInfo", showPageInfo);
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
}
