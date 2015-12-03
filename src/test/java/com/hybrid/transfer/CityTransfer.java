package com.hybrid.transfer;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.hybrid.mapper.CityMapper;
import com.hybrid.model.City;
import com.hybrid.util.Pagination;

public class CityTransfer {

	static Log log = LogFactory.getLog(CityTransfer.class);
	
	public static void main(String[] args) {
		
		GenericXmlApplicationContext ctx=null;
		ctx = new GenericXmlApplicationContext("spring/beans_mysql.xml", 
											   "spring/beans_oracle.xml");
		/*
		 * Mysql ==> Oracle
		 */
		CityMapper mysqlCityMapper = (CityMapper) ctx.getBean("mysqlCityMapper");
		CityMapper oracleCityMapper = (CityMapper) ctx.getBean("oracleCityMapper");
		
		int deleteCount = oracleCityMapper.deleteAll();
		log.info("Oracle City Delete Count = " + deleteCount);
		
		List<City> list = mysqlCityMapper.selectAll();
//		Pagination paging = new Pagination();
//		paging.setTotalItem(4079);
//		paging.setPageNo(2);
//		List<City> list = mysqlCityMapper.selectPage(paging);
		
		log.info("city size = " + list.size());
		
		System.out.println();
		
		list.forEach(new Consumer<City>() {

			@Override
			public void accept(City t) {
				System.out.print(".");
				System.out.flush();
				if (t.getDistrict().equals("")){			//mysql의 district에 null은 아닌데 값이 없는것이 있다.그래서 임의적으로 변환
					t.setDistrict(" ");
				}
				int rtn = oracleCityMapper.insert(t);
				log.info("rtn = " + rtn);
			}
		});
		
		int cityCount = oracleCityMapper.selectCount();
		log.info("Oracle City Total Count = " + cityCount);
		
		ctx.close();
		
		List<String> xx;
		

	}

}
