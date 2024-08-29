package vector.india.Movie_Recommendation_System_Application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vector.india.Movie_Recommendation_System_Application.model.MovieModel;
import vector.india.Movie_Recommendation_System_Application.repository.MovieRepository;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
	@Autowired
	MovieRepository movieRepository;

	@Override
	public boolean isAddMovies(MovieModel movie) {
		return movieRepository.isAddMovies(movie);
	}

}
