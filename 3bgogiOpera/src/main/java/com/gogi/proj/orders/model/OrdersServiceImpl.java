package com.gogi.proj.orders.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gogi.proj.orders.vo.OrdersVO;

@Service
public class OrdersServiceImpl implements OrdersService{

	@Autowired
	private OrdersDAO ordersDAO;
	
	public int [] insertOrderData(List<OrdersVO> orderList) {
		int [] counts = new int[2];
		int count = 0;
		int dupliCount = 0;
		
		for(OrdersVO vo : orderList) {
			int result = ordersDAO.insertOrderData(vo);
			if(result > 0) count++;
			else if(result == 0) dupliCount++;
		}
		counts[0] = count;
		counts[1] = dupliCount;
		
		return counts;
	}
}
