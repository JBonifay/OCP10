package com.openclassrooms.bibliotheque.zuulserver.security;

import com.openclassrooms.bibliotheque.zuulserver.bean.auth.MongoUserDetails;
import com.openclassrooms.bibliotheque.zuulserver.bean.auth.Role;
import com.openclassrooms.bibliotheque.zuulserver.bean.auth.User;
import com.openclassrooms.bibliotheque.zuulserver.web.exception.CustomException;
import com.openclassrooms.bibliotheque.zuulserver.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class UserService implements UserDetailsService{

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(email);
        if (user == null || user.getRole() == null || user.getRole().isEmpty()) {
            throw new CustomException("Invalid username or password.", HttpStatus.UNAUTHORIZED);
        }
        String [] authorities = new String[user.getRole().size()];
        int count=0;
        for (Role role : user.getRole()) {
            //NOTE: normally we dont need to add "ROLE_" prefix. Spring does automatically for us.
            //Since we are using custom token using JWT we should add ROLE_ prefix
            authorities[count] = "ROLE_"+role.getRole();
            count++;
        }
        return new MongoUserDetails(user.getEmail(), user.getPassword(), user.getActive(),
                                    user.isLoacked(), user.isExpired(), user.isEnabled(), authorities);
    }



}
