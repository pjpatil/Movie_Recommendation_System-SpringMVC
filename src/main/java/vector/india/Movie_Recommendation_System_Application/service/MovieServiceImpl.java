package vector.india.Movie_Recommendation_System_Application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vector.india.Movie_Recommendation_System_Application.model.MovieModel;
import vector.india.Movie_Recommendation_System_Application.repository.MovieRepository;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
	@Autowired
	MovieRepository movieRepository;

	@Override
	public int addMovieAndGetId(MovieModel movie) {
		return movieRepository.addMovieAndGetId(movie);
	}

	@Override
	public List<MovieModel> getAllMovies() {
		return movieRepository.getAllMovies();
	}

	@Override
	public boolean isJoinMovieGenres(int mid, int genid) {
		return movieRepository.isJoinMovieGenres(mid,genid);
	}

	

}
