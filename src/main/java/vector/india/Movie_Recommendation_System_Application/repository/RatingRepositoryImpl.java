package vector.india.Movie_Recommendation_System_Application.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import vector.india.Movie_Recommendation_System_Application.model.RatingModel;
import vector.india.Movie_Recommendation_System_Application.model.UserModel;

@Repository("ratingRepository")
public class RatingRepositoryImpl implements RatingRepository {
	@Autowired
	JdbcTemplate template;

	@Override
	public boolean giveRatingMoviebyUser(final RatingModel rating,final int uid,final int movieid) {
		int value = template.update("insert into RatingModelJoin(watchid,uid,movid,numrating,feedback) values('0',?,?,?,?)", new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, uid);
				ps.setInt(2, movieid);
				ps.setFloat(3, rating.getNumrating());
				ps.setString(4, rating.getFeedback());
			}
		});
		return value > 0 ? true : false;
	}

	@Override
	public List<UserModel> movieRatingbyUser(int movieid) {
		List list=template.query("select u.uname,r.numrating,r.feedback,r.watchdate from RatingModelJoin r inner join usermodel u on r.uid=u.uid where movid='"+movieid+"' order by r.watchid desc", new RowMapper<UserModel>() {

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel um=new UserModel();
				um.setUname(rs.getString(1));
				um.setNumrating(rs.getFloat(2));
				um.setFeedback(rs.getString(3));
				um.setWatchdate(rs.getString(4));
				return um;
			}
		});
		
		return list;
	}

	
	
}
