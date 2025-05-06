package com.codingdojo.MyProject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.codingdojo.MyProject.models.Marine;

public interface MarineRepository extends CrudRepository<Marine, Long>{

		List<Marine> findAll();
}
