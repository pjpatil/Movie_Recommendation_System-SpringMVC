package vector.india.Movie_Recommendation_System_Application.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vector.india.Movie_Recommendation_System_Application.model.AdminModel;
import vector.india.Movie_Recommendation_System_Application.model.GenresModel;
import vector.india.Movie_Recommendation_System_Application.service.GenresService;

@Controller
public class HomeController {

	@Autowired
	GenresService genresService;

	List list;
	
	//	Call admin login.jsp page
	@RequestMapping("/")
	public String test(HttpServletResponse response) throws IOException {
		return "login";
	}

	//	Check Admin login 
	@RequestMapping("/validadmin")
	public String adminLogin(AdminModel admin, Map map) {
		if (admin.getAmobileno().equals("admin") && admin.getApassword().equals("admin")) {
			return "home";
		} else {
			map.put("msg", "invalid username and password");
			return "login";
		}
	}

	//	 call genres add page
	@RequestMapping("/addgenres")
	public String addNewGenres() {
		return "addGenres";
	}

	//	Save or add genres in addGenres.jsp page
	@RequestMapping("/savegen")
	public String saveNewGenres(GenresModel genres, Map map) {
		boolean b = genresService.isAddGenres(genres);
		map.put("msg", "save succeessfully...");
		return "addGenres";
	}

	//	 Show all genres in showgen.jsp page
	@RequestMapping("/showgenres")
	public String showAllGenres(Map map) {
		list = genresService.getAllGenres();
		map.put("getallgen", list);
		return "showgen";
	}

	//  delete genres by id
	@RequestMapping("/delgen")
	public String deleteGenres(@RequestParam("genid") Integer id,Map map) {
		genresService.isDeleteGenresById(id);
		list = genresService.getAllGenres();
		map.put("getallgen", list);
		return "showgen";
	}
	@RequestMapping("addmovies")
	public String addNewMovies(Map map) {
		list = genresService.getAllGenres();
		map.put("getallgen", list);
		return "addmoviespage";
	}
	
	
}