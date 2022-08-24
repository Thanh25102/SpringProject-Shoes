package com.buimanhthanh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buimanhthanh.dao.StaffDAO;
import com.buimanhthanh.dto.StaffDTO;
import com.buimanhthanh.mapper.ConvertEntityToDto;
import com.buimanhthanh.service.StaffService;

@Service
public class StaffServiceImpl implements StaffService {
	
	@Autowired
	private StaffDAO staffDAO;

	@Override
	@Transactional
	public List<StaffDTO> getAllStaff() {
		return ConvertEntityToDto.convertStaffDto(staffDAO.getAllStaff());
	}

}
