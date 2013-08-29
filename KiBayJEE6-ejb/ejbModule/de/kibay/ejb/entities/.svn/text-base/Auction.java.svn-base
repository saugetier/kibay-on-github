package de.kibay.ejb.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Auction implements Serializable {

	/**
	 * 
	 */
	private Integer id;
	private User user;
	private String titel;
	private String description;
	private Date starttime;
	private Date endtime;
	private Integer startbid;
	private String deliveryInformation;
	private String storageLocation;
	private String image1;
	private String image2;
	private Integer highestBid;
	private Integer bidcount;
	private String leftTime;
	private User highestBidder;
	private Integer duration;
	private Integer userbid;

	public Auction() {
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTitel() {
		return this.titel;
	}

	public void setTitel(String titel) {
		this.titel = titel;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Temporal(TemporalType.DATE)
	public Date getStarttime() {
		return this.starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	@Temporal(TemporalType.DATE)
	public Date getEndtime() {
		return this.endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public Integer getStartbid() {
		return this.startbid;
	}

	public void setStartbid(Integer startbid) {
		this.startbid = startbid;
	}

	public String getDeliveryInformation() {
		return this.deliveryInformation;
	}

	public void setDeliveryInformation(String deliveryInformation) {
		this.deliveryInformation = deliveryInformation;
	}

	public String getStorageLocation() {
		return this.storageLocation;
	}

	public void setStorageLocation(String storageLocation) {
		this.storageLocation = storageLocation;
	}

	public String getImage1() {
		return this.image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return this.image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public Integer getBidcount() {
		return bidcount;
	}

	public void setBidcount(Integer bidcount) {
		this.bidcount = bidcount;
	}

	public Integer getHighestBid() {
		return highestBid;
	}

	public void setHighestBid(Integer highestBid) {
		this.highestBid = highestBid;
	}

	public String getLeftTime() {
		String ret = "";
		if (this.getEndtime() != null) {
			long days = 0;
			long hours = 0;
			long minutes = 0;
			long seconds = 0;
			Date today = new Date();
			long diff = this.getEndtime().getTime() - today.getTime();

			if (getEndtime().getTime() < today.getTime())
				return "beendet";

			days = TimeUnit.MILLISECONDS.toDays(diff);
			diff -= TimeUnit.DAYS.toMillis(days);
			hours = TimeUnit.MILLISECONDS.toHours(diff);
			diff -= TimeUnit.HOURS.toMillis(hours);
			minutes = TimeUnit.MILLISECONDS.toMinutes(diff);
			diff -= TimeUnit.MINUTES.toMillis(minutes);
			seconds = TimeUnit.MILLISECONDS.toSeconds(diff);

			StringBuilder sb = new StringBuilder(64);
			if (days != 0) {
				sb.append(days);
				sb.append(" T ");
			}
			if (hours != 0) {
				sb.append(hours);
				sb.append(" Std ");
			}
			sb.append(minutes);
			sb.append(" Min ");
			sb.append(seconds);
			sb.append(" Sek");

			ret = sb.toString();
		}
		return ret;
	}

	public long getLeftTimeInMillis() {
		if (this.getEndtime() != null) {
			Date today = new Date();
			long diff = this.getEndtime().getTime() - today.getTime();
			return diff;
		}
		return 0;
	}

	public void setLeftTime(String leftTime) {
		this.leftTime = leftTime;
	}

	public User getHighestBidder() {
		return highestBidder;
	}

	public void setHighestBidder(User highestBidder) {
		this.highestBidder = highestBidder;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public Integer getUserbid() {
		return userbid;
	}

	public void setUserbid(Integer userbid) {
		this.userbid = userbid;
	}

}
