/*
 *  (c) Bernd Müller, www.jsfpraxis.de
 */

package de.jsfpraxis;

import java.io.Serializable;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.annotation.PostConstruct;
import javax.ejb.Remove;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;


@SuppressWarnings("serial")
@Stateful
public class ComedianEjbImpl implements ComedianEjb, Serializable {
	
	private static Logger logger = Logger.getLogger(ComedianEjbImpl.class.getCanonicalName());
	
	private List<Comedian> comedians;
	
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager em;
	

	public ComedianEjbImpl() {
		logger.log(Level.INFO, ComedianEjbImpl.class.getName() + "-Instanz erzeugt");
	}

	
	public void speichern(Comedian comedian) {
//		if (comedian.getId() == null) {
//			logger.log(Level.INFO, "speichern() null");
//			em.persist(comedian);			
//		} else {
//			logger.log(Level.INFO, "speichern() not null");
//          // hier mergen, falls nicht erweiterter PC		
//		}
		em.persist(comedian);			
		rereadComedians();
	}
	
	
	public void loeschen(Comedian comedian) {
		//em.remove(em.merge(comedian));
		em.remove(comedian);
		rereadComedians();
	}


	@SuppressWarnings("unchecked")
	public void rereadComedians() {
		comedians = em.createNamedQuery("SelectComedians").getResultList();
	}

	@PostConstruct
	public void initDB() {
		logger.log(Level.INFO, "'initDB()' aufgerufen");
		em.persist(new Comedian("Mario", "Barth", new GregorianCalendar(1972, 10, 1).getTime()));
		em.persist(new Comedian("Atze", "Schröder", new GregorianCalendar(1965, 8, 27).getTime()));
		em.persist(new Comedian("Dieter", "Nuhr", new GregorianCalendar(1960, 9, 29).getTime()));
		em.persist(new Comedian("Anke", "Engelke", new GregorianCalendar(1965, 11, 21).getTime()));
		em.persist(new Comedian("Kaya", "Yanar", new GregorianCalendar(1973, 4, 20).getTime()));
		rereadComedians();
	}
	
	
	public List<Comedian> getComedians() {
		return comedians; 
	}
	
	@Remove
	public void destroy() {}
}
