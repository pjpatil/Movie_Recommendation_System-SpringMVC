package vector.india.Movie_Recommendation_System_Application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vector.india.Movie_Recommendation_System_Application.model.RatingModel;
import vector.india.Movie_Recommendation_System_Application.repository.RatingRepository;

@Service("ratingService")
public class RatingServiceImpl implements RatingService {
	
	@Autowired
	RatingRepository ratingRepository;

	@Override
	public boolean giveRatingMoviebyUser(RatingModel rating, int uid, int movieid) {
		return ratingRepository.giveRatingMoviebyUser(rating,uid,movieid);
	}

	@Override
	public List movieRatingbyUser(int movieid) {
		return ratingRepository.movieRatingbyUser(movieid);
	}

}
