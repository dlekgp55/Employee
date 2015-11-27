package com.hybrid.model;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import com.hybrid.util.Pagination;

@XmlRootElement(name="Response")	//@XmlRootElement XML 변환 대상으로 바꿈. name은 지정할수 있다.
@XmlAccessorType(XmlAccessType.FIELD)	//기본적으로 property 이름을 return하지만, 아래의 Element 이름을 return 할수 있게 함.
public class CityPage {
	
	@XmlElementWrapper(name="citys")	//wrapper 이름 지정
	@XmlElement(name="city")		//element 이름 지정
	List<City> citys;
	
	Pagination paging;
	
	public List<City> getCitys() {
		return citys;
	}

	public void setCitys(List<City> citys) {
		this.citys = citys;
	}

	public Pagination getPaging() {
		return paging;
	}

	public void setPaging(Pagination paging) {
		this.paging = paging;
	}
	
	
}
