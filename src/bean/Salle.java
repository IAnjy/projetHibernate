package bean;

public class Salle {
	private Long codesal;
	private String designation;
	
	public Salle() {
		super();
		//TODO Auto-generated constructor stub
	}

	public Salle(String designation) {
		super();
		this.designation = designation;
	}

	public Long getCodesal() {
		return codesal;
	}

	public void setCodesal(Long codesal) {
		this.codesal = codesal;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	
}
