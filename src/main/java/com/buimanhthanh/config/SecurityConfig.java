package com.buimanhthanh.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.buimanhthanh.CONSTANT;
import com.buimanhthanh.handler.HandleLoginSuccess;
import com.buimanhthanh.handler.HandleLogoutSuccess;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackages = { "com.buimanhthanh.service", "com.buimanhthanh.dao" })
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailService;
	@Autowired
	private AuthenticationSuccessHandler loginSuccessHandler;
	@Autowired
	private LogoutSuccessHandler logoutSuccessHandler;

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public AuthenticationSuccessHandler loginSuccessHandler() {
		return new HandleLoginSuccess();
	}

	@Bean
	public LogoutSuccessHandler logoutSuccessHandler() {
		return new HandleLogoutSuccess();
	}

	@Override // phan quyen
    protected void configure(HttpSecurity http) throws Exception {
    	http.formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password");
    	http.formLogin().defaultSuccessUrl("/").failureUrl("/login?error");
    	http.formLogin().successHandler(loginSuccessHandler);
    	
    	
    	http.logout().logoutSuccessUrl("/login").logoutUrl("/logout");
    	http.logout().logoutSuccessHandler(logoutSuccessHandler);
    	
    	http.authorizeRequests().antMatchers("/","/login","/register","/product","/product-detail").permitAll()	
    							.antMatchers("/admin/**").hasAuthority(CONSTANT.ADMIN)
    							.anyRequest().authenticated();
    	http.csrf().disable();
        
    }

	@Override // chung thuc
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailService).passwordEncoder(passwordEncoder());
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/template/**");
	}
}
