package vector.india.Movie_Recommendation_System_Application.repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import vector.india.Movie_Recommendation_System_Application.model.MovieModel;

@Repository("movieRepository")
public class MovieRepositoryImpl implements MovieRepository {
	@Autowired
	JdbcTemplate template;

	@Override
	public boolean isAddMovies(final MovieModel movie) {
		int value = template.update("insert into moviemodel values('0',?,?,?,?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1,movie.getMovtitle());
				ps.setInt(2, movie.getMovyear());
				ps.setString(3, movie.getMovlang());
				ps.setString(4, movie.getMovdtrel());
				ps.setString(5,movie.getCountry());
				ps.setString(6,movie.getMovlink());
				ps.setString(7,movie.getMovdescription());
			}
		});
		return value > 0 ? true : false;
	}

}
