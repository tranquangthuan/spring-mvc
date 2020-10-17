package thuan.spring.mvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import thuan.spring.mvc.model.Student;

@Component
public class StudentValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Student.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required.name", "Field name is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "age", "required.age", "Field age is required.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "required.id", "ID is required.");
	}

}
