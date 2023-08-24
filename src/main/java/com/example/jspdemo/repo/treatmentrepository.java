package com.example.jspdemo.repo;

import com.example.jspdemo.model.treatment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface treatmentrepository extends JpaRepository<treatment, Long> {
}
