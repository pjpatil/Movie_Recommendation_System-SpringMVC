package vector.india.Movie_Recommendation_System_Application.repository;

import java.util.List;

import vector.india.Movie_Recommendation_System_Application.model.RatingModel;

public interface RatingRepository {

	boolean giveRatingMoviebyUser(RatingModel rating, int uid, int movieid);

	public List movieRatingbyUser(int movieid);

	public List getUserWatchlist(int uid);

}
