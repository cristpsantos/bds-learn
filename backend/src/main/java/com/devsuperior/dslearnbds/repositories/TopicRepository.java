package com.devsuperior.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devsuperior.dslearnbds.entiites.Topic;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long>{
}
