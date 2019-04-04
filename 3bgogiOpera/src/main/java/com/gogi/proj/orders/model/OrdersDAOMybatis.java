package com.gogi.proj.orders.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.gogi.proj.orders.vo.OrdersVO;

@Repository
public class OrdersDAOMybatis extends SqlSessionDaoSupport implements OrdersDAO{

	private String orderExcelNameSpace = "order.excel";

	@Override
	public int insertOrderData(OrdersVO ordersVO) {
		// TODO Auto-generated method stub
		return getSqlSession().insert(orderExcelNameSpace+".insertOrderData",ordersVO);
	}
}
