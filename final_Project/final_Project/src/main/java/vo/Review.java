package vo;

public class Review {
	private String reviewId;
	private String userId;
	private String gameTitle;
	private float gameAverage;
	
	public String getReviewId() {
		return reviewId;
	}
	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGameTitle() {
		return gameTitle;
	}
	public void setGameTitle(String gameTitle) {
		this.gameTitle = gameTitle;
	}
	public float getGameAverage() {
		return gameAverage;
	}
	public void setGameAverage(float gameAverage) {
		this.gameAverage = gameAverage;
	}
}
