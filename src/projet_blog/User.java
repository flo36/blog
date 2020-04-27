package projet_blog;

public class User {
	
	int id;
	String pseudo;
	String mdp;
	
	User(String _pseudo, String _mdp)
	{
		this.pseudo = _pseudo;
		this.mdp = _mdp;
	}
	
	User(int _id, String _pseudo, String _mdp)
	{
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
	
	

}
