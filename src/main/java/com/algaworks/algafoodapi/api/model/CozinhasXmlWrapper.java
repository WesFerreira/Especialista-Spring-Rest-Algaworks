package com.algaworks.algafoodapi.api.model;

import com.algaworks.algafoodapi.domain.model.Cozinha;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlElementWrapper;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlRootElement;
import lombok.Data;
import lombok.NonNull;

import java.util.List;

@JacksonXmlRootElement(localName = "cozinhas")
@Data
public class CozinhasXmlWrapper {

    @NonNull //dizendo que a propriedade é obrigatória, para gerar construtor
    @JacksonXmlElementWrapper(useWrapping = false)
    @JsonProperty("cozinha")
    private List<Cozinha> cozinhas;

}
