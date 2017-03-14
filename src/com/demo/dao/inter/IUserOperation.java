package com.demo.dao.inter;

import java.util.List;

import com.demo.model.User;

public interface IUserOperation {
	/**
	 * 
	 * @Title: selectUserByName
	 * @Description: TODO(根据用户名查找用户)
	 * @param: @param name
	 * @param: @return   
	 * @return: User   
	 * @throws
	 */
	public User selectUserByName(String name);
	public List<User> selectUsers(String userName);
	public boolean addUser(User user);
	/**
	 * 
	 * @Title: updateUser
	 * @Description: TODO(修改用户密码)
	 * @param: @param user
	 * @param: @return   
	 * @return: boolean   
	 * @throws
	 */
	public boolean updateUser(User user);
	public boolean deleteUser(int id);
}
