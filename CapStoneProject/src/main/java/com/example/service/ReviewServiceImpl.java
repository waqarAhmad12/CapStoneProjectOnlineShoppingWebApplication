package com.example.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bean.Review;
import com.example.dao.ReviewDao;
@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	ReviewDao reviewDao;
	@Override
	public List<Review> getReviews(int itemId) {
		List<Review> all = reviewDao.findAll();
		List<Review> result=new ArrayList<>();
		for(Review r:all)
		{
			if(r.getItemId() == itemId)
			{
				result.add(r);
			}
		}
		return result;
	}
	@Override
	public void addReview(Review review) {
		reviewDao.save(review);
		
	}

}
