package vector.india.Movie_Recommendation_System_Application.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import vector.india.Movie_Recommendation_System_Application.model.MovieModel;
import vector.india.Movie_Recommendation_System_Application.model.UserModel;

@Repository("userRepo")
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	JdbcTemplate template;
	
//	@Override
//	public boolean validUser(final UserModel model) {
////		int value =template.update("select *from usermodel where umobileno=? && upassword=?", new PreparedStatementSetter() {
////
////			@Override
////			public void setValues(PreparedStatement ps) throws SQLException {
////				ps.setString(1,model.getUmobileno());
////				ps.setString(2,model.getUpassword());
////			}
////		});
//		
//		String sql = "select count(*) from usermodel where umobileno = ? AND upassword = ?";
//        int count = template.queryForObject(sql, new Object[]{model.getUmobileno(), model.getUpassword()}, Integer.class);
//        return count > 0;
//    
////		return value > 0 ? true : false;
//	}

	@Override
	public boolean userRegisterSave(final UserModel model) {
		int value = template.update("insert into usermodel values('0',?,?,?,?)",new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getUname());
				ps.setString(2, model.getBirthday());
				ps.setString(3, model.getUmobileno());
				ps.setString(4, model.getUpassword());
			}
		} );
		
		return value>0 ? true : false;
	}

	public UserModel validUser(String uno, String upass) {
        String sql = "SELECT uid, uname, birthday, umobileno, upassword FROM usermodel WHERE umobileno = ? AND upassword = ?";

        try {
            return template.queryForObject(sql, new Object[]{uno, upass}, new RowMapper<UserModel>() {

				@Override
				public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					UserModel user = new UserModel();
		            user.setUid(rs.getInt("uid"));
		            user.setUname(rs.getString("uname"));
		            user.setBirthday(rs.getString("birthday"));
		            user.setUmobileno(rs.getString("umobileno"));
		            user.setUpassword(rs.getString("upassword"));
		            return user;
				}
            	
            });
            
        } catch (Exception e) {
           
            return null;
        }
        
        
        
    }

  
	
}
