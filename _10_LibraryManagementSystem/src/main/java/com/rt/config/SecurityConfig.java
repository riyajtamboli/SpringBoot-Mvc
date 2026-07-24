package com.rt.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
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
		http.authorizeHttpRequests(auth -> auth.requestMatchers("/").permitAll().requestMatchers("/admin/login").hasRole("admin")
				.requestMatchers("/user/login").hasRole("user")
				.anyRequest()
				.authenticated()).formLogin(Customizer.withDefaults());
		return http.build();
	}
	
	@Bean
	public UserDetailsService userDetailsService() {
		
		UserDetails user = User.builder().username("user").password(passwordEncoder().encode("user123")).roles("user").build();
		UserDetails admin = User.builder().username("admin").password(passwordEncoder().encode("admin123")).roles("admin").build();
		return new InMemoryUserDetailsManager(user, admin);
				
	}
	
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

}
