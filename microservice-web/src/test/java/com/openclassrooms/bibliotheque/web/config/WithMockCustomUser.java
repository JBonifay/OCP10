package com.openclassrooms.bibliotheque.web.config;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.springframework.security.test.context.support.WithSecurityContext;

@Retention(RetentionPolicy.RUNTIME)
@WithSecurityContext(factory = UserSecurityContextFactory.class)
public @interface WithMockCustomUser {

    String username() default "username";

    String name() default "name";

    String password() default "password";

}

