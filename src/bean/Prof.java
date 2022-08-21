package bean;


public class Prof {
	private Long codeprof;
	private String nom;
	private String prenom;
	private String grade;
	
	
	public Prof() {
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
	
	public Prof(String nom, String prenom, String grade) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.grade = grade;
	}




	public Long getCodeprof() {
		return codeprof;
	}
	public void setCodeprof(Long codeprof) {
		this.codeprof = codeprof;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
	
	
	
}
