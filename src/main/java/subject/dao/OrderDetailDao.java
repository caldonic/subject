package subject.dao;

import java.io.Serializable;

import subject.vo.OrderDetail;

public interface OrderDetailDao {

	Serializable insert(OrderDetail vo);

}