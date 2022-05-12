package ru.kpfu.itis.models;

import lombok.*;
import ru.kpfu.itis.enums.Gender;

import javax.persistence.*;
import java.util.List;

@Setter
@Getter
@EqualsAndHashCode
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "login")
    private String email;

    @Column(name = "passsword_hash")
    private String passwordHash;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "first_name")
    private String firstName;

    @Enumerated(EnumType.STRING)
    @Column(name = "gender")
    private Gender gender;

    @OneToMany(mappedBy = "user")
    private List<Auth> auth;

    @ManyToMany
    @JoinTable(
            name = "friends",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name="friend_id")
    )
    private List<User> friends;
}
