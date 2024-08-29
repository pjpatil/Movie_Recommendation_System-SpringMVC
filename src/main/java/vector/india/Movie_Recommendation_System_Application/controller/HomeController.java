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
	
	@RequestMapping("/reg")
	public String adminRegistration() {
		return "registration";
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
	
//	Add movie page
	@RequestMapping("addmovies")	
	public String addNewMovies(Map map) {
		list = genresService.getAllGenres();
		map.put("getallgen", list);
		return "addmoviespage";
	}
	
//	Save or add Movies in addmoviepage.jsp page
	@RequestMapping("/savemovie")
	public String saveNewMovies(MovieModel movie,@RequestParam("genid")Integer genid, Map map,@RequestParam("movposter") CommonsMultipartFile file, HttpServletRequest request,
			HttpSession session) {
		boolean b = movieService.isAddMovies(movie);
	
		System.out.println("Genres id :"+genid);
		
		
		
		
//		System.out.println("File Name: " + file.getName());
		System.out.println("Original Filename: " + file.getOriginalFilename());
//		System.out.println("Content type :" + file.getContentType());
//		System.out.println("File size :" + file.getSize());

		byte[] bytes = file.getBytes();
		System.out.println("Byte code img :"+bytes);
		String path = session.getServletContext().getRealPath("/") + File.separator + "resources" + File.separator
				+ "img" + File.separator + file.getOriginalFilename();

		System.out.println("Path is: " + path);

		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(bytes);
			fos.close();
			System.out.println("File upload suuuuu.....");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		map.put("msg", "save succeessfully...");
		return "addmoviespage";
	}
	
//	 Show all Movies in showmovies.jsp page
	@RequestMapping("/showmov")
	public String showAllMovies(Map map) {
		list = genresService.getAllGenres();
		map.put("getallmovies", list);
		return "showmovies";
	}
	
	
	// showmovies.jsp
	
	
}