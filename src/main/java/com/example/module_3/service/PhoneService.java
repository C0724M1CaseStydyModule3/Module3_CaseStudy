package com.example.module_3.service;

import com.example.module_3.entity.Phone;
import com.example.module_3.repository.PhoneRepository;

import java.util.ArrayList;
import java.util.List;

public class PhoneService implements IPhoneService {
    public static PhoneRepository phoneRepository = new PhoneRepository();

    @Override
    public List<Phone> getAll() {
        List<Phone> phones = phoneRepository.getAll();
        return phones;
    }

    @Override
    public void save(Phone phone) {
        phoneRepository.save(phone);
    }

    @Override
    public void update(int id, Phone phone) {

    }

    @Override
    public void remove(String id) {
        phoneRepository.deleteByPhoneID(id);
    }

    @Override
    public Phone findByPhoneId(String id) {
        List<Phone> phones = phoneRepository.getAll();
        for (Phone phone : phones) {
            if (phone.getPhoneID() == id) {
                return phone;
            }
        }
        return null;
    }

    @Override
    public List<Phone> findByPhoneName(String name) {
        List<Phone> phones = phoneRepository.getAll();
        List<Phone> temp = new ArrayList<>();
        for (Phone phone : phones) {
            if (phone.getPhoneName().contains(name)) {
                temp.add(phone);
            }
        }
        return temp;
    }
}
