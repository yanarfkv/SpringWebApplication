package ru.kpfu.itis.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.kpfu.itis.models.Note;
import ru.kpfu.itis.models.User;

import java.util.List;

@Repository
public interface NoteRepository extends JpaRepository<Note, Long> {

    @Query(value = "select n from Note n where n.user = ?1")
    List<Note> userNotes(User user);

}
