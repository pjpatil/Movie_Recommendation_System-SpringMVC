package vector.india.Movie_Recommendation_System_Application.model;

public class MovieModel extends GenresModel {
	private int movid;
	private String movtitle;
	private int movyear;
	private String movlang;
	private String movdtrel;
	private String country;
	private String movlink;
	private String movdescription;
	
	public int getMovid() {
		return movid;
	}
	public void setMovid(int movid) {
		this.movid = movid;
	}
	public String getMovtitle() {
		return movtitle;
	}
	public void setMovtitle(String movtitle) {
		this.movtitle = movtitle;
	}
	public int getMovyear() {
		return movyear;
	}
	public void setMovyear(int movyear) {
		this.movyear = movyear;
	}
	
	public String getMovlang() {
		return movlang;
	}
	public void setMovlang(String movlang) {
		this.movlang = movlang;
	}
	public String getMovdtrel() {
		return movdtrel;
	}
	public void setMovdtrel(String movdtrel) {
		this.movdtrel = movdtrel;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getMovlink() {
		return movlink;
	}
	public void setMovlink(String movlink) {
		this.movlink = movlink;
	}
	public String getMovdescription() {
		return movdescription;
	}
	public void setMovdescription(String movdescription) {
		this.movdescription = movdescription;
	}
	
	
	
}
