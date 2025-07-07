package com.example.demo.repository;

import com.example.demo.model.UserSignup;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserSignupRepository extends JpaRepository<UserSignup, Integer> {

    // Find user by email and password
	// ✅ This safely returns a list of matching results
	List<UserSignup> findByEmailAndPassword(String email, String password);

}
