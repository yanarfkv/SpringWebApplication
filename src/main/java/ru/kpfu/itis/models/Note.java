package ru.kpfu.itis.models;

import lombok.*;

import javax.persistence.*;

@Setter
@Getter
@EqualsAndHashCode
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "notes")
public class Note {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "text")
    private String text;

    @Column(name = "status")
    private String status;

    @Column(name = "done")
    private Boolean done;

    @ManyToOne
    private User user;

}
