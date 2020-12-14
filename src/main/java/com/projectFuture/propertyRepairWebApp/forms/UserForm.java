package com.projectFuture.propertyRepairWebApp.forms;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserForm {

    private static final String NAME_PATTERN = "^[a-zA-Z]*$";
    private static final String ADDRESS_PATTERN = "^[a-zA-Z0-9 ]*$";
    private static final String PASSWORD_PATTERN = "^[a-zA-Z0-9@#$%^&]*$";
    private static final String MAIL_PATTERN = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,63}$";
    private static final String PHONE_PATTERN = "^((\\+)\\d{2}|(00)\\d{2})?\\d{10}$";//"^(\\+\\d{1,2}\\s)?\\(?\\d{3}\\)?[\\s.-]?\\d{3}[\\s.-]?\\d{4}$";
    private static final String PROPERTYTYPE_PATTERN = "(DETACHED_HOUSE|MAISONETTE|BLOCK_OF_FLATS)";

    private static final int VAT_SIZE = 9;
    private static final int NAME_MIN_SIZE = 4;
    private static final int NAME_MAX_SIZE = 50;
    private static final int ADDRESS_MAX_SIZE = 120;
    private static final int PASSWORD_MIN_SIZE = 6;
    private static final int PASSWORD_MAX_SIZE = 50;
    private static final int PHONE_MIN_SIZE = 10;
    private static final int PHONE_MAX_SIZE = 14;

    @Digits(integer = 9, fraction = 0,message = "{register.vat.digits.invalid}")
    @Size(min = VAT_SIZE, max = VAT_SIZE, message = "{register.vat.size.invalid}")
    @NotEmpty(message = "{register.vat.not.null}")
    private String vat;

    @Pattern(regexp = NAME_PATTERN, message = "{register.firstname.pattern.invalid}")
    @Size(min = NAME_MIN_SIZE, max = NAME_MAX_SIZE, message = "{register.firstname.size.invalid}")
    @NotEmpty(message = "{register.firstname.not.null}")
    private String firstName;

    @Pattern(regexp = NAME_PATTERN, message = "{register.lastname.pattern.invalid}")
    @Size(min = NAME_MIN_SIZE, max = NAME_MAX_SIZE, message = "{register.lastname.size.invalid}")
    @NotEmpty(message = "{register.lastname.not.null}")
    private String lastName;

    @Pattern(regexp = ADDRESS_PATTERN, message = "{register.address.pattern.invalid}")
    @Size(min = NAME_MIN_SIZE, max = ADDRESS_MAX_SIZE, message = "{register.address.size.invalid}")
    @NotEmpty(message = "{register.address.not.null}")
    private String address;

    @Pattern(regexp = PHONE_PATTERN, message = "{register.phone.pattern.invalid}")
    @Size(min = PHONE_MIN_SIZE, max = PHONE_MAX_SIZE, message = "{register.phone.size.invalid}")
    @NotEmpty(message = "{register.phone.not.null}")
    private String phone;

    @Pattern(regexp = MAIL_PATTERN, message = "{register.email.pattern.invalid}")
    @NotEmpty(message = "{register.email.not.null}")
    private String email;

    @Pattern(regexp = PASSWORD_PATTERN, message = "{register.password.pattern.invalid}")
    @Size(min = PASSWORD_MIN_SIZE, max = PASSWORD_MAX_SIZE, message = "{register.password.size.invalid}")
    @NotEmpty(message = "{register.password.not.null}")
    private String password;

    @Pattern(regexp = PROPERTYTYPE_PATTERN, message = "{register.propertyType.pattern.invalid}")
    @NotEmpty(message = "{register.propertyType.not.null}")
    private String propertyType;
}
