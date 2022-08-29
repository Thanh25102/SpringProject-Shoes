package com.buimanhthanh.service;

import java.util.List;

import com.buimanhthanh.dto.StaffDTO;

public interface StaffService{
	List<StaffDTO> getAllStaff();
	StaffDTO getStaff(Integer id);
}
