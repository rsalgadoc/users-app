package io.github.rsalgadoc.users.backend.repositories;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import io.github.rsalgadoc.users.backend.entities.User;

public interface UserRepository extends CrudRepository<User, Long>{

    Page<User> findAll(Pageable pageable);

    Optional<User> findByUsername(String name);
}
