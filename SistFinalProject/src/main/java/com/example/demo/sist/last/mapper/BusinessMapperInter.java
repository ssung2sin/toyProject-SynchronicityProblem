package com.example.demo.sist.last.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.sist.last.dto.BusinessDto;

@Mapper
public interface BusinessMapperInter {

	public void insertBusiness(BusinessDto dto);
	public int BloginPassCheck(Map<String, String> map);
	public BusinessDto getDataByBusinessId(String business_id);
	public int getSearchBusinessId(String business_id);
	public void updateBusiness(BusinessDto dto);
	public void deleteBusiness(String business_id);
	public int getApprovalByBusinessId(String business_id);
}
