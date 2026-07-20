package com.rt.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "crickter_db")
public class Cricketer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer playerId;
	@Column(name = "Player_Name")
	private String playerName;
	@Column(name = "Team_Name")
	private String teamName;
	@Column(name = "Role")
	private String role;
	@Column(name = "Batting_Style")
	private String battingStyle;
	@Column(name = "Jersy_Number")
	private Integer jersyNumber;
	

}
