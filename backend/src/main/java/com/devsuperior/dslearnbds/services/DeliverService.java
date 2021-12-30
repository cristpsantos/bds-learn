package com.devsuperior.dslearnbds.services;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dslearnbds.dto.DeliverDTO;
import com.devsuperior.dslearnbds.entiites.Deliver;
import com.devsuperior.dslearnbds.repositories.DeliverRepository;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;

@Service
public class DeliverService {

	@Autowired
	private DeliverRepository repository;
	
	@PreAuthorize("hasAnyRole('ADMIN', 'INSTRUCTOR')")
	@Transactional
	public void saveRevision(Long id, DeliverDTO dto) {
		try {
			Deliver entity = repository.getOne(id);
			entity.setStatus(dto.getStatus());
			entity.setFeedback(dto.getFeedback());
			entity.setCorrectCount(dto.getCorrectCount());
			repository.save(entity);
		}
		catch(EntityNotFoundException e) {
			throw new ResourceNotFoundException("Id not found " + id);
		}
	} 
}
