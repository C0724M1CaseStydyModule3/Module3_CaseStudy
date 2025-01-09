package com.example.module_3.service;

import com.example.module_3.entity.AdminAccount;

public interface IAccount extends IService<AdminAccount>{
    AdminAccount findByPassword(String password);
}
