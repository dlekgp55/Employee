package com.hybrid.model.busapi;

public class MsgHeader {
	//http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch=6628&ServiceKey=htX9%2Fms2iatoP%2FPhiiup2FKWPOcGtL9guMfb6Y8Ze4TZsi2Bm37BM9PUG5YByszvh%2FESBAU%2FhkYEABkEBDP3yw%3D%3D
	String headerCd ;

	String headerMsg ;

	Integer itemCount ;

	public String getHeaderCd() {
		return headerCd;
	}

	public void setHeaderCd(String headerCd) {
		this.headerCd = headerCd;
	}

	public String getHeaderMsg() {
		return headerMsg;
	}

	public void setHeaderMsg(String headerMsg) {
		this.headerMsg = headerMsg;
	}

	public Integer getItemCount() {
		return itemCount;
	}

	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}
	
	
}
