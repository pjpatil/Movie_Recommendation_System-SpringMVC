package vector.india.Movie_Recommendation_System_Application.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import vector.india.Movie_Recommendation_System_Application.model.GenresModel;
import vector.india.Movie_Recommendation_System_Application.model.MovieModel;
import vector.india.Movie_Recommendation_System_Application.model.UserModel;



@Repository("movieRepository")
public class MovieRepositoryImpl implements MovieRepository {
	@Autowired
	JdbcTemplate template;

	List<MovieModel> list;

	@Override
	public int addMovieAndGetId(final MovieModel movie) {

		int value = template.update("insert into moviemodel values('0',?,?,?,?,?,?,?,null)", new PreparedStatementSetter() {

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

//		System.out.println("mooooooooooo id:" + mid);
//		System.out.println("gggggenn  id:" + genid);

		int value = template.update("insert into MovieGenresJoin values ('0',?, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, mid);
				ps.setInt(2, genid);
			}
		});
//		System.out.println("vlaue is : " + value);
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
				mm.setTotalrating(rs.getFloat(9));
				return mm;
			}
		});
		return list;
	}

	@Override
	public List<MovieModel> searchMovies(String movieTitle, String movieGenre, String yearFrom, String yearTo) {
        StringBuilder sql = new StringBuilder("select m.movid, m.movtitle, m.movdtrel, g.gentitle from  moviemodel m " +
                "join moviegenresjoin mgj on m.movid = mgj.movid " +
                "join genresmodel g on mgj.genid = g.genid where  1=1");

        List<Object> params = new ArrayList<Object>();

        // Add search filters if provided
        if (movieTitle != null && !movieTitle.isEmpty()) {
            sql.append(" and m.movtitle like ?");
            params.add("%" + movieTitle + "%");
        }
        if (movieGenre != null && !movieGenre.isEmpty()) {
            sql.append(" and g.gentitle like ?");
            params.add("%" + movieGenre + "%");
        }
        if (yearFrom != null && !yearFrom.isEmpty()) {
            sql.append(" and m.movdtrel >= ?");
            params.add(java.sql.Date.valueOf(yearFrom));
        }
        if (yearTo != null && !yearTo.isEmpty()) {
            sql.append(" and m.movdtrel <= ?");
            params.add(java.sql.Date.valueOf(yearTo));
        }

        return template.query(sql.toString(), params.toArray(), new RowMapper<MovieModel>() {
            @Override
            public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
                MovieModel movie = new MovieModel();
                movie.setMovid(rs.getInt("movid"));
                movie.setMovtitle(rs.getString("movtitle"));
                movie.setMovdtrel(rs.getString("movdtrel"));
                movie.setGentitle(rs.getString("gentitle"));
                return movie;
            }
        });
    }

	@Override
	public MovieModel getMovieByName(String name) {
		String sql="select m.movid, m.movtitle, m.movdtrel,m.movlang,m.movdescription,m.movlink,m.totalrating,g.gentitle from moviemodel m \r\n"
				+ "join moviegenresjoin mgj on m.movid = mgj.movid \r\n"
				+ "join genresmodel g on mgj.genid = g.genid where m.movtitle='"+name+"'";
		
		try {
            return template.queryForObject(sql, new RowMapper<MovieModel>() {

				@Override
				public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					MovieModel mm=new MovieModel();
					mm.setMovid(rs.getInt(1));
					mm.setMovtitle(rs.getString(2));
					mm.setMovdtrel(rs.getString(3));
					mm.setMovlang(rs.getString(4));
					mm.setMovdescription(rs.getString(5));
					mm.setMovlink(rs.getString(6));
					mm.setTotalrating(rs.getFloat(7));
					mm.setGentitle(rs.getString(8));
				
					return mm;
				}
            });
            
        } catch (Exception e) {
            return null;
        }
	}

	@Override
	public List getTopFiveMovies() {
		list = template.query("select *from moviemodel order by movdtrel desc limit 5", new RowMapper<MovieModel>() {

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
				mm.setTotalrating(rs.getFloat(9));
				return mm;
			}
		});
		return list;
		
	}

		
		

}
