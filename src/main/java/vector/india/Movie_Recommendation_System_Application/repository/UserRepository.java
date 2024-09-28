package vector.india.Movie_Recommendation_System_Application.repository;

import java.util.List;

import vector.india.Movie_Recommendation_System_Application.model.UserModel;

public interface UserRepository {

//	boolean validUser(UserModel model);

	boolean userRegisterSave(UserModel model);

	public UserModel validUser(String uno, String upass);

	public List getAllUser();

}
