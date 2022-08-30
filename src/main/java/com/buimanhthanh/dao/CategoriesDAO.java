package com.buimanhthanh.dao;

import com.buimanhthanh.entity.Categories;

import java.util.List;

public interface CategoriesDAO {
    List<Categories> getAllCategories();

    Categories getCategories(Integer id);
}
