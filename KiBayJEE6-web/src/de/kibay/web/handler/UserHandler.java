package de.kibay.web.handler;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.faces.bean.ManagedBean;
import javax.ejb.EJB;
import javax.faces.bean.SessionScoped;

import de.jsfpraxis.ComedianJsfMb;
import de.kibay.ejb.entities.User;
import de.kibay.ejb.manager.UserManagerLocal;

/**
 * @author mkirsch
 *
 */
@SuppressWarnings("serial")
@ManagedBean(name = "userhandler") 
@SessionScoped
public class UserHandler implements Serializable{
	
	private static Logger logger = Logger.getLogger(ComedianJsfMb.class.getCanonicalName());
	
	private User currentUser;
	@EJB UserManagerLocal usermanager;
	
	public UserHandler(){
		logger.log(Level.INFO, UserHandler.class.getName() + "-Instance created");
		currentUser = new User();
	}
	
	public String createUser(){
		logger.log(Level.INFO, "Commissioning Usermanager to save new User");
		usermanager.createUser(currentUser);
		
		return null;
	}

	/**
	 * @return the currentUser
	 */
	public User getCurrentUser() {
		return currentUser;
	}

	/**
	 * @param currentUser the currentUser to set
	 */
	public void setCurrentUser(User currentUser) {
		this.currentUser = currentUser;
	}

}
