package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.LoginDAO;
import com.internousdev.craftdenki.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private LoginDAO dao = new LoginDAO();
	private LoginDTO dto = new LoginDTO();
	private String result;
	private String loginId;
	private String loginPassword;
	private String status;

	public String execute() {
		result = ERROR;

		dto = dao.loginUserInfo(loginId, loginPassword);

		session.put("loginUserInfo", dto);

		if((((LoginDTO) session.get("loginUserInfo")).getLoginId()).equals("craft")){
			if((((LoginDTO) session.get("loginUserInfo")).getLoginId()).equals("denki")){
//				session.put("master_Id","craft");
//				session.put("master_Pass","denki");
				session.put("master_flg","1");
				result = "master";
				return result;
			}
		}else if (!(((LoginDTO) session.get("loginUserInfo")).getLoginId()).equals(loginId)) {
			if (!(((LoginDTO) session.get("loginUserInfo")).getLoginPass()).equals(loginPassword)) {
				session.put("loginId", dto.getLoginId());
				session.put("loginPass", dto.getLoginPass());
				if (status == "cart") {
					result = "cart";
					dao.cartInfo("仮ログインId", dto.getLoginId());
					return result;
				} else {
					result = "mypage";
					return result;
				}
			}
		}

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPass() {
		return loginPassword;
	}

	public void setLoginPass(String loginPassword) {
		this.loginPassword = loginPassword;
	}

}
