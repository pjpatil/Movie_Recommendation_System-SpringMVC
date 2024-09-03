package vector.india.Movie_Recommendation_System_Application.repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import vector.india.Movie_Recommendation_System_Application.model.UserModel;

@Repository("userRepo")
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	JdbcTemplate template;
	
	@Override
	public boolean validUser(final UserModel model) {
//		int value =template.update("select *from usermodel where umobileno=? && upassword=?", new PreparedStatementSetter() {
//
//			@Override
//			public void setValues(PreparedStatement ps) throws SQLException {
//				ps.setString(1,model.getUmobileno());
//				ps.setString(2,model.getUpassword());
//			}
//		});
		
		String sql = "SELECT COUNT(*) FROM usermodel WHERE umobileno = ? AND upassword = ?";
        int count = template.queryForObject(sql, new Object[]{model.getUmobileno(), model.getUpassword()}, Integer.class);
        return count > 0;
    
//		return value > 0 ? true : false;
	}

}
