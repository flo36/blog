package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.sql.Statement;

import bdd_Connexion.dbConnect;

public class User {
	
	int id;
	String email;
	String pseudo;
	String mdp;
	
	private static String FETCH_USERS_SQL = "SELECT id, firstname, lastname FROM user";
	private static String ADD_USERS_SQL = "INSERT INTO users VALUES ('";
	
	public User(String _email, String _pseudo, String _mdp)
	{
		this.email = _email;
		this.pseudo = _pseudo;
		this.mdp = _mdp;
	}
	
	public User(int _id, String _email, String _pseudo, String _mdp)
	{
		this.email = _email;
		this.id = _id;
		this.pseudo = _pseudo;
		this.mdp = _mdp;
	}
	
	public int getId() {
		return id;
	}
	public String getMdp() {
		return mdp;
	}
	public String getPseudo() {
		return pseudo;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	
	public String toString()
	{
		String presentation = " pseudo : " + this.pseudo + "\n"
						+ " email : " + this.email;
		return presentation;
	}
	
	public ArrayList<User> recupUsers()
	{
		ArrayList<User> listUsers = new ArrayList<User>();
		Connection connection = dbConnect.getInstance();
		Statement stmt;

		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(FETCH_USERS_SQL);
			// Loop over the database result set and create the
			// user objects.
			while (rs.next()) {
				
				User u = new User(rs.getInt("id"), rs.getString("email"), rs.getString("pseudo"), rs.getString("mdp"));
				listUsers.add(u);
				
			}
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return listUsers;
	}
	
	public boolean identification()
	{
		boolean identification = false;
		ArrayList<User> listUsers = new ArrayList<User>();
		Connection connection = dbConnect.getInstance();
		Statement stmt;

		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(FETCH_USERS_SQL);
			// Loop over the database result set and create the
			// user objects.
			while (rs.next()) {
				
				User u = new User(rs.getInt("id"), rs.getString("email"), rs.getString("pseudo"), rs.getString("mdp"));
				
				if(this.email.equals(u.email) && this.mdp.equals(u.mdp))
				{// email et mdp qui coincident
					this.setPseudo(rs.getString("pseudo"));
					this.setId(rs.getInt("id"));
					return true;
				}
				
			}
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return identification;
	}
	
	public boolean addUser()
	{
		boolean ajout = false;
		Connection connection = dbConnect.getInstance();
		Statement stmt;
		
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(FETCH_USERS_SQL);
			// Loop over the database result set and create the
			// user objects.
			while (rs.next()) {
				
				if(this.email.equals(rs.getString("email")))
				{// email deja pris
					return false;
				}
				
			}
			 rs = stmt.executeQuery(ADD_USERS_SQL + this.pseudo + " ' , ' "
												+ this.email + " ' , ' " 
												+ this.mdp + " ' );");
			 
			 rs.close();
			 stmt.close();
			 ajout = true;
			 return ajout;

		}catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		} 
	}
		
}
