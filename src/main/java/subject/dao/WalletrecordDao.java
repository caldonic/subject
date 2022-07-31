package subject.dao;

import java.util.List;

import subject.vo.Walletrecord;

public interface WalletrecordDao {
	
	public List<Walletrecord> getAll();
	public Walletrecord selectGoldremaining(Integer goldremaining);
} 
