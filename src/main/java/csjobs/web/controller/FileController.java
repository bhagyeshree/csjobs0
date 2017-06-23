package csjobs.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import csjobs.model.Application;
import csjobs.model.Fileu;
import csjobs.model.User;
import csjobs.model.dao.ApplicationDao;

@Controller
public class FileController {

	@Autowired
	private ServletContext context;

	@Autowired
	private ApplicationDao applicationDao;

	private File getfileDirectory() {
		String path = context.getRealPath("/WEB-INF/files");
		return new File(path);
	}

	@RequestMapping(value = "/upload.html", method = RequestMethod.GET)
	public String upload(ModelMap models, @RequestParam Long applicationId) {
		models.put("application", applicationDao.getApplication(applicationId));

		return "upload";
	}

	@RequestMapping(value = "/upload.html", method = RequestMethod.POST)
	public String upload(@RequestParam("file") MultipartFile filemain,
			@RequestParam Long applicationId, ModelMap models, Fileu file,
			@ModelAttribute Application application, HttpSession session,
			HttpServletResponse response) throws IllegalStateException,
			IOException {
		
			application = applicationDao.getApplication(applicationId);
			String append = applicationId.toString();
			String append2 = application.getApplicant().getId().toString();
			file.setName(append.concat(append2).concat("cv")
					.concat(filemain.getOriginalFilename()));
			filemain.transferTo(new File(getfileDirectory(), file.getName()));

			file.setType(filemain.getContentType());
			User applicant = (User) session.getAttribute("authUser");
			file.setOwner(applicant);
			file.setSize(filemain.getSize());
			DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");

			Date d = new Date();
			String v = dateFormat.format(d);
			Date date = null;
			try {
				date = dateFormat.parse(v);
			} catch (ParseException e) {

				e.printStackTrace();
			}
			file.setDate(date);
			file = applicationDao.uploadCv(file);

			application.setCv(file);
			application = applicationDao.saveApplication(application);
			return "redirect:/uploadstat.html?applicationId=" + applicationId;
		
	}

	@RequestMapping(value = "/uploadstat.html", method = RequestMethod.GET)
	public String uploadstat(ModelMap models,
			@RequestParam("applicationId") Long applicationId) {
		models.put("application", applicationDao.getApplication(applicationId));

		return "uploadstat";
	}

	@RequestMapping(value = "/uploadstat.html", method = RequestMethod.POST)
	public String uploadstat(@RequestParam("filestat") MultipartFile filemain,
			@RequestParam Long applicationId, ModelMap models, Fileu file,
			@ModelAttribute Application application, HttpSession session,
			HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException {
		
		application = applicationDao.getApplication(applicationId);
		String append = applicationId.toString();
		String append2 = application.getApplicant().getId().toString();
		file.setName(append.concat(append2).concat("tstat")
				.concat(filemain.getOriginalFilename()));
		filemain.transferTo(new File(getfileDirectory(), file.getName()));

		file.setType(filemain.getContentType());
		User applicant = (User) session.getAttribute("authUser");
		file.setOwner(applicant);
		file.setSize(filemain.getSize());
		DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");

		Date d = new Date();
		String v = dateFormat.format(d);
		Date date = null;
		try {
			date = dateFormat.parse(v);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		file.setDate(date);
		file = applicationDao.uploadCv(file);

		application.setTeachingStatement(file);
		application = applicationDao.saveApplication(application);
		return "redirect:/uploadresearch.html?applicationId=" + applicationId;
		 
	}

	@RequestMapping(value = "/uploadresearch.html", method = RequestMethod.GET)
	public String uploadresearch(ModelMap models,
			@RequestParam("applicationId") Long applicationId) {
		models.put("application", applicationDao.getApplication(applicationId));

		return "uploadresearch";
	}

	@RequestMapping(value = "/uploadresearch.html", method = RequestMethod.POST)
	public String uploadresearch(
			@RequestParam("filereserch") MultipartFile filemain,
			@RequestParam Long applicationId, ModelMap models, Fileu file,
			@ModelAttribute Application application, HttpSession session,
			HttpServletResponse response) throws IllegalStateException,
			IOException {
		
		application = applicationDao.getApplication(applicationId);
		String append = applicationId.toString();
		String append2 = application.getApplicant().getId().toString();
		file.setName(append.concat(append2).concat("research")
				.concat(filemain.getOriginalFilename()));
		filemain.transferTo(new File(getfileDirectory(), file.getName()));

		file.setType(filemain.getContentType());
		User applicant = (User) session.getAttribute("authUser");
		file.setOwner(applicant);
		file.setSize(filemain.getSize());
		DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");

		Date d = new Date();
		String v = dateFormat.format(d);
		Date date = null;
		try {
			date = dateFormat.parse(v);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		file.setDate(date);
		file = applicationDao.uploadCv(file);

		application.setResearchStatement(file);
		application = applicationDao.saveApplication(application);
		return "redirect:/applicant.html";
		
			
	}

	private static final int BUFFER_SIZE = 4096;

	@RequestMapping("/download.html")
	public String download(HttpServletRequest request,
			HttpServletResponse response, @RequestParam String path)
			throws IOException {

		path = "/files/" + path;
		ServletContext context = request.getServletContext();
		String appPath = context.getRealPath("/WEB-INF");

		String fullPath = appPath + path;
		File downloadFile = new File(fullPath);
		FileInputStream inputStream = new FileInputStream(downloadFile);

		String mimeType = context.getMimeType(fullPath);
		if (mimeType == null) {

			mimeType = "application/octet-stream";
		}
		System.out.println("MIME type: " + mimeType);

		response.setContentType(mimeType);
		response.setContentLength((int) downloadFile.length());

		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"",
				downloadFile.getName());
		response.setHeader(headerKey, headerValue);

		OutputStream outStream = response.getOutputStream();

		byte[] buffer = new byte[BUFFER_SIZE];
		int bytesRead = -1;

		while ((bytesRead = inputStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, bytesRead);
		}

		inputStream.close();
		outStream.close();

		return null;

	}

}
