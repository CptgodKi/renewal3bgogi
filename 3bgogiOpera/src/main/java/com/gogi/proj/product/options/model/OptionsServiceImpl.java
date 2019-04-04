package com.gogi.proj.product.options.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gogi.proj.product.cost.vo.CostsVO;
import com.gogi.proj.product.options.vo.OptionsVO;

@Service
public class OptionsServiceImpl implements OptionsService{

	private static final Logger logger = LoggerFactory.getLogger(OptionsServiceImpl.class);
	
	@Autowired
	private OptionsDAO optionDao;

	@Override
	public int insertOptions(OptionsVO optionVO) {
		// TODO Auto-generated method stub
		return optionDao.insertOptions(optionVO);
	}

}
