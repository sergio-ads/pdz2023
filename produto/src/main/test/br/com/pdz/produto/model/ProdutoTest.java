package br.com.pdz.produto.model;

import br.com.pdz.produto.model.request.ProdutoRequest;
import br.com.pdz.produto.model.response.ProdutoResponse;
import java.math.BigDecimal;
import java.util.UUID;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProdutoTest {
    ProdutoTest() {
    }

    @Test
    public void criarProduto() {
        new Produto("Chinela", "Teste", new BigDecimal("25.0"));
    }

    @Test
    public void criarEVerificarProduto() {
        Produto produto = new Produto();
        String uuid = UUID.randomUUID().toString();
        produto.setId(uuid);
        produto.setNome("Chinela");
        produto.setDescricao("Teste");
        produto.setPreco(new BigDecimal("25.0"));
        Assertions.assertEquals(produto.getId(), uuid);
        Assertions.assertEquals(produto.getNome(), "Chinela");
        Assertions.assertEquals(produto.getDescricao(), "Teste");
        Assertions.assertEquals(produto.getPreco(), new BigDecimal("25.0"));
    }

    @Test
    public void criarProdutoPorRequest() {
        ProdutoRequest produtoRequest = new ProdutoRequest("Chinela", "Teste", new BigDecimal("25.0"));
        new Produto(produtoRequest);
    }

    @Test
    public void criarProdutoResponse() {
        Produto produto = new Produto("Chinela", "Teste", new BigDecimal("25.0"));
        new ProdutoResponse(produto);
    }

    @Test
    public void criarEVerificarProdutoRequest() {
        ProdutoRequest produtoRequest = new ProdutoRequest();
        produtoRequest.setNome("Chinela");
        produtoRequest.setDescricao("Teste");
        produtoRequest.setPreco(new BigDecimal("25.0"));
        Assertions.assertEquals(produtoRequest.getNome(), "Chinela");
        Assertions.assertEquals(produtoRequest.getDescricao(), "Teste");
        Assertions.assertEquals(produtoRequest.getPreco(), new BigDecimal("25.0"));
    }

    @Test
    public void criarEVerificarProdutoResponse() {
        ProdutoResponse produtoResponse = new ProdutoResponse();
        produtoResponse.setNome("Chinela");
        produtoResponse.setDescricao("Teste");
        produtoResponse.setPreco(new BigDecimal("25.0"));
        Assertions.assertEquals(produtoResponse.getNome(), "Chinela");
        Assertions.assertEquals(produtoResponse.getDescricao(), "Teste");
        Assertions.assertEquals(produtoResponse.getPreco(), new BigDecimal("25.0"));
    }
}
