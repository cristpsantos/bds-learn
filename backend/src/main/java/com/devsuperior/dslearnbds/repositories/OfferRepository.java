package com.devsuperior.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devsuperior.dslearnbds.entiites.Offer;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long>{

}
