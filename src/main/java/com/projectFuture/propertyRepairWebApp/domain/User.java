package com.projectFuture.propertyRepairWebApp.domain;

import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="USERS")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    public static final int NAME_MAX_LENGTH=50;

    @Id
    @Column(name="user_id",nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    //VAT is always a 9char numeric String
    @Column(name="vat",length = 9,nullable = false)
    private String vat;

    @Column(name="first_name",length = NAME_MAX_LENGTH,nullable = false)
    private String first_name;

    @Column(name="last_name",length = NAME_MAX_LENGTH,nullable = false)
    private String last_name;

    @Column(name="address",length = 120,nullable = false)
    private String address;

    //Phone usually is 10char numeric String but can be 14char String if we can accept +30,0030
    @Column(name="phone",length = 14,nullable = false)
    private String phone;

    @Column(name="email",length = NAME_MAX_LENGTH,nullable = false)
    private String email;

    @Column(name="password",length = NAME_MAX_LENGTH,nullable = false)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(name="user_type",nullable = false)
    private UserType userType;

    @Enumerated(EnumType.STRING)
    @Column(name="property_type")
    private PropertyType propertyType;

    @OneToMany(mappedBy = "user",targetEntity = Repair.class)
    private List<Repair> repairs;

}
