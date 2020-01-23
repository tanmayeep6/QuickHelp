package com.spr.dao;

import com.spr.dto.Login;

public interface LoginDao {

	Login validateUser(Login login);
}
