package com.projectFuture.propertyRepairWebApp.forms;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.sql.Date;
import java.time.LocalDate;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RepairForm {

    private static final int ADDRESS_MIN_SIZE = 4;
    private static final String ADDRESS_PATTERN = "^[a-zA-Z]*$";
    private static final int DESCRIPTION_MIN_SIZE = 4;
    private static final int DESCRIPTION_MAX_SIZE = 250;
    private static final String COST_PATTERN = "[0-9.]*$";

    @DateTimeFormat(pattern = "yyyy-MM-dd")
//    @NotNull(message = "{repair.repairDate.not.null}")
    private LocalDate repairDate;

    private Status status;

    private Double cost;

    @Pattern(regexp = ADDRESS_PATTERN, message = "{repair.address.pattern.invalid}")
    @Size(min = ADDRESS_MIN_SIZE,  message = "{repair.address.size.invalid}")
    @NotEmpty(message = "{repair.address.not.null}")
    private String address;

    @Pattern(regexp = ADDRESS_PATTERN, message = "{repair.description.pattern.invalid}")
    @Size(min = DESCRIPTION_MIN_SIZE,max= DESCRIPTION_MAX_SIZE,  message = "{repair.description.size.invalid}")
    @NotEmpty(message = "{repair.description.not.null}")
    private String description;

    private RepairType repairType;

}