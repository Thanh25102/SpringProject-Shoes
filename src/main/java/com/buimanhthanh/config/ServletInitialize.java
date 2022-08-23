package com.buimanhthanh.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ServletInitialize extends AbstractAnnotationConfigDispatcherServletInitializer {
	// class config khong implement webconfiger thi bo vao day
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {
				HibernateConfig.class,
				SecurityConfig.class
		};
	}

	// class config co implement webconfiger thi bo vao day
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {
				ApplicationConfig.class,
		};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {
				"/"
		};
	}

}
