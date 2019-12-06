package com.openclassrooms.bibliotheque.zuulserver.repository;

import com.openclassrooms.bibliotheque.zuulserver.bean.JwtToken;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JwtTokenRepository extends JpaRepository<JwtToken, Integer> {

}
