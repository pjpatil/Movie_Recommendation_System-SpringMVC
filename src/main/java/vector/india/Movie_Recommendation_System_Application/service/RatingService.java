package vector.india.Movie_Recommendation_System_Application.service;

import java.util.List;

import vector.india.Movie_Recommendation_System_Application.model.RatingModel;

public interface RatingService {

	boolean giveRatingMoviebyUser(RatingModel r, int uid, int movieid);

	public List movieRatingbyUser(int movieid);

}
