package com.CabApp.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.CabApp.model.BookCab;

public interface BookCabRepository extends JpaRepository<BookCab,Integer> {
    // Add custom query methods if needed
}