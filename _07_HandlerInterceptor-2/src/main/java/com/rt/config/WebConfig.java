package com.rt.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.rt.handler.Handler;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	
	@Autowired
	private Handler handler;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	registry.addInterceptor(handler).addPathPatterns("/profile").excludePathPatterns("/login", "/logout");

	}
	
	

}
