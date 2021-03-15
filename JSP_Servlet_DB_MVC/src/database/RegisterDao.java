package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import register.*;

public class RegisterDao {
	
	public List<Member> get() {
		
		List<Member> list = new ArrayList<Member>();
		Connection connection = Database.startDB();
		
		String sqlString = "SELECT * FROM member";
		
		try {
			Statement statement = connection.createStatement();
			ResultSet rSet = statement.executeQuery(sqlString);
			
			while(rSet.next()) {
				
				int id = rSet.getInt("id");
				String username = rSet.getString("username");
				String password = rSet.getString("password");
				String email = rSet.getString("email");
				String phone = rSet.getString("phone");
				
				
				list.add(new Member(username, password, email, phone , id));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}

		return list;
	}
	
	//--------------------------------------------------------------
	
	public String insert(String username , String password , String email , String phone) {
		
		Connection con = Database.startDB();
		String result = "";
		String sqlString = " INSERT INTO member(username,password,email,phone) VALUES (?,?,?,?) ";
		try {
		    result = "Başarılı!";

			PreparedStatement pStatement = con.prepareStatement(sqlString);
			pStatement.setString(1, username);
			pStatement.setString(2, password);
			pStatement.setString(3, email);
			pStatement.setString(4, phone);
			
			pStatement.executeUpdate();
			
			
			Database.startDB().close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			result = "ERROR INSERT METOD ! ";
		}
		return result;
	}
	
	//--------------------------------------------------------------
	
	public String delete(int id) {
		String Result = "";
		Connection con = Database.startDB();
		String sql = "DELETE FROM Member WHERE id=? ";
		
		try {
			PreparedStatement pStatement = con.prepareStatement(sql);
			pStatement.setInt(1, id);
			pStatement.executeUpdate();
			Result = "Başarıyla silindi!";
			
		} catch (SQLException e) {
			e.printStackTrace();
			Result = "ERORR DELETE METOD";
		}
		return Result;
			
	}
	
	//--------------------------------------------------------------
	
	public String update(String username , String password , String email , String phone , int id){
		String result = "";
		Connection con = Database.startDB();
		String sqlString = "UPDATE member SET username = ? , password = ? , email = ? , phone = ? WHERE id = ?";
		
		try {
			PreparedStatement pStatement = con.prepareStatement(sqlString);
			pStatement.setString(1, username);
			pStatement.setString(2, password);
			pStatement.setString(3, email);
			pStatement.setString(4, phone);
			pStatement.setInt(5, id);
			
			pStatement.executeUpdate();
			result = username + " başarıyla güncellendi!";
			
		} catch (SQLException e) {
			e.printStackTrace();
			result = "ERROR UPDATE METOD";
		}
		return result;
	}
	
	
}
