package ru.kpfu.itis.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.dtos.RegistrationDto;
import ru.kpfu.itis.enums.Gender;
import ru.kpfu.itis.exceptions.UserAlreadyExistException;
import ru.kpfu.itis.models.User;
import ru.kpfu.itis.repositories.UserRepository;


@Service("userService")
public class UsersServicesImpl implements UserService {

    @Autowired
    private UserRepository usersRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @Override
    public void signUp(RegistrationDto userDto) {
        if (!usersRepository.existsByEmail(userDto.getEmail())) {
            User user = User.builder()
                    .lastName(userDto.getLastName())
                    .firstName(userDto.getFirstName())
                    .gender(Gender.valueOf(userDto.getGender()))
                    .email(userDto.getEmail())
                    .passwordHash(passwordEncoder.encode(userDto.getPassword()))
                    .build();
            usersRepository.save(user);
        } else {
            throw new UserAlreadyExistException(String.format("Пользователь с email=%s уже существует", userDto.getEmail()));
        }
    }


    @Override
    public boolean emailDoesntExist(String email) {
        return usersRepository.existsByEmail(email);
    }

}
