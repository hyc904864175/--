package com.yxl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UsersDao {
		/**
		 * 获取数据库连接
		 * @return Connection对象
		 */
		public Connection getConnection(){
			// 数据库连接
			Connection conn = null;
			try {
				// 加载数据库驱动，注册到驱动管理器
				Class.forName("com.mysql.jdbc.Driver");
				// 数据库连接字符串
				String url = "jdbc:mysql://localhost:33060/world";
				// 数据库用户名
				String Username = "root";
				// 数据库密码
				String password = "root";
				// 创建Connection连接
				conn = DriverManager.getConnection(url,Username,password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			// 返回数据库连接
			return conn;
		}
		
		/**
		 * 分页查询所有商品信息
		 * @param page 页数
		 * @return List<Register>
		 */
		public List<Register> find(int page){
			// 创建List
			List<Register> list = new ArrayList<Register>();
			// 获取数据库连接
			Connection conn = getConnection();
			// 分页查询的SQL语句
			String sql = "select * from register order by username desc limit ?,?";
			try {
				// 获取PreparedStatement
				PreparedStatement ps = conn.prepareStatement(sql);
				// 对SQL语句中的第1个参数赋值
				ps.setInt(1, (page - 1) *Register.PAGE_SIZE);
				// 对SQL语句中的第2个参数赋值
				ps.setInt(2, Register.PAGE_SIZE);
				// 执行查询操作
				ResultSet rs = ps.executeQuery();
				// 光标向后移动，并判断是否有效
				while(rs.next()){
					// 实例化Registor
					Register register = new Register();
					// 对telephone属性赋值
					register.settelephone(rs.getString("telephone"));
					// 对username属性赋值
					register.setusername(rs.getString("username"));
					// 对email属性赋值
					register.setemail(rs.getString("email"));
					// 对password属性赋值
					register.setpassword(rs.getString("password"));
					// 将UsersRegister添加到List集合中
					list.add(register);
				}
				// 关闭ResultSet
				rs.close();
				// 关闭PreparedStatement
				ps.close();
				// 关闭Connection
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		
		/**
		 * 查询总记录数
		 * @return 总记录数
		 */
		public int findCount(){
			// 总记录数
			int count = 0;
			// 获取数据库连接
			Connection conn = getConnection();
			// 查询总记录数SQL语句
			String sql = "select count(*) from register";
			try {
				// 创建Statement
				Statement stmt = conn.createStatement();
				// 查询并获取ResultSet
				ResultSet rs = stmt.executeQuery(sql);
				// 光标向后移动，并判断是否有效
				if(rs.next()){
					// 对总记录数赋值
					count = rs.getInt(1);
				}
				// 关闭ResultSet
				rs.close();
				// 关闭Connection
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			// 返回总记录数
			return count;
		}
	}
