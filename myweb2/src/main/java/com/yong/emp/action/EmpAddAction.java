package com.yong.emp.action;

import java.io.IOException;

import com.yong.emp.model.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yong.controller.CommandHandler;

public class EmpAddAction implements CommandHandler {

	@Override
	public String Process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String dept=req.getParameter("dept");
		
		EmpDTO dto=new EmpDTO(0, name, email, dept);
		EmpDAO dao=new EmpDAO();
		int result=dao.empAdd(dto); //기능호출
		
		String msg=result>0?"사원등록성공!(mvc)":"사원등록실패(mvc)";
		req.setAttribute("msg", msg);
		
		return "/emp/empMsg.jsp";
	}

}
