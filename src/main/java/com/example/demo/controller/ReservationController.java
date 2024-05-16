package com.example.demo.controller;

import java.util.List;

import com.example.demo.model.Reservation;
import com.example.demo.services.IReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReservationController {

    @Autowired
    private IReservationService service;


    @GetMapping("reservations")
    public List<Reservation> search(){
        System.out.println("get reservations list successfully");
        return (List<Reservation>) this.service.search();
    }

}
