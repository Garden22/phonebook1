package com.javaex.dao;

import java.util.List;
import com.javaex.vo.*;
public class TestApp {

	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();
		
		List<PersonVo> pList = phoneDao.personSelect();
		for (PersonVo p: pList) {
			p.print();
		}
	}

}
