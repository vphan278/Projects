package com.codingdojo.GroupProject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.GroupProject.models.Team;
import com.codingdojo.GroupProject.repositories.TeamRepository;

@Service
public class TeamService {

	
	private TeamRepository teamRepo;

	public TeamService(TeamRepository teamRepo) {
		this.teamRepo = teamRepo;
	}
	
	public List<Team> allTeams(){
		return teamRepo.findAll();
	}
	
	public Team createTeam(Team team) {
		return teamRepo.save(team);
	}
	
	public Team singleTeam(Long id) {
		Optional<Team> optTeam = teamRepo.findById(id);
		if(optTeam.isPresent()) {
			return optTeam.get();
		}
		else {
			return null;
		}
	}
	
	//Update
	public void updateTeam(Team team) {
		teamRepo.save(team);
	}
		

	public void deleteTeam(Long id) {
		teamRepo.deleteById(id);
		    // bookRepository.
	}


}
