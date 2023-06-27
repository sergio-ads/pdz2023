package br.com.pdz.produto;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@SpringBootApplication
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(
    prePostEnabled = true,
    securedEnabled = true,
    jsr250Enabled = true
)
@OpenAPIDefinition(
    info = @Info(
    title = "PDZ Produtos API",
    version = "1.0",
    description = "Resource server de produtos"
)
)
public class ProdutoApplication {
    public ProdutoApplication() {
    }

    public static void main(String[] args) {
        SpringApplication.run(ProdutoApplication.class, args);
    }
}
