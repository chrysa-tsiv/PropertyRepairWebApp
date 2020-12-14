package com.projectFuture.propertyRepairWebApp.model;

import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RepairModel {

    private static final String COST_PATTERN = "[0-9.]*$";
    private static final int ADDRESS_MIN_SIZE = 4;
    private static final String ADDRESS_PATTERN = "^[a-zA-Z ( )]*$";
    private static final int DESCRIPTION_MIN_SIZE = 4;
    private static final int DESCRIPTION_MAX_SIZE = 250;

    private long id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

    private Status status;

    private String cost;

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
