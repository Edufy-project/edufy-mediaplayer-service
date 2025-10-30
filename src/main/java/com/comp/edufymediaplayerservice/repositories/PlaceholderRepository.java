package com.comp.edufymediaplayerservice.repositories;

import com.comp.edufymediaplayerservice.entities.PlaceholderEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlaceholderRepository extends JpaRepository<PlaceholderEntity, Long> {
}
