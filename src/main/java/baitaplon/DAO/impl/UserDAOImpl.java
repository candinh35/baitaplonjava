package baitaplon.DAO.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import baitaplon.DAO.UserDao;
import baitaplon.entities.Users;
@Repository
public class UserDAOImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Users login(String Email, String password) {
			Session session = sessionFactory.openSession();
			Transaction transaction = null;
			try {
				transaction = session.beginTransaction();
				Query query = session.createQuery("From Users where userLogin =: email and userPassword=: password");
				query.setString("email", Email);
				query.setString("password", password);
				Users user = (Users) query.uniqueResult();
				transaction.commit();
				return user;
			} catch (Exception e) {
				if (transaction != null ) {
					transaction.rollback();
				}
				// TODO: handle exception
			}
			finally {
				session.close();
			}
		return null;
	}


}
