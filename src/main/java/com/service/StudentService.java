package com.service;

import com.pojo.PageInfo;

public interface StudentService {
	PageInfo showPage(String sname,String tname,String pageSize,String pageNum);

}
