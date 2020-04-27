package projet_blog;

public class Commentaire {
	
	int id;
	int numPost;
	int numUser;
	String texte;
	
	Commentaire(int _numPost, int _numUser, String _texte)
	{
		this.numPost = _numPost;
		this.numUser = _numUser;
		this.texte = _texte;
	}
	
	Commentaire(int _id, int _numPost, int _numUser, String _texte)
	{
		this.id = _id;
		this.numPost = _numPost;
		this.numUser = _numUser;
		this.texte = _texte;
	}

}
