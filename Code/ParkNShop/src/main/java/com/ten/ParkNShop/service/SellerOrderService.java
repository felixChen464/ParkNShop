package com.ten.ParkNShop.service;

import com.ten.ParkNShop.util.Page;

public interface SellerOrderService {

	Page getCompletedOrders(int sellerId, int cur);

	Page getUncompletedOrders(int sellerId, int cur);

}