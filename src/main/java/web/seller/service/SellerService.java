package web.seller.service;

import web.vo.Seller;

public interface SellerService {

	Seller login(Seller seller);

	Integer register(Seller seller);

}