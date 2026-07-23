package com.rt.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity) {
		
		httpSecurity.authorizeHttpRequests((auth)-> 
					auth.anyRequest().authenticated()
				).formLogin((form -> form.defaultSuccessUrl("/home", true)));
		
		return httpSecurity.build();
		
	}
	
	@Bean
	public UserDetailsService userDetailsService(){
		UserDetails userDetails = User.builder()
		        .username("admin")
		        .password(passwordEncoder().encode("admin123"))
		        .roles("admin")
		        .build();
		
		
		UserDetails admin = User.builder().username("user").password(passwordEncoder().encode("user123")).roles("user").build();
		return new InMemoryUserDetailsManager(userDetails, admin);

	}
	
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
