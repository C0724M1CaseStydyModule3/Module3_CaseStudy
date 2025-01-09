package com.example.module_3.service;

import com.example.module_3.entity.AdminAccount;
import com.example.module_3.repository.AccountRepository;

import java.util.List;

public class AccountService implements IAccount{
    private final AccountRepository accountRepository = new AccountRepository();

    @Override
    public AdminAccount findByPassword(String password) {
        return AccountRepository.findByPassword(password);
    }

    @Override
    public List<AdminAccount> getAll() {
        return AccountRepository.getAll();
    }

    @Override
    public void save(AdminAccount adminAccount) {
        accountRepository.save(adminAccount);
    }

    @Override
    public void update(int id, AdminAccount adminAccount) {

    }

    @Override
    public void remove(String phoneNumber) {
        accountRepository.deleteByPhoneNumber(Integer.parseInt(phoneNumber));
    }

    @Override
    public AdminAccount findByPhoneId(String id) {
        return null;
    }

    @Override
    public List<AdminAccount> findByPhoneName(String name) {
        return null;
    }
}
