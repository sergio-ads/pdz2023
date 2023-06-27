package br.com.pdz.produto.model;

import br.com.pdz.produto.model.request.ProdutoRequest;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.math.BigDecimal;

@Document
public class Produto {

    @Id
    private String id;
    private String nome;
    private String descricao;
    private BigDecimal preco;

    @Deprecated
    public Produto() {
    }

    public Produto(String nome, String descricao, BigDecimal preco) {
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;
    }

    public Produto(ProdutoRequest produtoRequest) {
        this.nome = produtoRequest.getNome();
        this.descricao = produtoRequest.getDescricao();
        this.preco = produtoRequest.getPreco();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public BigDecimal getPreco() {
        return preco;
    }

    public void setPreco(BigDecimal preco) {
        this.preco = preco;
    }
}