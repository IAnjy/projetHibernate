package bean;

import java.util.Date;

public class Occuper {
	private Long id;
	private Long codeprof;
	private Long codesal;
	private Date date;
	
	
	public Occuper() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Occuper(Long codeprof, Long codesal, Date date) {
		super();
		this.codeprof = codeprof;
		this.codesal = codesal;
		this.date = date;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Long getCodeprof() {
		return codeprof;
	}


	public void setCodeprof(Long codeprof) {
		this.codeprof = codeprof;
	}


	public Long getCodesal() {
		return codesal;
	}


	public void setCodesal(Long codesal) {
		this.codesal = codesal;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}

	
	
	
}
