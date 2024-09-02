package vector.india.Movie_Recommendation_System_Application.service;

import java.util.List;

import vector.india.Movie_Recommendation_System_Application.model.MovieModel;

public interface MovieService {

	int addMovieAndGetId(MovieModel movie);
	public List<MovieModel> getAllMovies();
	boolean isJoinMovieGenres(int mid, int genid);


}
