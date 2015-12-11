package com.hybrid.controller;

import java.net.URLDecoder;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.hybrid.model.busapi.ServiceResult;

@Controller
@RequestMapping("/busRouteInfo")
public class BusRouteListController {
	
	static Log log = LogFactory.getLog(BusRouteListController.class);
	
	@RequestMapping("/getBusRouteList/{strSrch}")
	@ResponseBody					//데이터 타입으로 취급
	public ServiceResult getBusRouteList(@PathVariable String strSrch){		//@PathVariable 위의 변수를 가져옴
		log.info("getBusRouteList()... strSrch = " +  strSrch); 
		
		RestTemplate rest = new RestTemplate();
		String url = "http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch={strSrch}&serviceKey={serviceKey}";
		String serviceKey = URLDecoder.decode("htX9%2Fms2iatoP%2FPhiiup2FKWPOcGtL9guMfb6Y8Ze4TZsi2Bm37BM9PUG5YByszvh%2FESBAU%2FhkYEABkEBDP3yw%3D%3D");	
		//인증키는 decode를 해야한다.
		
		
//		String result = rest.getForObject(url, String.class, strSrch,serviceKey);
		ServiceResult result = rest.getForObject(url, ServiceResult.class, strSrch,serviceKey);		//url, 리턴 타입, ?쿼리 추가부분
//		result.getMsgBody().getItemList().get(0).getBusRouteNm();
		
		return result;
	}
}
