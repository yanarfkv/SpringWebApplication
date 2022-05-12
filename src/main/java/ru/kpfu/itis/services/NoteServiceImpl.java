package ru.kpfu.itis.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.dtos.NoteDto;
import ru.kpfu.itis.models.Note;
import ru.kpfu.itis.models.User;
import ru.kpfu.itis.repositories.NoteRepository;
import ru.kpfu.itis.repositories.UserRepository;

import java.util.List;

@Service
public class NoteServiceImpl implements NoteService {

    @Autowired
    private NoteRepository noteRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    public Note addNote(NoteDto noteDto) {
        User user = userRepository.getById(noteDto.getUser_id());
        Note note = Note.builder()
                .text(noteDto.getText())
                .status(noteDto.getStatus())
                .user(user)
                .done(noteDto.getDone())
                .build();
        return noteRepository.save(note);
    }

    @Override
    public List<Note> getNotesByUser(User user) {
        return noteRepository.userNotes(user);
    }
}
