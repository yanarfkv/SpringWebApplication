package ru.kpfu.itis.dtos;

import lombok.*;

@Setter
@Getter
@EqualsAndHashCode
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class NoteDto {
    private String text;
    private String status;
    private Long user_id;
    private Boolean done = Boolean.FALSE;
}
