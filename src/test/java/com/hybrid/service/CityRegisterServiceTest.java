package com.hybrid.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.hybrid.exception.CityRegisterException;
import com.hybrid.model.City;
import com.hybrid.model.Dept;
import com.hybrid.model.Emp;

public class CityRegisterServiceTest {

	static Log log = LogFactory.getLog(CityRegisterServiceTest.class);
	
	public static void main(String[] args) {
		GenericXmlApplicationContext ctx=null;
		ctx = new GenericXmlApplicationContext("spring/beans_service.xml", "spring/beans_dao.xml");
		/*이거는 beans_dao로 부터, service로 맵핑이 되어 있다.*/
		
		CityRegisterService service = ctx.getBean(CityRegisterService.class);
		City city = new City();
		city.setName("bootstrap");
		city.setDistrict("css framework");
		city.setPopulation(12000000);
		city.setCountryCode("web");
		
		try{
		int id = service.regist(city);
		log.info("city regist id = " + id);
		}catch (CityRegisterException e) {
			log.error("city register error...", e);
		}
		ctx.close();
	}

}
