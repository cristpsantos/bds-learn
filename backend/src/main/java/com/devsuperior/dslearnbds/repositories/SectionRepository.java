package com.devsuperior.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devsuperior.dslearnbds.entiites.Section;

@Repository
public interface SectionRepository extends JpaRepository<Section, Long>{

}
