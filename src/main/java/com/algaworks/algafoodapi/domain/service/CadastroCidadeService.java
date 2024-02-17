package com.algaworks.algafoodapi.domain.service;

import com.algaworks.algafoodapi.domain.exception.EntidadeEmUsoException;
import com.algaworks.algafoodapi.domain.exception.EntidadeNaoEncontradaException;
import com.algaworks.algafoodapi.domain.model.Cidade;
import com.algaworks.algafoodapi.domain.model.Estado;
import com.algaworks.algafoodapi.domain.repository.CidadeRepository;
import com.algaworks.algafoodapi.domain.repository.EstadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CadastroCidadeService {

    @Autowired
    private CidadeRepository cidadeRepository;
    @Autowired
    private EstadoRepository estadoRepository;


    public Cidade salvar(Cidade cidade) {
        Long cidadeId = cidade.getEstado().getId();
        Optional<Estado> estado = estadoRepository.findById(cidadeId);

        if (estado.get() == null) {
            throw new EntidadeNaoEncontradaException(
                    String.format("Não existe cadastro de estado com o código %d", cidadeId));
        }
        cidade.setEstado(estado.get());

        return cidadeRepository.save(cidade);
    }

    public void excluir(Long id) {
        try {
            cidadeRepository.deleteById(id);

        } catch (EmptyResultDataAccessException e) {
            throw new EntidadeNaoEncontradaException(
                    String.format("Não existe um cadastro de cidade para o código %d", id));

        } catch (DataIntegrityViolationException e) {
            throw new EntidadeEmUsoException(
                    String.format("Cidade de código %d não pode ser removida, pois está em uso", id));
        }
    }

}
