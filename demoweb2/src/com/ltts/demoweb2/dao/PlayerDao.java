package com.ltts.demoweb2.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ltts.demoweb2.configure.MyConnection;
import com.ltts.demoweb2.model.Player;

public class PlayerDao {
	
	public boolean insertPlayer(Player p) throws Exception {
		//fill your code
		Connection mc=MyConnection.getConnection(); // TRanfers control to another 
		PreparedStatement ps=mc.prepareStatement("insert into web_player values(?,?,?,?,?,?)");
		ps.setInt(1, p.getId());
		ps.setString(2, p.getName());
		ps.setString(3, p.getCountry());
		ps.setDate(4,(Date) p.getDateOfBirth());
		ps.setString(5,p.getEmail());
		ps.setInt(6, p.getAge());
		return ps.execute();
		//return false;

		
	}
	public List<Player> getAllPlayers() throws Exception{
		List<Player> li=new ArrayList<Player>();
		Connection mc=MyConnection.getConnection(); // TRanfers control to another 
		Statement ps=mc.createStatement();
		ResultSet rs=ps.executeQuery("select * from web_player");
		//Player p=new Player();
		while(rs.next()) {
			li.add(new Player(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getString(5),rs.getInt(6)));

		}
		return li;

	}

	public Player getPlayerById(int id) throws Exception {
		Player p=new Player();
		List<Player> li=getAllPlayers();
		for(Player p1:li) {
			if(p1.getId() == id) {
				p.setId(id);
				p.setName(p1.getName());
				p.setCountry(p1.getCountry());
				p.setDateOfBirth(p1.getDateOfBirth());
			}
		}

		return p;
	}



}
