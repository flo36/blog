package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bdd_Connexion.dbConnect;

public class DemandeAmis {

	private int id;
	private int demandeur;
	private int receveur;
	
	private static String FETCH_DEMANDES_SQL = "SELECT * FROM demandeAmis";
	private static String ADD_DEMANDES_SQL = "INSERT INTO demandeAmis(email, pseudo, mdp) VALUES ('";
	private static String PARTICULAR_DEMANDES_SQL = "SELECT * FROM demandeAmis WHERE ";
	private static String ACCEPTE_DEMANDES_SQL = "DELETE FROM `demandeAmis` WHERE" ;
	
	public DemandeAmis( int _numUser1, int _numUser2)
	{
		this.demandeur = _numUser1;
		this.receveur = _numUser2;
	}
	
	public DemandeAmis(int _id, int _numUser1, int _numUser2)
	{
		this.id = _id;
		this.demandeur = _numUser1;
		this.receveur = _numUser2;
	}
	
	public int getReceveur() {
		return receveur;
	}
	
	public int getDemandeur() {
		return demandeur;
	}
	
	public int getId() {
		return id;
	}
	
	
	
	public String toString()
	{
		String res = "";
		
		User a = new User(null,null,null);
		String nomDemandeur = a.nomPersonne(this.getDemandeur());
		res+= nomDemandeur + " vous a envoye une demande d'amis";
		return res;
	}
	
	public ArrayList<DemandeAmis> recupDemande()
	{
		ArrayList<DemandeAmis> listDemandes = new ArrayList<DemandeAmis>();
		Connection connection = dbConnect.getInstance();
		Statement stmt;

		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(FETCH_DEMANDES_SQL);
			// Loop over the database result set and create the
			// user objects.
			while (rs.next()) {
				
				DemandeAmis d = new DemandeAmis(rs.getInt("id"), rs.getInt("idDemandeur"), rs.getInt("idReceveur"));
				listDemandes.add(d);
				
			}
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		System.out.println("taille dans demandeAmis :" + listDemandes);
		return listDemandes;
	}
	
	public void accepteDemande(int idDemandeur, int idReceveur)
	{
		
		Connection connection = dbConnect.getInstance();
		Statement stmt;
		int idDemande = 0;
		
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(PARTICULAR_DEMANDES_SQL +" idDemandeur = " + idDemandeur + " AND idReceveur = " + idReceveur );
			System.out.println("premiere requete faite");
			// Loop over the database result set and create the
			// user objects.
			System.out.println("avant amitie");
			while(rs.next())
			{
				Amitie a = new Amitie(rs.getInt("idReceveur"), rs.getInt("idDemandeur"));
				a.addAmitie();
			    idDemande = rs.getInt("id");
				System.out.println("apres amitie");
			}
			
			System.out.println(ACCEPTE_DEMANDES_SQL +" id = " + idDemande);
			
			stmt.executeUpdate(ACCEPTE_DEMANDES_SQL +" id = " + idDemande);
			System.out.println("deuxieme requete faite");
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
	
	public void refuseDemande(int idDemandeur, int idReceveur)
	{
		
		Connection connection = dbConnect.getInstance();
		Statement stmt;
		int idDemande = 0;
		
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(PARTICULAR_DEMANDES_SQL +" idDemandeur = " + idDemandeur + " AND idReceveur = " + idReceveur );
			System.out.println("premiere requete faite");
			// Loop over the database result set and create the
			// user objects.
			System.out.println("avant amitie");
			while(rs.next())
			{

			    idDemande = rs.getInt("id");
			}
						
			stmt.executeUpdate(ACCEPTE_DEMANDES_SQL +" id = " + idDemande);
			System.out.println("deuxieme requete faite");
			// Free resources
			rs.close();
			stmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
	
	public DemandeAmis recupSpecifiqueDemande(int idDemandeur, int idReceveur)
	{
		DemandeAmis res = null;
		ArrayList<DemandeAmis> recup = this.recupDemande();
		
		for(DemandeAmis d: recup)
		{
			if(d.getDemandeur()==idDemandeur && d.getReceveur()==idReceveur )
			{
				res = d;
			}
		}
		return res;
	}
	
	public DemandeAmis recupSpecifiqueDemande2(int idDemande)
	{
		DemandeAmis res = null;
		ArrayList<DemandeAmis> recup = this.recupDemande();
		
		for(DemandeAmis d: recup)
		{
			if(d.getId()==idDemande )
			{
				res = d;
			}
		}
		return res;
	}
}
