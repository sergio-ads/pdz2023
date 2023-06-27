package br.com.pdz.produto.controller;

import br.com.pdz.produto.model.Produto;
import br.com.pdz.produto.model.request.ProdutoRequest;
import br.com.pdz.produto.repository.ProdutoRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.ArgumentMatchers;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@SpringBootTest
@RunWith(MockitoJUnitRunner.class)
@AutoConfigureMockMvc
class ProdutoControllerTest {
    @MockBean
    private ProdutoRepository produtoRepository;
    @Autowired
    private ProdutoController produtoController;
    @Autowired
    private MockMvc mockMvc;

    ProdutoControllerTest() {
    }

    @Test
    public void contextLoads() throws Exception {
        Assertions.assertThat(this.produtoController).isNotNull();
    }

    @Test
    @WithMockUser(
        username = "user"
    )
    public void listarProdutos() throws Exception {
        List<Produto> produtos = new ArrayList();
        Mockito.when(this.produtoRepository.findAll()).thenReturn(produtos);
        this.mockMvc.perform(MockMvcRequestBuilders.get("/produtos", new Object[0])).andExpect(MockMvcResultMatchers.status().isOk());
    }

    @Test
    @WithMockUser(
        username = "user"
    )
    public void obterProdutoPorIdOk() throws Exception {
        Produto produto = new Produto("Carro", "Automóvel", new BigDecimal("2000.0"));
        produto.setId("123");
        Mockito.when(this.produtoRepository.findById("123")).thenReturn(Optional.of(produto));
        this.mockMvc.perform(MockMvcRequestBuilders.get("/produtos/123", new Object[0])).andExpect(MockMvcResultMatchers.status().isOk());
    }

    @Test
    @WithMockUser(
        username = "user"
    )
    public void obterProdutoPorIdNotFound() throws Exception {
        Mockito.when(this.produtoRepository.findById("123")).thenReturn(Optional.empty());
        this.mockMvc.perform(MockMvcRequestBuilders.get("/produtos/123", new Object[0])).andExpect(MockMvcResultMatchers.status().isNotFound());
    }

    @Test
    @WithMockUser(
        username = "admin",
        roles = {"USER", "ADMIN"}
    )
    public void inserirProdutoOk() throws Exception {
        ProdutoRequest produtoRequest = new ProdutoRequest("Carro", "Automóvel", new BigDecimal("2000.0"));
        Produto produto = new Produto(produtoRequest);
        produto.setId("456");
        String jsonRequest = (new ObjectMapper()).writeValueAsString(produtoRequest);
        Mockito.when(this.produtoRepository.findByNome((String)ArgumentMatchers.any(String.class))).thenReturn(Optional.empty());
        Mockito.when((Produto)this.produtoRepository.save((Produto)ArgumentMatchers.any(Produto.class))).thenReturn(produto);
        this.mockMvc.perform(MockMvcRequestBuilders.post("/produtos", new Object[0]).content(jsonRequest).contentType(MediaType.APPLICATION_JSON)).andExpect(MockMvcResultMatchers.status().isCreated()).andExpect(MockMvcResultMatchers.jsonPath("$.nome", new Object[0]).value("Carro")).andExpect(MockMvcResultMatchers.jsonPath("$.descricao", new Object[0]).value("Automóvel")).andExpect(MockMvcResultMatchers.jsonPath("$.preco", new Object[0]).value(new BigDecimal("2000.0")));
    }

    @Test
    @WithMockUser(
        username = "admin",
        roles = {"USER", "ADMIN"}
    )
    public void inserirProduto422() throws Exception {
        ProdutoRequest produtoRequest = new ProdutoRequest("Carro", "Automóvel", new BigDecimal("2000.0"));
        Produto produto = new Produto(produtoRequest);
        produto.setId("456");
        String jsonRequest = (new ObjectMapper()).writeValueAsString(produtoRequest);
        Mockito.when(this.produtoRepository.findByNome((String)ArgumentMatchers.any(String.class))).thenReturn(Optional.of(produto));
        this.mockMvc.perform(MockMvcRequestBuilders.post("/produtos", new Object[0]).content(jsonRequest).contentType(MediaType.APPLICATION_JSON)).andExpect(MockMvcResultMatchers.status().isUnprocessableEntity());
    }

    @Test
    @WithMockUser(
        username = "admin",
        roles = {"USER", "ADMIN"}
    )
    public void alterarProdutoOk() throws Exception {
        ProdutoRequest produtoRequest = new ProdutoRequest("Carro", "Automóvel", new BigDecimal("2000.0"));
        Produto produto = new Produto(produtoRequest);
        produto.setId("135");
        produto.setDescricao("Veículo");
        produtoRequest.setDescricao("Veículo");
        ResponseEntity<Produto> responseEntity = ResponseEntity.ok(produto);
        String jsonRequest = (new ObjectMapper()).writeValueAsString(produtoRequest);
        Mockito.when(this.produtoRepository.findById((String)ArgumentMatchers.any(String.class))).thenReturn(Optional.of(produto));
        Mockito.when((Produto)this.produtoRepository.save((Produto)ArgumentMatchers.any(Produto.class))).thenReturn(produto);
        this.mockMvc.perform(MockMvcRequestBuilders.put("/produtos/135", new Object[0]).content(jsonRequest).contentType(MediaType.APPLICATION_JSON)).andExpect(MockMvcResultMatchers.status().isOk()).andExpect(MockMvcResultMatchers.jsonPath("$.nome", new Object[0]).value("Carro")).andExpect(MockMvcResultMatchers.jsonPath("$.descricao", new Object[0]).value("Veículo")).andExpect(MockMvcResultMatchers.jsonPath("$.preco", new Object[0]).value(new BigDecimal("2000.0")));
    }

    @Test
    @WithMockUser(
        username = "admin",
        roles = {"USER", "ADMIN"}
    )
    public void alterarProduto400() throws Exception {
        ProdutoRequest produtoRequest = new ProdutoRequest("Carro", "Automóvel", new BigDecimal("2000.0"));
        String jsonRequest = (new ObjectMapper()).writeValueAsString(produtoRequest);
        Mockito.when(this.produtoRepository.findById((String)ArgumentMatchers.any(String.class))).thenReturn(Optional.empty());
        this.mockMvc.perform(MockMvcRequestBuilders.put("/produtos/135", new Object[0]).content(jsonRequest).contentType(MediaType.APPLICATION_JSON)).andExpect(MockMvcResultMatchers.status().isBadRequest());
    }

    @Test
    @WithMockUser(
        username = "admin",
        roles = {"USER", "ADMIN"}
    )
    public void apagarProdutoOk() throws Exception {
        ProdutoRequest produtoRequest = new ProdutoRequest("Carro", "Automóvel", new BigDecimal("2000.0"));
        Produto produto = new Produto(produtoRequest);
        produto.setId("135");
        Mockito.when(this.produtoRepository.findById((String)ArgumentMatchers.any(String.class))).thenReturn(Optional.of(produto));
        this.mockMvc.perform(MockMvcRequestBuilders.delete("/produtos/789", new Object[0])).andExpect(MockMvcResultMatchers.status().isOk());
    }

    @Test
    @WithMockUser(
        username = "admin",
        roles = {"USER", "ADMIN"}
    )
    public void apagarProdutoNotFound() throws Exception {
        Mockito.when(this.produtoRepository.findById((String)ArgumentMatchers.any(String.class))).thenReturn(Optional.empty());
        this.mockMvc.perform(MockMvcRequestBuilders.delete("/produtos/789", new Object[0])).andExpect(MockMvcResultMatchers.status().isNotFound());
    }
}
