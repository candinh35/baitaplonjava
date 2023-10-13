package baitaplon.DAO;

import baitaplon.entities.User;

public interface UserDAO {
	public User findByUserName(String username);
}
