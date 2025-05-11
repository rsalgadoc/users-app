package io.github.rsalgadoc.users.backend.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import io.github.rsalgadoc.users.backend.entities.Role;

public interface RoleRepository extends CrudRepository<Role, Long>{

    Optional<Role> findByName(String name);

}
