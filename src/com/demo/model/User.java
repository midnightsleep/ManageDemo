package com.demo.model;

/**
 * 
 * @ClassName: UserBean.java
 * @Description: TODO(User类,登陆使用)
 * 
 * @author Administrator
 * @version V1.0
 * @Date 2017-3-10 上午11:12:28
 */
public class User {
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 密码
	 */
	private String userpass;

	/**
	 * 
	 * @Title: UserBean
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param: @param username
	 * @param: @param userpass
	 * @throws
	 */
	public User(String username, String userpass) {
		this.username = username;
		this.userpass = userpass;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpass() {
		return userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	
	@Override
	public String toString() {
		return "{username:"+username +",userpass:"+ userpass+"}";
	}

}
