package ru.kpfu.itis.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.kpfu.itis.dtos.NoteDto;
import ru.kpfu.itis.models.Note;
import ru.kpfu.itis.models.User;
import ru.kpfu.itis.services.NoteService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class NotesController {

    private final NoteService noteService;

    @RequestMapping(method = RequestMethod.GET, value = "/notes")
    public ModelAndView getNotes(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        if (authentication == null) {
            modelAndView.setViewName("redirect:/signIn");
            return modelAndView;
        }
        User user = (User) authentication.getPrincipal();
        List<Note> noteList = noteService.getNotesByUser(user);
        modelAndView.addObject("notes", noteList);
        modelAndView.addObject("user", user);
        modelAndView.setViewName("notes");
        return modelAndView;
    }

    @PostMapping( value = "/notes", consumes = "application/json", produces = "application/json" )
    public String addNote(@RequestBody() NoteDto noteDto) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.writeValueAsString(noteService.addNote(noteDto));
    }
}
