package com.buimanhthanh.service.impl;

import com.buimanhthanh.dao.CategoriesDAO;
import com.buimanhthanh.dto.CategoriesDTO;
import com.buimanhthanh.mapper.ConvertEntityToDto;
import com.buimanhthanh.service.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CategoriesServiceImpl implements CategoriesService {

    @Autowired
    private CategoriesDAO categoriesDAO;

    @Override
    @Transactional
    public List<CategoriesDTO> getAllCategories() {
        return ConvertEntityToDto.convertCategoriesDto(categoriesDAO.getAllCategories());
    }
}
