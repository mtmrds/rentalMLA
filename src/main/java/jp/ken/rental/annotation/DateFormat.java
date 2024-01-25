package jp.ken.rental.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import jp.ken.rental.validator.DateFormatValidator;


@Documented
@Constraint(validatedBy = DateFormatValidator.class)
@Target({ ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)

public @interface DateFormat {
	String message() default"";
	Class<?>[] groups() default{};
	Class<? extends Payload>[] payload() default{};
}

