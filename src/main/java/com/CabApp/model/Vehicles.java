package com.CabApp.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Vehicle_s")
public class Vehicles {
	 @Id
	    @Column(name = "Vid")
	    private int vid;

	    @Column(name = "VechName")
	    private String vechName;

	    @Column(name = "VechNo")
	    private String vechNo;

	    @Column(name = "OwnerName")
	    private String ownerName;

	    @Column(name = "Seats")
	    private int seats;

	    @Column(name = "Phone")
	    private String phone;

		public int getVid() {
			return vid;
		}

		public void setVid(int vid) {
			this.vid = vid;
		}

		public String getVechName() {
			return vechName;
		}

		public void setVechName(String vechName) {
			this.vechName = vechName;
		}

		public String getVechNo() {
			return vechNo;
		}

		public void setVechNo(String vechNo) {
			this.vechNo = vechNo;
		}

		public String getOwnerName() {
			return ownerName;
		}

		public void setOwnerName(String ownerName) {
			this.ownerName = ownerName;
		}

		public int getSeats() {
			return seats;
		}

		public void setSeats(int seats) {
			this.seats = seats;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}
	    
}
