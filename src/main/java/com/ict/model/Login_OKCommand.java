package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.MVO;

public class Login_OKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		
		MVO m_vo = new MVO();
		m_vo.setId(id);
		m_vo.setPwd(pwd);
		
		MVO mvo = DAO.getLogIn(m_vo);
		
		
		if(mvo== null) {
			
			return "MyController?cmd=login";
		}else {
			request.getSession().setAttribute("mvo", mvo);
			request.getSession().setAttribute("login","ok");
			return "MyController?cmd=list";
		}
	
		
		
	}
	
}
