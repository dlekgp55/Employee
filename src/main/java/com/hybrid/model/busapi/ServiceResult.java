package com.hybrid.model.busapi;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
//http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch=6628&ServiceKey=htX9%2Fms2iatoP%2FPhiiup2FKWPOcGtL9guMfb6Y8Ze4TZsi2Bm37BM9PUG5YByszvh%2FESBAU%2FhkYEABkEBDP3yw%3D%3D

@XmlRootElement(name="ServiceResult")						//@XmlRootElement는 jaxb의 어노테이션. jaxb가 ServiceResult을 xml과 비교시, S를 소문자로 인식. 그래서 name를 넣어줌
@XmlType(propOrder={"msgHeader","msgBody"})					//xml에서 출력되는 순서를 정할수 있다.
public class ServiceResult {
	MsgHeader msgHeader;
	MsgBody msgBody;
	
	public MsgHeader getMsgHeader() {
		return msgHeader;
	}

	public void setMsgHeader(MsgHeader msgHeader) {
		this.msgHeader = msgHeader;
	}

	public MsgBody getMsgBody() {
		return msgBody;
	}

	public void setMsgBody(MsgBody msgBody) {
		this.msgBody = msgBody;
	}
	
	
}
