package com.mightyjava.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class FieldValidator implements ConstraintValidator<Validate, String> {
	private int min;
	private int max;
	private String regexp;
	private Pattern pattern;
	private Matcher matcher;

	@Override
	public void initialize(Validate validate) {
		min = validate.min();
		max = validate.max();
		regexp = validate.regexp();
	}

	@Override
	public boolean isValid(String input, ConstraintValidatorContext context) {
		if(input.length() < min) {
			return false;
		}
		if(input.length() > max) {
			return false;
		}
		if(regexp.length() > 1) {
			pattern = Pattern.compile(regexp);
			matcher = pattern.matcher(input);
			if(!matcher.matches()) {
				return false;
			}
		}
		return true;
	}

}
