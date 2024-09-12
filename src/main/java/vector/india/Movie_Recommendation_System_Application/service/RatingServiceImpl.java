package vector.india.Movie_Recommendation_System_Application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vector.india.Movie_Recommendation_System_Application.repository.RatingRepository;

@Service("ratingService")
public class RatingServiceImpl implements RatingService {
	
	@Autowired
	RatingRepository ratingRepository;

}
