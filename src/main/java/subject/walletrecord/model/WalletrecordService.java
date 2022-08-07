package subject.walletrecord.model;

import java.util.List;



public class WalletrecordService {
	private WalletrecordDAO_interface dao;
	
	public WalletrecordService() {
		dao = new WalletrecordDAO();
	}
	
	public List<WalletrecordVO> getAll() {
		return dao.getAll();
	}
	
}
