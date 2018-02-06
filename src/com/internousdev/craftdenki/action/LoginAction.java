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
	private String IDerrormsg;
	private String Passerrormsg;

	public String execute() {
		result = ERROR;

		// IDについて
		Pattern p1 = Pattern.compile("^[0-9a-zA-Z]*$");
		Matcher m1 = p1.matcher(loginId);

		if (m1.find() == false) {
			String IDerrormsg = "IDは半角英数字で入力してください";
			this.IDerrormsg = IDerrormsg;
			System.out.println("errormsg1:" + IDerrormsg);
		}

		int length1 = loginId.getBytes().length;
		if (length1 < 1) { // 最小文字数よりも少なかった場合
			String IDerrormsg = "IDは1文字以上8文字以内で入力してください";
			this.IDerrormsg = IDerrormsg;
			System.out.println("errormsg2:" + IDerrormsg);
		} else if (length1 > 8) { // 最大文字数よりも多かった場合
			String IDerrormsg = "IDは1文字以上8文字以内で入力してください";
			this.IDerrormsg = IDerrormsg;
			System.out.println("errormsg3:" + IDerrormsg);
		} else if (length1 == 0) { // 文字数が0だった場合
			String IDerrormsg = "IDを入力してください";
			this.IDerrormsg = IDerrormsg;
			System.out.println("errormsg4:" + IDerrormsg);
		}

		// Passについて
		Pattern p2 = Pattern.compile("^[0-9a-zA-Z]*$");
		Matcher m2 = p2.matcher(loginPassword);

		if (m2.find() == false) {
			String Passerrormsg = "パスワードは半角英数字で入力してください";
			this.Passerrormsg = Passerrormsg;
			System.out.println("errormsg1:" + IDerrormsg);
		}

		int length2 = loginPassword.getBytes().length;
		if (length2 < 1) { // 最小文字数よりも少なかった場合
			String Passerrormsg = "パスワードは1文字以上8文字以内で入力してください";
			this.Passerrormsg = Passerrormsg;
			System.out.println("errormsg2:" + Passerrormsg);
		} else if (length2 > 16) { // 最大文字数よりも多かった場合
			String Passerrormsg = "パスワードは1文字以上16	文字以内で入力してください";
			this.Passerrormsg = Passerrormsg;
			System.out.println("errormsg3:" + Passerrormsg);
		} else if (length2 == 0) { // 文字数が0だった場合
			String Passerrormsg = "パスワードを入力してください";
			this.Passerrormsg = Passerrormsg;
			System.out.println("errormsg4:" + Passerrormsg);
		}

		System.out.println(m1.find());
		System.out.println(m2.find());

		dto = dao.loginUserInfo(loginId, loginPassword);

		session.put("loginUserInfo", dto);

		if (IDerrormsg == null) {
			if (Passerrormsg == null) {
				if ((((LoginDTO) session.get("loginUserInfo")).getLoginId()).equals("craft")) {
					if ((((LoginDTO) session.get("loginUserInfo")).getLoginPass()).equals("denki")) {
						// session.put("master_Id","craft");
						// session.put("master_Pass","denki");
						session.put("master_flg", "1");
						session.put("IDerror","");
						session.put("Passerror","");

						result = "master";
						return result;
					}
				} else if (!(((LoginDTO) session.get("loginUserInfo")).getLoginId()).equals(loginId)) {
					if (!(((LoginDTO) session.get("loginUserInfo")).getLoginPass()).equals(loginPassword)) {
						session.put("loginId", dto.getLoginId());
						session.put("loginPass", dto.getLoginPass());
						if (status == "cart") {
							session.put("IDerror","");
							session.put("Passerror","");

							result = "cart";
							dao.cartInfo("仮ログインId", dto.getLoginId());
							return result;
						} else {
							session.put("IDerror","");
							session.put("Passerror","");

							result = "mypage";
							return result;
						}
					}
				}
			} else {
				String Passerrormsg = "入力されたパスワードが異なります";
				this.Passerrormsg = Passerrormsg;
				System.out.println("errormsg5:" + Passerrormsg);
			}
		}
		session.put("IDerror",IDerrormsg);
		session.put("Passerror",Passerrormsg);
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

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

}
