package com.hybrid.model.busapi;

import java.net.URLDecoder;

import org.springframework.web.client.RestTemplate;

public class BusRouteList {
	public static void main(String[] args) {
		
		RestTemplate rest = new RestTemplate();
		String url = "http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch={strSrch}&serviceKey={serviceKey}";
		String strSrch = "6628"; 
		String serviceKey = URLDecoder.decode("htX9%2Fms2iatoP%2FPhiiup2FKWPOcGtL9guMfb6Y8Ze4TZsi2Bm37BM9PUG5YByszvh%2FESBAU%2FhkYEABkEBDP3yw%3D%3D");	
		//인증키는 decode를 해야한다.
		
//		String result = rest.getForObject(url, String.class, strSrch,serviceKey);
		ServiceResult result = rest.getForObject(url, ServiceResult.class, strSrch,serviceKey);		//url, 리턴 타입, ?쿼리 추가부분
		
		
		System.out.println(result.getMsgHeader().getHeaderMsg());
		System.out.println(result.getMsgBody().getItemList().get(0).getEdStationNm());
		System.out.println(result.getMsgBody().getItemList().get(1).getEdStationNm());
		
	}
	
}
