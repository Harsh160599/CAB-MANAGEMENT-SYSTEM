package com.CabApp.model;
import org.springframework.format.annotation.DateTimeFormat;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

import java.util.Date;
@Entity
@Table(name = "Book_Cab")
public class BookCab {
	@Id
    @Column(name = "BookID")
    private int bookId;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "Date")
    private Date date;

    @Column(name = "FromLocation")
    private String fromLocation;

    @Column(name = "ToLocation")
    private String toLocation;

    @Column(name = "VechNo")
    private String vechNo;

    @Column(name = "CustomerName")
    private String customerName;

    @Column(name = "Phone")
    private String phone;
    
    @Column(name = "Fare")
    private  Integer fare; 


	public Integer getFare() {
		return fare;
	}

	public void setFare(Integer fare) {
		this.fare = fare;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getFromLocation() {
		return fromLocation;
	}

	public void setFromLocation(String fromLocation) {
		this.fromLocation = fromLocation;
	}

	public String getToLocation() {
		return toLocation;
	}

	public void setToLocation(String toLocation) {
		this.toLocation = toLocation;
	}

	public String getVechNo() {
		return vechNo;
	}

	public void setVechNo(String vechNo) {
		this.vechNo = vechNo;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
