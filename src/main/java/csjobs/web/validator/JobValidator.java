package csjobs.web.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import csjobs.model.User;
import csjobs.model.dao.UserDao;

@Component
public class JobValidator implements Validator {

    @Autowired
    private UserDao userDao;

    @Override
    public boolean supports( Class<?> clazz )
    {
        return User.class.isAssignableFrom( clazz );
    }

    @Override
    public void validate( Object target, Errors errors )
    {
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "title",
            "error.field.title" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "description",
            "error.field.description" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "publishDate",
            "error.field.publishDate" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "closeDate",
            "error.field.closeDate" );
//        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "firstName",
//            "error.field.empty" );
//        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "phone",
//            "error.field.empty" );
//        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "address",
//            "error.field.empty" );

        
    }

}
