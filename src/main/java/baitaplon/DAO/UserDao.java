package baitaplon.DAO;

import java.util.List;

import baitaplon.entities.Users;

public interface UserDao {
	public Users login(String Email, String password);
}
