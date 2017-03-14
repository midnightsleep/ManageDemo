package com.demo.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.demo.dao.inter.ILoanOperation;
import com.demo.dao.inter.IUserOperation;
import com.demo.model.Loan;
import com.demo.model.User;

public class UserDao {
	private static SqlSessionFactory sqlSessionFactory;
	private static Reader reader;
	private static SqlSession session;
	private static IUserOperation userOperation;
	private static ILoanOperation loanOperation;

	static {
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			session = sqlSessionFactory.openSession();
			userOperation = session
					.getMapper(IUserOperation.class);
			loanOperation = session.getMapper(ILoanOperation.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSession() {
		return sqlSessionFactory;
	}
	
	
	/**
	 * 
	 * @Title: getUserPass
	 * @Description: TODO(获取用户的密码)
	 * @param: @param username
	 * @param: @return   
	 * @return: String   
	 * @throws
	 */
	public static String getUserPass(String username){
		User user = userOperation.selectUserByName(username);
		//如果没有该用户，返回为空字符串
		if (null == user) {
			return "";
		}else {
			return user.getUserpass();
		}
	}
	
	/**
	 * 
	 * @Title: getUserList
	 * @Description: TODO(获取用户list)
	 * @param: @param queryStr
	 * @param: @return   
	 * @return: JSONArray   
	 * @throws
	 */
	public static JSONArray getUserList(){
		List<User> list = userOperation.selectUsers("%");
		JSONArray js = new JSONArray();
		for (int i = 0; i < list.size(); i++) {
			js.add(JSON.toJSON(list.get(i)));
		}
		return js;
	}
	
	/**
	 * 
	 * @Title: getLoanList
	 * @Description: TODO(获取所有的贷款信息)
	 * @param: @return   
	 * @return: JSONArray   
	 * @throws
	 */
	public static JSONArray getLoanList(){
		List<Loan> list = loanOperation.selectLoans("%");
		JSONArray js = new JSONArray();
		for (int i = 0; i < list.size(); i++) {
			js.add(JSON.toJSON(list.get(i)));
		}
		return js;
	}

 	public static void main(String[] args) {
 		System.out.println(getLoanList().toJSONString());
		
	}
}
