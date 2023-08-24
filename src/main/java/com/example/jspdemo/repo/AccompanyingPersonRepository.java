package com.example.jspdemo.repo;

import com.example.jspdemo.model.AccompanyingPerson;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccompanyingPersonRepository extends JpaRepository<AccompanyingPerson, Long> {
}
