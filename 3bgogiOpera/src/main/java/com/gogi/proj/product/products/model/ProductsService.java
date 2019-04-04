package com.gogi.proj.product.products.model;

import java.util.List;

import com.gogi.proj.product.products.vo.ProductsVO;

public interface ProductsService {
	
	public List<ProductsVO> selectProductList();
	
	public List<ProductsVO> selectProductListByCfFk(int cfFk);
	
	public int insertProducts(ProductsVO productVo);

	public int selectProductCountByCfFk(int cfFk);
	
	public ProductsVO selectDetailProductWithOptionByProductPk(int productPk);
}
