package dao;

import java.sql.*;

import bean.RegisterBean;
import util.DBConnection;

public class RegisterDao 
{
	public int insertData(RegisterBean r)
	{
		String id=r.getId();
		String name=r.getName();
		String gender=r.getGender();
		String mobile=r.getMobile();
		String email=r.getEmail();
		String password=r.getPassword();
		try
		{
			Connection con=DBConnection.createConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO V_USER VALUES(?,?,?,?,?,?)");
			int eid=Integer.parseInt(id);
			ps.setInt(1,eid);
			ps.setString(2, name);
			ps.setString(3, gender);
			ps.setString(4, email);
			ps.setString(5,password);
			ps.setString(6, mobile);
			int i=ps.executeUpdate();
				
			if(i==1)
			{ 
					
					return 1;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
}
