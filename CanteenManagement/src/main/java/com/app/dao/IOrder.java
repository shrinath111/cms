package com.app.dao;

import java.sql.SQLException;

import com.app.pojos.Order;

public interface IOrder {
	boolean saveOrder(Order o);

//	float showTotal(int id) throws SQLException;
}
