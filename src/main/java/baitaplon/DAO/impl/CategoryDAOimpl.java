package baitaplon.DAO.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import baitaplon.DAO.CategoryDAO;
import baitaplon.entities.Category;
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	 @Autowired
	    private SessionFactory sessionFactory;
	@Override
	public List<Category> getCate() {
		Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            List list = session.createQuery("from Category").list();
            session.getTransaction().commit();
            session.close();
            return list;            
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
		return null;
	}

}
