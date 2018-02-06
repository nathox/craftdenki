package com.internousdev.craftdenki.action;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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

//IDについて
        Pattern p1 = Pattern.compile("^[0-9a-zA-Z]*$");
        Matcher m1 = p1.matcher(loginId);

        if(m1.find() == false ){
        	String errormsg1 = "IDは半角英数字で入力してください";
        }

		int length = loginId.getBytes().length;
        if(length < 1) { // 最小文字数よりも少なかった場合
            String IdErrorMsg = "IDは1文字以上8文字以内で入力してください";
        }else if(length > 8) { // 最大文字数よりも多かった場合
            String IdErrorMsg = "IDは1文字以上8文字以内で入力してください";
        }else if(length == 0) { // 文字数が0だった場合
            String IdErrorMsg = "IDは1文字以上8文字以内で入力してください";
        }



//Passについて
        Pattern p2 = Pattern.compile("^[0-9a-zA-Z]*$");
        Matcher m2 = p2.matcher(loginPassword);

        if(m2.find() == false){
        	String errormsg1 = "パスワードは半角英数字で入力してください";
        }

        System.out.println(m2.find());





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
