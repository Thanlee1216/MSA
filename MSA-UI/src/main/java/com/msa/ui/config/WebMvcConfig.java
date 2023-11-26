package com.msa.ui.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

//    @Override
//    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry
//                .addResourceHandler("/webjars/**")
//                .addResourceLocations("classpath:/static/", "classpath:/META-INF/resources/");
//        registry
//                .addResourceHandler("/**")
//                .addResourceLocations("classpath:/static/", "classpath:/META-INF/resources/");
//    }
}
