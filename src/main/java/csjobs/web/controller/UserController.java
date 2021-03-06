package csjobs.web.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import csjobs.model.Application;
import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.dao.JobDao;
import csjobs.model.dao.UserDao;
import csjobs.web.validator.UserValidator;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	@Autowired
	private JobDao jobDao;

	@Autowired
	private UserValidator userValidator;

	private static final Logger logger = LoggerFactory
			.getLogger(UserController.class);

	@RequestMapping(value = "/register.html", method = RequestMethod.GET)
	public String register(ModelMap models) {
		models.put("user", new User());
		return "register";
	}

	@RequestMapping(value = "/register.html", method = RequestMethod.POST)
	public String register(@ModelAttribute User user,
			BindingResult bindingResult, SessionStatus sessionStatus) {
		userValidator.validate(user, bindingResult);
		if (bindingResult.hasErrors())
			return "register";

		user = userDao.saveUser(user);
		sessionStatus.setComplete();

		return "redirect:/";
	}

	@RequestMapping(value = "/login.html", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/login.html", method = RequestMethod.POST)
	public String login(@RequestParam String email,
			@RequestParam String password, HttpSession session) {
		User user = userDao.getUser(email);
		if (user == null || !user.getPassword().equals(password))
			return "redirect:/login.html";

		logger.info(user.getEmail() + " logged in.");

		session.setAttribute("authenticatedUser", user);
		if (user.isAdmin())
			
			return "redirect:/admin.html";
		else if (user.isReviewer()) {
			

			return "redirect:/reviewer.html";
		} else

			return "redirect:/applicant.html";
	}
	
	
	 @RequestMapping(value = "/aulogin.html")
	    public String login( HttpSession session )
	    {
	        User user = userDao.getUser(SecurityController.getUser().getUsername());
	       

	        logger.info( user.getEmail() + " logged in." );

	        session.setAttribute( "authenticatedUser", user );
	        if( user.isAdmin() )
	            return "redirect:/admin.html";
	        else if( user.isReviewer() )
	            return "redirect:/reviewer.html";
	        else
	            return "redirect:/applicant.html";
	    }
	
	
	

	@RequestMapping("/logout.html")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/admin.html")
	public String admin(ModelMap models) {
		models.put("openJobs", jobDao.getOpenJobs());
		return "admin";
	}

	@RequestMapping("/reviewer.html")
	public String reviewer(HttpSession session,ModelMap models) {
		
		User authenticatedUser = (User) session
                .getAttribute( "authenticatedUser" );
    	long id = authenticatedUser.getId();
    	
    	List<Job> reviewerjob =new ArrayList<Job>();
    	for(Job j : jobDao.getOpenJobs())
    	{
    		if(j.getCommitteeMembers().contains(userDao.getUser(id)))
    		{
    			reviewerjob.add(j);
    		}
    	}
    	models.put("reviewerjob", reviewerjob);     
		return "reviewer";
	}

	@RequestMapping("/applicant.html")
	public String applicant(HttpSession session, ModelMap models) {
		User authenticatedUser = (User) session
				.getAttribute("authenticatedUser");

		// The authenticatedUser in the session is a "detached" object, which
		// means it may not be update-to-date, and it cannot be used to load
		// other objects. So here we just use the id to retrieve another copy of
		// the user from the database.
		User user = userDao.getUser(authenticatedUser.getId());

		Set<Job> appliedJobs = new HashSet<Job>();
		for (Application application : user.getApplications())
			appliedJobs.add(application.getJob());

		List<Job> availableJobs = jobDao.getOpenJobs();
		Iterator<Job> iterator = availableJobs.iterator();
		while (iterator.hasNext())
			if (appliedJobs.contains(iterator.next()))
				iterator.remove();

		models.put("user", user);
		models.put("availableJobs", availableJobs);

		return "applicant";
	}

	@RequestMapping("/profile.html")
	public String prof(HttpSession session, ModelMap models) {

		User authenticatedUser = (User) session
				.getAttribute("authenticatedUser");

		session.setAttribute("a", authenticatedUser);
		return "profile";
	}

}
