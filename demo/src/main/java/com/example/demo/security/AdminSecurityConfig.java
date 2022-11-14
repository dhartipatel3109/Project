package com.example.demo.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@Order(2)
public class AdminSecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/").permitAll();

		http.antMatcher("/admin/**").authorizeRequests().anyRequest().hasAuthority("ADMIN").and().formLogin()
				.loginPage("/admin/login").loginProcessingUrl("/admin/login").defaultSuccessUrl("/admin/dashboard")
				.permitAll().and().logout().logoutUrl("/admin/logout").logoutSuccessUrl("/");
	}
}
