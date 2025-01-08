package com.example.mvc.service;

import com.example.mvc.entity.Phone;
import com.example.mvc.repository.PhoneRepository;

import java.util.ArrayList;
import java.util.List;

public class PhoneService implements IPhoneService{
    private static PhoneRepository phoneRepository = new PhoneRepository();

    @Override
    public List<Phone> getAll() {
        List<Phone> phones = phoneRepository.getAll();
        return phones;
    }

    @Override
    public void save(Phone s) {
        phoneRepository.save(s);
    }

    @Override
    public void update(String id, Phone s) {

    }

    @Override
    public void remove(String id) {
        phoneRepository.deleteByPhoneID(id);
    }

    @Override
    public Phone findById(String id) {
        List<Phone> phones = phoneRepository.getAll();
        for (Phone phone : phones) {
            if (phone.getPhoneID() == id) {
                return phone;
            }
        }
        return null;
    }

    @Override
    public List<Phone> findByPhoneName(String phoneName) {
        List<Phone> phones = phoneRepository.getAll();
        List<Phone> temp = new ArrayList<Phone>();
        for (Phone phone : phones) {
            if (phone.getPhoneName().contains(phoneName)) {
                temp.add(phone);
            }
        }
        return temp;
    }
}
