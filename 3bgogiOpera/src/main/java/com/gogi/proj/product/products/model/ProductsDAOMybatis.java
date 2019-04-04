package com.gogi.proj.product.products.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.gogi.proj.product.products.vo.ProductsVO;

@Repository
public class ProductsDAOMybatis extends SqlSessionDaoSupport implements ProductsDAO{

	private String namespace = "products.product";
	
	@Override
	public int insertProducts(ProductsVO productVo) {
		
		return getSqlSession().insert(namespace+".insertProducts",productVo);
	}

	@Override
	public List<ProductsVO> selectProductList() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace+".selectProductList");
	}

	@Override
	public List<ProductsVO> selectProductListByCfFk(int cfFk) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace+".selectProductListByCfFk",cfFk);
	}

	@Override
	public int selectProductCountByCfFk(int cfFk) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectProductCountByCfFk",cfFk);
	}

	@Override
	public ProductsVO selectDetailProductWithOptionByProductPk(int productPk) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace+".selectDetailProductWithOptionByProductPk",productPk);
	}
}
