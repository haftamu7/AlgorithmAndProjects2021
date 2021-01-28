package com.haftamu.soloProject_2021.config;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MailConfig {

	@Value("smtp.gmail.com")
	private String host;
	
	@Value("587")
	private Integer port;
	
	@Bean
	public JavaMailSender javamailService() {
		
		JavaMailSenderImpl javaMailSenderImpl = new JavaMailSenderImpl();
		javaMailSenderImpl.setHost(host);
		javaMailSenderImpl.setPort(port);
		javaMailSenderImpl.setUsername("haftamu7@gmail.com");
		javaMailSenderImpl.setPassword("Kaleab@7215");
		javaMailSenderImpl.setJavaMailProperties(getJavaMailProperties());
		return javaMailSenderImpl;
	}
	
	private Properties getJavaMailProperties() {
		Properties properties = new Properties();
		
		properties.setProperty("mail.transport.protocol", "smtp");
		properties.setProperty("mail.smtp.auth", "true");
		properties.setProperty("mail.smtp.starttls.enable", "true");
		properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.setProperty("mail.debug", "true");
		return properties;
	}
	
}
