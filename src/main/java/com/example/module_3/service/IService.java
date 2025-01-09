package com.example.module_3.service;

import java.util.List;

public interface IService<T> {
    List<T> getAll();

    void save(T t);

    void update(int id, T t);

    void remove(String id);

    T findByPhoneId(String id);

    List<T> findByPhoneName(String name);
}