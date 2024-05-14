package com.example.demo.services;

import java.util.List;

import com.example.demo.dao.IReservationDao;
import com.example.demo.model.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl implements IReservationService {

    @Autowired
    private IReservationDao reservationDao;

    @Override
    public List<Reservation> search() {
        return (List<Reservation>) reservationDao.findAll();
    }

}
