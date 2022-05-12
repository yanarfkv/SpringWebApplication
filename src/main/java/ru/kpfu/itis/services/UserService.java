package ru.kpfu.itis.services;

import ru.kpfu.itis.dtos.RegistrationDto;
import ru.kpfu.itis.models.User;


public interface UserService {
    void signUp(RegistrationDto registrationDto);
    boolean emailDoesntExist(String email);
}
