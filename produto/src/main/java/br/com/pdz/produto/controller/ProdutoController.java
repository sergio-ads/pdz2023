package br.com.pdz.produto.controller;

import br.com.pdz.produto.model.Produto;
import br.com.pdz.produto.model.request.ProdutoRequest;
import br.com.pdz.produto.model.response.ProdutoResponse;
import br.com.pdz.produto.repository.ProdutoRepository;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/produtos")
public class ProdutoController {
    private final ProdutoRepository produtoRepository;

    public ProdutoController(ProdutoRepository produtoRepository) {
        this.produtoRepository = produtoRepository;
    }

    @GetMapping
    @Cacheable("listaDeProdutos")
    public ResponseEntity<List<Produto>> listarProdutos() {
        List<Produto> produtos = produtoRepository.findAll();
        return ResponseEntity.ok(produtos);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProdutoResponse> obterProdutoPorId(@PathVariable String id) {
        try {
            Produto produto = produtoRepository.findById(id).get();
            return ResponseEntity.ok(new ProdutoResponse(produto));
        } catch (Exception e) {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    @Secured("ROLE_ADMIN")
    @CacheEvict(value = "listaDeProdutos", allEntries = true)
    public ResponseEntity<Produto> inserirProduto(@RequestBody @Valid ProdutoRequest produtoRequest) {
        Optional<Produto> produtoProvavel = produtoRepository.findByNome(produtoRequest.getNome());

        if (produtoProvavel.isEmpty()) {
            Produto produto = new Produto(produtoRequest);

            produtoRepository.save(produto);
            return ResponseEntity.status(HttpStatus.CREATED).body(produto);
        } else {
            return ResponseEntity.unprocessableEntity().build();
        }
    }

    @PutMapping("/{id}")
    @Secured("ROLE_ADMIN")
    @CacheEvict(value = "listaDeProdutos", allEntries = true)
    public ResponseEntity<Produto> alterarProduto(@RequestBody @Valid ProdutoRequest produtoRequest, @PathVariable String id) {
        try {
            Produto produto = produtoRepository.findById(id).get();

            produto.setNome(produtoRequest.getNome());
            produto.setDescricao(produtoRequest.getDescricao());
            produto.setPreco(produtoRequest.getPreco());

            produtoRepository.save(produto);
            return ResponseEntity.ok(produto);
        } catch (Exception e) {
            return ResponseEntity.badRequest().build();
        }
    }

    @DeleteMapping("/{id}")
    @Secured("ROLE_ADMIN")
    @CacheEvict(value = "listaDeProdutos", allEntries = true)
    public ResponseEntity<?> apagarProduto(@PathVariable String id) {
        Optional<Produto> produtoProvavel = produtoRepository.findById(id);

        if (produtoProvavel.isPresent()) {
            produtoRepository.delete(produtoProvavel.get());
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

}
