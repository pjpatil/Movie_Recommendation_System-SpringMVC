package vector.india.Movie_Recommendation_System_Application.model;

public class RatingModel extends MovieModel {
	private int watchId;
	private float numrating;
	private float totalrating;
	private String feedback;
	private String watchdate;
	
	public int getWatchId() {
		return watchId;
	}
	public void setWatchId(int watchId) {
		this.watchId = watchId;
	}
	public float getNumrating() {
		return numrating;
	}
	public void setNumrating(float numrating) {
		this.numrating = numrating;
	}
	public float getTotalrating() {
		return totalrating;
	}
	public void setTotalrating(float totalrating) {
		this.totalrating = totalrating;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getWatchdate() {
		return watchdate;
	}
	public void setWatchdate(String watchdate) {
		this.watchdate = watchdate;
	}

}
