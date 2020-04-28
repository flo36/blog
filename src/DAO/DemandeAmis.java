package DAO;

public class DemandeAmis {

	int id;
	int demandeur;
	int receveur;
	
	DemandeAmis( int _numUser1, int _numUser2)
	{
		this.demandeur = _numUser1;
		this.receveur = _numUser2;
	}
	
	DemandeAmis(int _id, int _numUser1, int _numUser2)
	{
		this.id = _id;
		this.demandeur = _numUser1;
		this.receveur = _numUser2;
	}
	
	public String toString()
	{
		return "";
	}
	
}
