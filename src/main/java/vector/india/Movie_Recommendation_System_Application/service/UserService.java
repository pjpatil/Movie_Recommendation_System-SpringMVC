package vector.india.Movie_Recommendation_System_Application.service;

import java.util.List;

import vector.india.Movie_Recommendation_System_Application.model.UserModel;

public interface UserService {

	boolean userRegisterSave(UserModel model);
	
//	boolean validUser(UserModel model);

	public UserModel validUser(String uno, String upass);

	public List getAllUser();


}
