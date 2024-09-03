package vector.india.Movie_Recommendation_System_Application.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vector.india.Movie_Recommendation_System_Application.model.AdminModel;
import vector.india.Movie_Recommendation_System_Application.model.GenresModel;
import vector.india.Movie_Recommendation_System_Application.model.MovieModel;
import vector.india.Movie_Recommendation_System_Application.service.GenresService;
import vector.india.Movie_Recommendation_System_Application.service.MovieService;

@Controller
public class HomeController {

	@Autowired
	GenresService genresService;
	@Autowired
	MovieService movieService;

	List list;

	// Call admin login.jsp page
	@RequestMapping("/")
	public String test(HttpServletResponse response) throws IOException {
		return "index";
	}

	//	call admin login page...
	@RequestMapping("/adminlogin")
	public String adminLogin() {
		return "adminlogin";
	}

	// call user login page...
	@RequestMapping("userlogin")
	public String userlogin() {
		return "userlogin";
	}
	
//	call Admin Registration page..
	@RequestMapping("/adminregister")
	public String adminRegistration() {
		return "adminRegistration";
	}
	
	

	// Check Admin login
	@RequestMapping("/validadmin")
	public String adminLogin(AdminModel admin, Map map) {
		if (admin.getAmobileno().equals("admin") && admin.getApassword().equals("admin")) {
			return "adminNavbar";
		} else {
			map.put("msg", "Invalid username and password");
			return "login";
		}
	}

	

	// call genres add page
	@RequestMapping("/addgenres")
	public String addNewGenres() {
		return "addGenres";
	}

	// Save or add genres in addGenres.jsp page
	@RequestMapping("/savegen")
	public String saveNewGenres(GenresModel genres, Map map) {
		boolean b = genresService.isAddGenres(genres);
		map.put("msg", "save succeessfully...");
		return "addGenres";
	}

	// Show all genres in showgen.jsp page
	@RequestMapping("/showgenres")
	public String showAllGenres(Map map) {
		list = genresService.getAllGenres();
		map.put("getallgen", list);
		return "showgen";
	}

	// delete genres by id
	@RequestMapping("/delgen")
	public String deleteGenres(@RequestParam("genid") Integer id, Map map) {
		genresService.isDeleteGenresById(id);
		List list = genresService.getAllGenres();
		map.put("getallgen", list);
		return "showgen";
	}

//	Add movie page
	@RequestMapping("addmovies")
	public String addNewMovies(Map map) {
		list = genresService.getAllGenres();
		map.put("getallgen", list);
		return "addmoviespage";
	}

//	Save or add Movies in addmoviepage.jsp page
	@RequestMapping("/savemovie")
	public String saveNewMovies(MovieModel movie, @RequestParam("genid") int genid, Map<String, Object> map,
			@RequestParam("movposter") CommonsMultipartFile file, HttpServletRequest request, HttpSession session) {

		int mid = movieService.addMovieAndGetId(movie); // add movie and return movie id
		System.out.println("get movie id is here " + mid);
		if (mid > 0) {
			boolean bl = movieService.isJoinMovieGenres(mid, genid);
			if (bl) {
				// file save
				byte[] bytes = file.getBytes();
				String path = session.getServletContext().getRealPath("/") + File.separator + "resources"
						+ File.separator + "img" + File.separator + file.getOriginalFilename();
				System.out.println("Path is: " + path);

				try {
					FileOutputStream fos = new FileOutputStream(path);
					fos.write(bytes);
					fos.close();
					System.out.println("File upload suuuuu.....");

				} catch (Exception ex) {
					ex.printStackTrace();
				}
				map.put("msg", "Save successful.");

			} else {
				map.put("msg", "Failed to save movie genres join.");
			}
		} else {
			map.put("msg", "Failed to save movie.");
		}

		return "addmoviespage";
	}

//	 Show all Movies in showmovies.jsp page
	@RequestMapping("/showmov")
	public String showAllMovies(Map map, HttpServletRequest request, HttpSession session) {
		list = movieService.getAllMovies();
		map.put("getallmovies", list);
		return "showmovies";
	}

}