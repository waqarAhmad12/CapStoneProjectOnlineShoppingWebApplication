package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.bean.Review;

@Repository
public interface ReviewDao extends JpaRepository<Review, Integer>{

}
