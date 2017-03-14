package com.demo.test;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.demo.dao.inter.ILoanOperation;
import com.demo.dao.inter.IUserOperation;
import com.demo.model.Loan;
import com.demo.model.User;

public class MybatisTest {
	private static SqlSessionFactory sqlSessionFactory;
	private static Reader reader;

	static {
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSession() {
		return sqlSessionFactory;
	}

	public static void main(String[] args) {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
//			IUserOperation userOperation = session
//					.getMapper(IUserOperation.class);
			ILoanOperation loanOperation = session.getMapper(ILoanOperation.class);
			List<Loan> list = loanOperation.selectLoans("%");
			for (Loan loan : list) {
				System.out.println(loan.getAccountId());
			}
			/**
			 * 查询数据
			 */
//			List<User> list = userOperation.selectUsers("%");
//			for (User user2 : list) {
//				System.out.println(user2);
//			}
			/**
			 * 增加数据
			 */
//			for (int i = 10; i < 100; i++) {
//				User user = new User("admin"+i,"123456"+i);
//				System.out.println(userOperation.addUser(user));
//				session.commit();
//				System.out.println("当前增加的用户 username为:" + user.getUsername());
//			}
			
			/**
			 * 修改数据
			 */
//			User user = userOperation.selectUserByID(1);            
//            user.setUserAddress("原来是魔都的浦东创新园区");
//            userOperation.updateUser(user);
//            session.commit();
//            System.out.println(userOperation.selectUserByID(1));
		} finally {
			session.close();
		}
	}
}
