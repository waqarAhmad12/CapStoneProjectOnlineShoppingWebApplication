package com.example.service;

import java.util.List;



import com.example.bean.Review;


public interface ReviewService {
List<Review> getReviews(int itemId);
void addReview(Review review);
}
