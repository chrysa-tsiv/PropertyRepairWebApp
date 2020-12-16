package com.projectFuture.propertyRepairWebApp.domain;

import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "USERS")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    public static final int NAME_MAX_LENGTH = 50;

    @Id
    @Column(name = "userID", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    //VAT is always a 9char numeric String
    @Column(name = "vat", length = 9, nullable = false)
    private String vat;

    @Column(name = "firstName", length = NAME_MAX_LENGTH, nullable = false)
    private String firstName;

    @Column(name = "lastName", length = NAME_MAX_LENGTH, nullable = false)
    private String lastName;

    @Column(name = "address", length = 120, nullable = false)
    private String address;

    //Phone usually is 10char numeric String but can be 14char String if we can accept +30,0030
    @Column(name = "phone", length = 14, nullable = false)
    private String phone;

    @Column(name = "email", length = NAME_MAX_LENGTH, nullable = false)
    private String email;

    @Column(name = "password", length = NAME_MAX_LENGTH, nullable = false)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(name = "userType", nullable = false)
    private UserType userType;

    @Enumerated(EnumType.STRING)
    @Column(name = "propertyType")
    private PropertyType propertyType;

    @OneToMany(mappedBy = "user", targetEntity = Repair.class, fetch = FetchType.EAGER, orphanRemoval = true)
    private List<Repair> repairs;

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("User{");
        sb.append("id=").append(id);
        sb.append(", firstName='").append(firstName).append('\'');
        sb.append(", lastName='").append(lastName).append('\'');
        sb.append(", address='").append(address).append('\'');
        sb.append(", phone='").append(phone).append('\'');
        sb.append(", email='").append(email).append('\'');
        sb.append(", userType='").append(userType).append('\'');
        sb.append(", propertyType='").append(propertyType).append('\'');
        for (Repair repair : repairs) {
            sb.append(", repairId='").append(repair.getId()).append('\'');
        }
        sb.append('}');
        return sb.toString();
    }
}
