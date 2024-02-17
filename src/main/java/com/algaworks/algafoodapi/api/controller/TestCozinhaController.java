package com.algaworks.algafoodapi.api.controller;


import com.algaworks.algafoodapi.domain.model.Cozinha;
import com.algaworks.algafoodapi.domain.repository.CozinhaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/teste")
public class TestCozinhaController {

    @Autowired
    private CozinhaRepository cozinhaRepository;

    @GetMapping("/cozinhas/list-por-nome")
    public List<Cozinha> cozinhas(String nome) {
        return cozinhaRepository.findNomesBynome(nome);
    }

    @GetMapping("/cozinhas/por-nome")
    public Optional<Cozinha> cozinha(String nome) {
        return cozinhaRepository.nome(nome);
    }

}

