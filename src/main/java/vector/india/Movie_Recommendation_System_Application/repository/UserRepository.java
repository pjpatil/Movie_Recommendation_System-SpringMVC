package vector.india.Movie_Recommendation_System_Application.repository;

import vector.india.Movie_Recommendation_System_Application.model.UserModel;

public interface UserRepository {

//	boolean validUser(UserModel model);

	boolean userRegisterSave(UserModel model);

	UserModel validUser(String uno, String upass);

}
