package vector.india.Movie_Recommendation_System_Application.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import vector.india.Movie_Recommendation_System_Application.model.GenresModel;
import vector.india.Movie_Recommendation_System_Application.model.MovieModel;



@Repository("movieRepository")
public class MovieRepositoryImpl implements MovieRepository {
	@Autowired
	JdbcTemplate template;

	List<MovieModel> list;

	@Override
	public int addMovieAndGetId(final MovieModel movie) {

		int value = template.update("insert into moviemodel values('0',?,?,?,?,?,?,?)", new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, movie.getMovtitle());
				ps.setInt(2, movie.getMovyear());
				ps.setString(3, movie.getMovlang());
				ps.setString(4, movie.getMovdtrel());
				ps.setString(5, movie.getCountry());
				ps.setString(6, movie.getMovlink());
				ps.setString(7, movie.getMovdescription());
			}
		});

		int mid;
		mid = template.queryForInt("select max(movid) from moviemodel");
//		System.out.println("max value is mooo :" + mid);
		return mid;
	}

	@Override
	public boolean isJoinMovieGenres(final int mid, final int genid) {

		System.out.println("mooooooooooo id:" + mid);
		System.out.println("gggggenn  id:" + genid);

		int value = template.update("INSERT INTO MovieGenresJoin values ('0',?, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, mid);
				ps.setInt(2, genid);
			}
		});
		System.out.println("vlaue is : " + value);
		return value > 0 ? true : false;
	}

	@Override
	public List<MovieModel> getAllMovies() {
		list = template.query("select *from moviemodel", new RowMapper<MovieModel>() {

			@Override
			public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				MovieModel mm = new MovieModel();
				mm.setMovid(rs.getInt(1));
				mm.setMovtitle(rs.getString(2));
				mm.setMovyear(rs.getInt(3));
				mm.setMovlang(rs.getString(4));
				mm.setMovdtrel(rs.getString(5));
				mm.setCountry(rs.getString(6));
				mm.setMovlink(rs.getString(7));
				mm.setMovdescription(rs.getString(8));
				return mm;
			}
		});
		return list;
	}

	

}
