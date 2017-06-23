package csjobs.web.controller;

import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.authentication.AuthenticationTrustResolverImpl;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

public class SecurityController {
private static AuthenticationTrustResolver au=new AuthenticationTrustResolverImpl();
	
	
	
	public static boolean isAnonymous() {
		// TODO Auto-generated method stub
		return au.isAnonymous(SecurityContextHolder.getContext().getAuthentication());
	}

	public static boolean isAuthenticated() {
		return !isAnonymous();
	}
	public static UserDetails getUser() {
		return (UserDetails) ((boolean) isAuthenticated() ?SecurityContextHolder.getContext().getAuthentication().getPrincipal() : 0);
	}
}
