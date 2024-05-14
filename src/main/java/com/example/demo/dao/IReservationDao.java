package com.example.demo.dao;

import com.example.demo.model.Reservation;
import org.springframework.data.repository.CrudRepository;

public interface IReservationDao extends CrudRepository<Reservation, Long> {

}