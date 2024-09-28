package vector.india.Movie_Recommendation_System_Application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vector.india.Movie_Recommendation_System_Application.model.UserModel;
import vector.india.Movie_Recommendation_System_Application.repository.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	UserRepository userRepo;

	@Override
	public boolean userRegisterSave(UserModel model) {
		return userRepo.userRegisterSave(model);
	}

	@Override
	public UserModel validUser(String uno, String upass) {
		return userRepo.validUser(uno,upass);
	}

//	@Override
//	public boolean validUser(UserModel model) {
//		return userRepo.validUser(model);
//	}
	
	@Override
	public List getAllUser() {
		return userRepo.getAllUser();
	}
	

}
