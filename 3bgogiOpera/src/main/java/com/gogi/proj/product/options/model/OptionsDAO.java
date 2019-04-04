package com.gogi.proj.product.options.model;

import com.gogi.proj.product.options.vo.OptionsCostsMatchingVO;
import com.gogi.proj.product.options.vo.OptionsVO;

public interface OptionsDAO {

	public int insertOptions(OptionsVO optionVO);
	
	public int insertOptionsCostsMatching(OptionsCostsMatchingVO optionsCostsMatchingVO);
}
