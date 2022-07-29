package subject.service.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import subject.dao.CouponRecordDao;
import subject.dao.impl.CouponRecordDaoImpl;
@Service
@Transactional
public class CouponRecordServiceImpl {
	public static void main(String[] args) {

//		ApplicationContext context = new ClassPathXmlApplicationContext("beans.config.xml");
//		CouponRecordServiceImpl couponRecordServiceImpl = context.getBean("couponRecordServiceImpl", CouponRecordServiceImpl.class);
//		
//		SessionFactory sessionFactory = context.getBean("sessionFactory",SessionFactory.class);
//		Session session = sessionFactory.getCurrentSession();
//		Transaction transaction = session.beginTransaction();
//
//		Integer T = dao.selectbyrecordpk("lanternfestival", 1636001);
//		System.out.println("T=" + T);
//
//		transaction.commit();
//		session.close();
//		
//		
//		((ConfigurableApplicationContext) context).close(); //SessionFactory的close由spring處理
	}
}
