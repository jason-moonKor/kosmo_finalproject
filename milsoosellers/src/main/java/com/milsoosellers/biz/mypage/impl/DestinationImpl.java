package com.milsoosellers.biz.mypage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.milsoosellers.biz.mypage.DestService;
import com.milsoosellers.biz.mypage.DestinationVO;

@Service("DestService")
public class DestinationImpl implements DestService{
	@Autowired
	private DestinationDAO destinationDAO;

	@Override
	public List<DestinationVO> getDestList() {
		return destinationDAO.getDestList();
	}
	
}
