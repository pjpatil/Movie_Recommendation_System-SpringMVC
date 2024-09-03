package vector.india.Movie_Recommendation_System_Application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vector.india.Movie_Recommendation_System_Application.model.UserModel;
import vector.india.Movie_Recommendation_System_Application.repository.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	UserRepository userRepo;

	@Override
	public boolean validUser(UserModel model) {
		
		return userRepo.validUser(model);
	}

}
