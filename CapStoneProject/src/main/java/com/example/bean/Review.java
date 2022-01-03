package com.example.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Review {
@Id	
@GeneratedValue(strategy = GenerationType.AUTO)
private int reviewId;
private int itemId;
private String review;
private int rating;
private String name;

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getReviewId() {
	return reviewId;
}
public void setReviewId(int reviewId) {
	this.reviewId = reviewId;
}
public int getItemId() {
	return itemId;
}
public void setItemId(int itemId) {
	this.itemId = itemId;
}
public String getReview() {
	return review;
}
public void setReview(String review) {
	this.review = review;
}
public int getRating() {
	return rating;
}
public void setRating(int rating) {
	this.rating = rating;
}
public Review(int reviewId, int itemId, String review, int rating) {
	super();
	this.reviewId = reviewId;
	this.itemId = itemId;
	this.review = review;
	this.rating = rating;
}
public Review() {
	super();
	// TODO Auto-generated constructor stub
}


}
