package com.example.securityproject;

import jakarta.persistence.*;

@Entity
public class Authority {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String authority;

    public String getAuthority() {
        return authority;
    }

}
