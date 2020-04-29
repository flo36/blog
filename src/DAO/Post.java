package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bdd_Connexion.dbConnect;

public class Post {

	int id;
	int idUser;
	String titre;
	String texte;
	
	private static String FETCH_POSTS_SQL = "SELECT id, titre, texte, idUser FROM posts";
	private static String ADD_POSTS_SQL = "INSERT INTO posts VALUES ('";
	
	Post(int _numUser, String _titre, String _texte)
	{
		this.idUser = _numUser;
		this.titre = _titre;
		this.texte = _texte;
	}
	
	Post(int _id,int _numUser, String _titre, String _texte)
	{
		this.id = _id;
		this.idUser = _numUser;
		this.titre = _titre;
		this.texte = _texte;
	}
	
	public int getId() {
		return id;
	}
	
	public int getNumUser() {
		return idUser;
	}
	
	public String getTexte() {
		return texte;
	}
	
	public String getTitre() {
		return titre;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	
	public ArrayList<Post> recupPosts()
	{
		ArrayList<Post> listPosts = new ArrayList<Post>();
		Connection connection = dbConnect.getInstance();
		Statement stmt;

		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(FETCH_POSTS_SQL);
			// Loop over the database result set and create the
			// user objects.
			while (rs.next()) {
				Post p = new Post(rs.getInt("id"), rs.getInt("idUser"), rs.getString("titre"), rs.getString("texte"));
				listPosts.add(p);
			}
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return listPosts;
	}
	
	public boolean addPost()
	{
		boolean ajout = false;
		Connection connection = dbConnect.getInstance();
		Statement stmt;
		
		try {
			stmt = connection.createStatement();
			

			ResultSet rs = stmt.executeQuery(ADD_POSTS_SQL + this.idUser + " ' , ' "
												+ this.titre + " ' , ' " 
												+ this.texte + " ' );");
			 
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
