package vector.india.Movie_Recommendation_System_Application.repository;

import java.util.List;

import vector.india.Movie_Recommendation_System_Application.model.MovieModel;

public interface MovieRepository {

	int addMovieAndGetId(MovieModel movie);

	public List<MovieModel> getAllMovies();

	boolean isJoinMovieGenres(int mid, int genid);

	

}
