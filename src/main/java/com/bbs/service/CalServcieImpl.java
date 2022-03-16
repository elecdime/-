package com.bbs.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.dao.CalenDao;

import com.bbs.domain.Calendar;
import com.bbs.domain.CategoriDTO;
import com.bbs.domain.Rade;
import com.bbs.domain.User;
@Service
public class CalServcieImpl implements CalenService {
	@Inject
	private CalenDao dao;
	@Override
	public List<Calendar> calenList() {
		// TODO Auto-generated method stub
		return dao.calenList();
	}
	@Override
	public Calendar calView(int id) {
		// TODO Auto-generated method stub
		return dao.calView(id);
	}
	@Override
	public void calinsert(Calendar calendar) {
		// TODO Auto-generated method stub
		dao.calinsert(calendar);
	}
	@Override
	public List<CategoriDTO> categori() {
		// TODO Auto-generated method stub
		return dao.categori();
	}@Override
	public void join(User user) {
		// TODO Auto-generated method stub
		dao.join(user);
	}
@Override
public void rejoin(User user) {
	// TODO Auto-generated method stub
	dao.rejoin(user);
}
@Override
public Object userid(Object id) {
	// TODO Auto-generated method stub
	return	dao.userid(id);
}@Override
public List<Rade> radeList(int id) {
	// TODO Auto-generated method stub
	return dao.radeList(id);
}
@Override
public void radejoin(Rade rade) {
	// TODO Auto-generated method stub
	dao.radejoin(rade);
}
}
