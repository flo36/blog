package DAO;

public class Post {

	int id;
	int numUser;
	String titre;
	String texte;
	
	Post(int _numUser, String _titre, String _texte)
	{
		this.numUser = _numUser;
		this.titre = _titre;
		this.texte = _texte;
	}
	
	Post(int _id,int _numUser, String _titre, String _texte)
	{
		this.id = _id;
		this.numUser = _numUser;
		this.titre = _titre;
		this.texte = _texte;
	}
	
}
