package csjobs.web.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.mapping.Array;
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
import csjobs.model.dao.jpa.ApplicationDaoImpl;
import csjobs.model.dao.ApplicationDao;
import csjobs.web.validator.JobValidator;

@Controller
public class JobController {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private ApplicationDao appDao;

	@Autowired
	private JobValidator jobValidator;

	@Autowired
	private JobDao jobDao;

	String[] addElement(String[] a, String e) {
		a = Arrays.copyOf(a, a.length + 1);
		a[a.length - 1] = e;
		return a;
	}

	@RequestMapping({ "/index.html", "/job/list.html" })
	public String list(ModelMap models) {
		models.put("openJobs", jobDao.getOpenJobs());
		return "job/list";
	}

	@RequestMapping("/job/view.html")
	public String view(@RequestParam Long id, ModelMap models) {
		models.put("job", jobDao.getJob(id));
		System.out.println(jobDao.getJob(id));
		return "job/view";
	}
	
	@RequestMapping("/job/viewall.html")
	public String viewall(@RequestParam Long id, ModelMap models) {
		
		Job job=jobDao.getJob(id);
		List<User> list=job.getCommitteeMembers();
		User cc=job.getCommitteeChair();
		models.put("job",job );
		models.put("clist",list);
		models.put("cc",cc);
		System.out.println(jobDao.getJob(id));
		return "job/viewall";
	}
	
	@RequestMapping(value="/job/usersl.html")
    public String userlist(@RequestParam Long id, ModelMap models ,HttpSession session)
    {
    List<Application> list=	appDao.getUsersList(id);
    	models.put("list", list);
        return "job/usersl";
    }
	
	@RequestMapping(value="/job/userapplview.html")
    public String applview(@RequestParam Long id, @RequestParam Long jid, ModelMap models ,HttpSession session)
    {
		 models.put( "application", appDao.getApplication(id, jid) );
	        return "job/userapplview";
    }
	
	

	@RequestMapping(value = "/create_job.html", method = RequestMethod.GET)
	public String createjob(ModelMap models, HttpSession session) {

		User authenticatedUser = (User) session
				.getAttribute("authenticatedUser");
		List<User> u = userDao.getUser();
		List<User> temp = new ArrayList<User>();
		for (int i = 0; i < u.size(); i++) {
			if (u.get(i).isReviewer()) {
				temp.add(u.get(i));
			}
		}
		models.put("job", new Job());
		models.put("authenticated", temp);
		models.put("authenticatedUser", authenticatedUser);
		return "create_job";
	}

	@RequestMapping(value = "/create_job.html", method = RequestMethod.POST)
	public String createjob(@ModelAttribute Job job, BindingResult bindResult,
			SessionStatus sessionStatus, HttpServletResponse response,
			HttpServletRequest request,
			@RequestParam(required = false) String committeeChair,
			@RequestParam(required = false) String[] committeeMembers) {

		for (int c = 0; c < committeeMembers.length; c++) {
			if (Long.parseLong(committeeMembers[c]) != Long
					.parseLong(committeeChair)) {
				committeeMembers = addElement(committeeMembers, committeeChair);
				break;
			}
		}

		List<String> l = Arrays.asList(committeeMembers);
		Set<String> set = new HashSet<String>(l);
		String[] cmtm = new String[set.size()];
		set.toArray(cmtm);

		List<User> cmtm2 = new ArrayList<User>();

		for (int i = 0; i < cmtm.length; i++) {

			User u = userDao.getUser(Long.parseLong(cmtm[i]));

			cmtm2.add(u);

		}
		job.setCommitteeMembers(cmtm2);

		User u = new User();

		u.setId(Long.parseLong(committeeChair));

		job.setCommitteeChair(u);
		job = jobDao.saveJob(job);
		sessionStatus.setComplete();

		return "redirect:/admin.html";
	}

	@RequestMapping(value = "/edit.html", method = RequestMethod.GET)
	public String editjob(ModelMap models, @RequestParam Long jobId,
			@ModelAttribute Job job) {
		List<User> u = userDao.getUser();
		List<User> temp = new ArrayList<User>();
		for (int i = 0; i < u.size(); i++) {
			if (u.get(i).isReviewer()) {
				temp.add(u.get(i));

			}

		}
		Job job1 = jobDao.getJob(jobId);
		models.put("job", job1);
		List<User> t1 = job1.getCommitteeMembers();

		System.out.println(temp);
		System.out.println(job1.getId());

		System.out.println(t1);

		models.put("authenticated", temp);
		models.put("templist", t1);

		return "edit";
	}

	@RequestMapping(value = "/edit.html", method = RequestMethod.POST)
	public String editjob(@RequestParam Long jobId,
			SessionStatus sessionStatus, HttpServletResponse response,
			HttpServletRequest request,
			@RequestParam(required = false) String committeeChair,
			@RequestParam(required = false) String[] committeeMembers) {

		Job job1=jobDao.getJob(jobId);
		for (int c = 0; c < committeeMembers.length; c++) {
			if (Long.parseLong(committeeMembers[c]) != Long
					.parseLong(committeeChair)) {
				committeeMembers = addElement(committeeMembers, committeeChair);
				break;
			}
		}

		List<String> l = Arrays.asList(committeeMembers);
		Set<String> set = new HashSet<String>(l);
		String[] cmtm = new String[set.size()];
		set.toArray(cmtm);
		List<User> cmtm2 = new ArrayList<User>();

		for (int i = 0; i < cmtm.length; i++) {
			User u = userDao.getUser(Long.parseLong(cmtm[i]));

			cmtm2.add(u);
		}
		job1.setCommitteeMembers(cmtm2);
		User u = new User();

		u.setId(Long.parseLong(committeeChair));

		job1.setCommitteeChair(u);
		job1 = jobDao.saveJob(job1);
		sessionStatus.setComplete();

		return "redirect:/admin.html";
	}

}
