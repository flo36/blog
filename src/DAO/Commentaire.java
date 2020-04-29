package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bdd_Connexion.dbConnect;

public class Commentaire {
	
	int id;
	int idPost;
	int idUser;
	String texte;
	
	private static String FETCH_COMMENTAIRES_SQL = "SELECT id, idPost, idUser, texte FROM commentaires";
	private static String ADD_COMMENTAIRES_SQL = "INSERT INTO commentaires VALUES ('";
	
	Commentaire(int _numPost, int _numUser, String _texte)
	{
		this.idPost = _numPost;
		this.idUser = _numUser;
		this.texte = _texte;
	}
	
	Commentaire(int _id, int _numPost, int _numUser, String _texte)
	{
		this.id = _id;
		this.idPost = _numPost;
		this.idUser = _numUser;
		this.texte = _texte;
	}
	
	public int getId() {
		return id;
	}
	
	public int getIdPost() {
		return idPost;
	}
	
	public int getIdUser() {
		return idUser;
	}
	
	public String getTexte() {
		return texte;
	}
	
	public void setId(int id) {
		this.id = id;
	}


	public ArrayList<Commentaire> recupCommentaires()
	{
		ArrayList<Commentaire> listCommentaires = new ArrayList<Commentaire>();
		Connection connection = dbConnect.getInstance();
		Statement stmt;

		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(FETCH_COMMENTAIRES_SQL);
			// Loop over the database result set and create the
			// user objects.
			while (rs.next()) {
				
				Commentaire c = new Commentaire(rs.getInt("id"), rs.getInt("idPost"), rs.getInt("idUser"), rs.getString("texte"));
				listCommentaires.add(c);
				
			}
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		return listCommentaires;
	}
	
	public boolean addCommentaire()
	{
		boolean ajout = false;
		Connection connection = dbConnect.getInstance();
		Statement stmt;
		
		try {
			stmt = connection.createStatement();
			

			ResultSet rs = stmt.executeQuery(ADD_COMMENTAIRES_SQL + this.idPost + " ' , ' "
												+ this.idUser + " ' , ' " 
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
	
	public ArrayList<Commentaire>  commentaireDuPost(int idPost)
	{
		   ArrayList<Commentaire> commentairePost = new ArrayList<Commentaire>();
		Commentaire tempo = new Commentaire(0,0,null);
	    ArrayList<Commentaire> tousLesCommentaires = tempo.recupCommentaires();
	    
	    for(Commentaire c: tousLesCommentaires)
	    {
	    	if(c.getIdPost()== idPost)
	    	{
	    		commentairePost.add(c);
	    	}
	    }
	    
	    return commentairePost;
	}
	
}
