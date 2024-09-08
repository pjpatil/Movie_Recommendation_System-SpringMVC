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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vector.india.Movie_Recommendation_System_Application.model.AdminModel;
import vector.india.Movie_Recommendation_System_Application.model.GenresModel;
import vector.india.Movie_Recommendation_System_Application.model.MovieModel;
import vector.india.Movie_Recommendation_System_Application.model.UserModel;
import vector.india.Movie_Recommendation_System_Application.service.GenresService;
import vector.india.Movie_Recommendation_System_Application.service.MovieService;
import vector.india.Movie_Recommendation_System_Application.service.UserService;

@Controller
public class HomeController {

	@Autowired
	GenresService genresService;
	@Autowired
	MovieService movieService;
	@Autowired
	UserService userService;

	List list;

	// Call Home index page
	@RequestMapping("/")
	public String test(HttpServletResponse response, Map map) throws IOException {

		list = movieService.getAllMovies();
		map.put("getallmovies", list);
		return "index";
	}

	// call admin login page...
	@RequestMapping("/adminlogin")
	public String adminLogin() {
		return "adminlogin";
	}

	// call Admin Registration page..
	@RequestMapping("/adminregister")
	public String adminRegistration() {
		return "adminRegistration";
	}

//	--------------------------------------  Admin Controller   --------------------------------------------------

	// Check Admin login
	@RequestMapping("/validadmin")
	public String cheackAdminLogin(AdminModel admin, Map map) {
		if (admin.getAmobileno().equals("admin") && admin.getApassword().equals("pankaj4433")) {
			return "adminNavbar";
		} else {
			map.put("msg", "Invalid username and password");
			return "adminlogin";
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

	// Search Genres By name
	@RequestMapping("/searchByNameGenres")
	@ResponseBody
	public String searchByNameGenres(@RequestParam("n") String name) {
		List<GenresModel> list = genresService.searchByNameGenres(name);
		String str = "";
		str = str
				+ "<table class='table table-striped'><thead><tr><th scope='col'>Sr.No</th><th scope='col'>Genres Title</th><th scope=col'>DELETE</th><th scope='col'>UPDATE</th></tr></thead>";

		for (GenresModel m : list) {
			str = str + "<tr>";
			str = str + "<th scope='row'>" + m.getGenid() + "</th>";
			str = str + "<td>" + m.getGentitle() + "</td>";
			str = str + "<td><a href='delgen?genid=" + m.getGenid() + "'>delete</td>";
			str = str + "<td><a href='#'>update</a></td>";
			str = str + "</tr>";
		}
		str = str + "</table>";
		return str;
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

//	@RequestMapping("/searchByName")
//    @ResponseBody
//    public String searchByNameURL(@RequestParam("n") String name)
//    {
//  	  List<MovieModel> list=movieService.getAllMoviesByName(name);
//  	 
//  	  String str="";
//  	  str=str+"<table class='table'><tr><th>MOVID</th><th>MOVTITLE</th><th>MOVYEAR</th><th>MOVTIME</th><th>MOVLANG</th><th>MOVDTREL</th><th>MOVRELCOUNTRY</th><th>MOVLINK</th><th>MOVDESCRIPTION</th><th>DELETE</th><th>UPDATE</th></tr>";
//        for(MovieModel m:list)
//        {
//      	  str=str+"<tr>";
//      	  str=str+"<td>"+m.getMovid()+"</td>";
//      	  str=str+"<td>"+m.getMovtitle()+"</td>";
//      	  str=str+"<td>"+m.getMovyear()+"</td>";
//      	  str=str+"<td>"+m.getMovtime()+"</td>";
//      	str=str+"<td>"+m.getMovlang()+"</td>";
//      	str=str+"<td>"+m.getMovdtrel()+"</td>";
//      	str=str+"<td>"+m.getMovrelcountry()+"</td>";
//      	str=str+"<td>"+m.getMovlink()+"</td>";
//      	str=str+"<td>"+m.getMovdescription()+"</td>";
//      	
//      	  str=str+"</tr>";
//        }
//  	  
//  	  str=str+"</table>";
//  	 
//		return str;
//  	  
//    }

//	--------------------------------------  User Controller   --------------------------------------------------

	// call user login page...
	@RequestMapping("userlogin")
	public String userlogin() {
		return "userlogin";
	}

	// call User Registration page..
	@RequestMapping("/userregister")
	public String userRegistration() {
		return "userRegistration";
	}
	
	@RequestMapping("/logout")
	public String userLogout(Map map) {
		list = movieService.getAllMovies();
		map.put("getallmovies", list);
		return "index";
	}
	
	@RequestMapping("/userregistersave")
	public String userRegisterSave(UserModel model) {
		boolean b=userService.userRegisterSave(model);
		
//		if(b) {
//			System.out.println("Add user succcc");
//		}
//		else {
//			System.out.println("not addd user");
//		}
//		
		return "userlogin";
	}

	// it is user login check and calluser home page
	@RequestMapping("/validuser")
	public String cheackUserLogin(HttpServletRequest request,@RequestParam("umobileno")String uno,@RequestParam("upassword")String upass ,Map map) {
		
		UserModel user=userService.validUser(uno,upass);
		if ( user!=null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("loginUser", user);

			list = movieService.getAllMovies();
			map.put("getallmovies", list);
			return "userHome";
		} else {
			map.put("msg", "Invalid User Mobile No. and password");
			return "userlogin";
		}
		
	}

	// it call user home page
	@RequestMapping("/home")
	public String homepage(Map map) {
		list = movieService.getAllMovies();
		map.put("getallmovies", list);
		return "userHome";
	}

//	it is call movie page user side
	@RequestMapping("/moviesearchpage")
	public String searchPage() {
		return "search";
	}

	// Search movie by name , genre, and date in user page
	@RequestMapping(value = "/searchMovie", method = RequestMethod.POST)
	public String searchMovie(@RequestParam(value = "movieTitle", required = false) String movieTitle,
			@RequestParam(value = "movieGenre", required = false) String movieGenre,
			@RequestParam(value = "yearFrom", required = false) String yearFrom,
			@RequestParam(value = "yearTo", required = false) String yearTo, Model model) {

		// Fetch movie list based on search criteria
		List<MovieModel> movieList = movieService.searchMovies(movieTitle, movieGenre, yearFrom, yearTo);
		model.addAttribute("movieList", movieList);

		return "search";
	}
	
	
	@RequestMapping("/viewmovie")
	public String watchMovie() {
		return "watchmovies";
	}
	
	

}