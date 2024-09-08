package vector.india.Movie_Recommendation_System_Application.service;

import vector.india.Movie_Recommendation_System_Application.model.UserModel;

public interface UserService {

	boolean userRegisterSave(UserModel model);
	
//	boolean validUser(UserModel model);

	UserModel validUser(String uno, String upass);


}
