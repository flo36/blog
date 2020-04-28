package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bdd_Connexion.dbConnect;

public class Amitie {

	int id;
	int idUser1;
	int idUser2;
	
	private static String FETCH_AMITIES_SQL = "SELECT id, idUser1, idUser2 FROM amities";
	private static String ADD_AMITIES_SQL = "INSERT INTO amities VALUES ('";
	
	
	Amitie( int _numUser1, int _numUser2)
	{
		this.idUser1 = _numUser1;
		this.idUser2 = _numUser2;
	}
	
	Amitie(int _id, int _numUser1, int _numUser2)
	{
		this.id = _id;
		this.idUser1 = _numUser1;
		this.idUser2 = _numUser2;
	}
	
	public ArrayList<Amitie> recupAmities()
	{
		ArrayList<Amitie> listAmities = new ArrayList<Amitie>();
		Connection connection = dbConnect.getInstance();
		Statement stmt;

		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(FETCH_AMITIES_SQL);
			// Loop over the database result set and create the
			// user objects.
			while (rs.next()) {
				
				Amitie a = new Amitie(rs.getInt("id"), rs.getInt("idUser1"), rs.getInt("idUser2"));
				listAmities.add(a);
				
			}
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return listAmities;
	}
	
	public boolean addAmitie()
	{
		boolean ajout = false;
		Connection connection = dbConnect.getInstance();
		Statement stmt;
		
		try {
			stmt = connection.createStatement();
			

			ResultSet rs = stmt.executeQuery(ADD_AMITIES_SQL + this.idUser1 + " ' , ' "
												+ this.idUser2 + " ' );");
			 
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
