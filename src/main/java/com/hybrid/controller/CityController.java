package com.hybrid.controller;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hybrid.model.CityList;
import com.hybrid.model.City;

@Controller
@RequestMapping("/city")		//요청 맵핑. city라는 요청이 들어오면 이 controller가 처리한다.
public class CityController {

	static Log log = LogFactory.getLog(CityController.class);
	
	@RequestMapping("/city.html")	//city 밑에 있는 dept.html을 수행한다. http://localhost:8085/Employee/city/city.html 하
	public String getView() {
		log.info("getView()...");
		
		return "city/city";		// 	http://localhost:8085/Employee/city/city.html 치면 최종적으로는 /WEB-INF/view/city/city.jsp 실행 된다. 
	}
	
	@RequestMapping({"","/"})		/*http://localhost:8085/Employee/city , http://localhost:8085/Employee/city/ 둘다 가능하게 함.
*/	@ResponseBody		//기본적으로 RequestMapping은 view type으로 취급,ResponseBody을 추가 하면 return type을 data로 취급 한다.
	public CityList getCityAll(){		//CityList.java에 @XmlRootElement 추가.
		CityList list = new CityList();
		List<City> citys1 =new ArrayList<City>();
		City city = new City();
		city.setId(100);
		city.setName("seoul");
		citys1.add(city);
		
		City city2 = new City();
		city2.setId(200);
		city2.setName("pusan");
		citys1.add(city2);
		
		list.setCitys(citys1);
		return list;
	}
	
	
}
