package com.comp.edufymediaplayerservice.repositories;

import com.comp.edufymediaplayerservice.entities.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface GenreRepository extends JpaRepository<Genre, Long> {


    Optional<Genre> findByName(String name);

    List<Genre> findByNameContainingIgnoreCase(String name);


    List<Genre> findByIdIn(List<Long> ids);
}