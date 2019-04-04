package com.gogi.proj.orders.model;

import java.util.List;

import com.gogi.proj.orders.vo.OrdersVO;

public interface OrdersService {

	public int[] insertOrderData(List<OrdersVO> orderList);
}
