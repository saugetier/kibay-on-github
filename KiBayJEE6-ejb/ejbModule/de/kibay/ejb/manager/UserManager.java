package de.kibay.ejb.manager;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import de.jsfpraxis.ComedianEjbImpl;
import de.kibay.ejb.entities.User;

/**
 * Session Bean implementation class UserManager
 */
@SuppressWarnings("serial")
@Stateful
public class UserManager implements UserManagerLocal, Serializable {

	private static Logger logger = Logger.getLogger(ComedianEjbImpl.class
			.getCanonicalName());

	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager em;

	/**
	 * Default constructor.
	 */
	public UserManager() {
		logger.log(Level.INFO, UserManager.class.getName() + "-Instance created");
	}

	@Override
	public void createUser(User user) {
		em.persist(user);

	}

}
