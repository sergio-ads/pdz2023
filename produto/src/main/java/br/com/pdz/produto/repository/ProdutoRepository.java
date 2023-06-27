package br.com.pdz.produto.repository;

import br.com.pdz.produto.model.Produto;
import java.util.Optional;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdutoRepository extends MongoRepository<Produto, String> {
    Optional<Produto> findByNome(String nome);
}