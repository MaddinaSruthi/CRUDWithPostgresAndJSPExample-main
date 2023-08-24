package com.example.jspdemo.repo;
import com.example.jspdemo.model.Admin;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Long> {
	 List<Admin> findByEmailContainingIgnoreCase(String email);
}