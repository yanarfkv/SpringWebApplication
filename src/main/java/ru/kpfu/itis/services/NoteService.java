package ru.kpfu.itis.services;

import ru.kpfu.itis.dtos.NoteDto;
import ru.kpfu.itis.models.Note;
import ru.kpfu.itis.models.User;

import java.util.List;

public interface NoteService {
    Note addNote(NoteDto noteDto);
    List<Note> getNotesByUser(User user);
}
