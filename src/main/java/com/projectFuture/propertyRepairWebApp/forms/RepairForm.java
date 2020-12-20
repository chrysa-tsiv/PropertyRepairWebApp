package com.projectFuture.propertyRepairWebApp.forms;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.*;
import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RepairForm {

    private static final int ADDRESS_MIN_SIZE = 4;
    private static final String ADDRESS_PATTERN = "^[a-zA-Z]*$";
    private static final int DESCRIPTION_MIN_SIZE = 4;
    private static final int DESCRIPTION_MAX_SIZE = 250;
    private static final String COST_PATTERN = "\\d+(\\.\\d+)*";
    public static final String STATUS_PATTERN= "(PENDING|ONGOING|COMPLETED)";
    public static final String REPAIRTYPE_PATTERN= "(PAINTING|INSULATION|FRAMES|PLUMBING|ELECTRICAL_WORKS)";

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "{repair.repairDate.not.null}")
    private LocalDate repairDate;

    @Pattern(regexp = STATUS_PATTERN , message = "{repair.status.pattern.invalid}")
    private String status;

    @Pattern(regexp = COST_PATTERN, message = "{repair.cost.pattern.invalid}")
    @NotNull(message = "{repair.cost.not.null}")
    private String cost;

    @Pattern(regexp = ADDRESS_PATTERN, message = "{repair.address.pattern.invalid}")
    @Size(min = ADDRESS_MIN_SIZE,  message = "{repair.address.size.invalid}")
    @NotEmpty(message = "{repair.address.not.null}")
    private String address;

    @Size(min = DESCRIPTION_MIN_SIZE,max= DESCRIPTION_MAX_SIZE,  message = "{repair.description.size.invalid}")
    @NotEmpty(message = "{repair.description.not.null}")
    private String description;

    @Pattern(regexp = REPAIRTYPE_PATTERN , message = "{repair.repairType.pattern.invalid}")
    private String repairType;

}