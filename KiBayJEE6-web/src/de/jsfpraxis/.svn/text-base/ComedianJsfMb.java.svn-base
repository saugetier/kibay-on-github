/*
 *  (c) Bernd Müller, www.jsfpraxis.de
 */

package de.jsfpraxis;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;


@SuppressWarnings("serial")
@ManagedBean(name = "comedianHandler")
@SessionScoped
public class ComedianJsfMb implements Serializable {
	
	private static Logger logger = Logger.getLogger(ComedianJsfMb.class.getCanonicalName());
	
	private DataModel<Comedian> comedians;
	private Comedian aktuellerComedian;

	@EJB
	private ComedianEjb comedianEjb;
	
	
	public ComedianJsfMb() {
		logger.log(Level.INFO, ComedianJsfMb.class.getName() + "-Instanz erzeugt");
		comedians = new ListDataModel<Comedian>();
		aktuellerComedian = new Comedian();
	}

	
	public String speichern() {
		comedianEjb.speichern(aktuellerComedian);
		return "anzeige-comedians?faces-redirect=true";
	}

	
	public String aendern() {
		aktuellerComedian = comedians.getRowData();
		return "comedian?faces-redirect=true";
	}

	
	public String neuanlage() {
		aktuellerComedian = new Comedian();
		return "comedian?faces-redirect=true";
	}

	
	public String loeschen() {
		comedianEjb.loeschen(comedians.getRowData());
		return null;
	}
	
	
	public void initDB() {
		comedianEjb.initDB();
	}
	
	
	public DataModel<Comedian> getComedians() {
		comedians.setWrappedData(comedianEjb.getComedians());
		return comedians;
	}


	public Comedian getAktuellerComedian() {
		return aktuellerComedian;
	}
	public void setAktuellerComedian(Comedian aktuellerComedian) {
		this.aktuellerComedian = aktuellerComedian;
	}
	
	
}
