package com.rt.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity)
	{
		httpSecurity.authorizeHttpRequests((auth) -> auth.anyRequest().authenticated())
		.formLogin((form) -> form.defaultSuccessUrl("/home", true));
		return httpSecurity.build();
	}
}
