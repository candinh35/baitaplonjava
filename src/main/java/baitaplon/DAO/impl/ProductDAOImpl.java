package baitaplon.DAO.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import baitaplon.DAO.ProductDAO;
import baitaplon.entities.Product;
@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired 
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> getProducts() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Product").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();
	            session.getTransaction().rollback();
	            session.close();
		}
		return null;
	}

	@Override
	public List<Product> getProductByCategory(Integer cateId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("From Product where cateId =: cateId");
			query.setParameter("cateId", cateId);
			List<Product> list = query.list();
			transaction.commit();
			return list;
		} catch (Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
		}
		finally {
			session.flush();
			session.close();
		}
		return null;
	}

	@Override
	public Product getProductById(Integer proId) {
		 Session session = sessionFactory.openSession();
	        try {
	            session.beginTransaction();
	            Product pro = (Product) session.createQuery("from Product where proId = :proId")
	            .setParameter("proId", proId)
	            .uniqueResult();
	            session.getTransaction().commit();
	            return pro;           
	        } catch (Exception e) {
	            // TODO: handle exception
	            e.printStackTrace();
	            session.getTransaction().rollback();
	        }finally {
	            session.close();
	        }
	        return null;
	    }    

}
