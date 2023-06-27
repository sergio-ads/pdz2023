package br.com.pdz.produto;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(
    classes = {ProdutoApplication.class}
)
class ProdutoApplicationTests {
    ProdutoApplicationTests() {
    }

    @Test
    public void contextLoads() {
    }

    @Test
    public void main() {
        ProdutoApplication.main(new String[0]);
    }
}
