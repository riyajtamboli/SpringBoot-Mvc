package com.rt.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) {
		
		http.csrf((csrf)-> csrf.disable())
			.authorizeHttpRequests(auth ->
			auth.requestMatchers("/admin").hasRole("admin").requestMatchers("/home").hasAnyRole("user", "admin")
			.anyRequest().authenticated()
					)
			.formLogin(form -> form.defaultSuccessUrl("/home", true));
		
		return http.build();
	}
	
	
	@Bean
	public UserDetailsService userDetailsService() {
		UserDetails userDetails = User.builder().username("user").password(passwordEncoder().encode("pass123")).roles("user").build();
		UserDetails user2 = User.builder().username("admin").password(passwordEncoder().encode("pass123")).roles("admin").build();
		return new InMemoryUserDetailsManager(userDetails, user2);
	}
	
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
