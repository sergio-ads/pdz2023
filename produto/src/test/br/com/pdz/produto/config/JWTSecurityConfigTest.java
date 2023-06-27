package br.com.pdz.produto.config;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.impl.DefaultClaims;
import java.time.Instant;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationConverter;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;

@SpringBootTest
@RunWith(MockitoJUnitRunner.class)
@AutoConfigureMockMvc
class JWTSecurityConfigTest {
    @Autowired
    JwtAuthenticationConverter jwtAuthenticationConverter;

    JWTSecurityConfigTest() {
    }

    @Test
    public void testWithRoles() {
        Map<String, Object> headers = new HashMap();
        Claims claims = new DefaultClaims();
        headers.put("alg", "RS256");
        claims.put("realm_access", Map.of("roles", List.of("user", "admin")));
        Jwt jwt = new Jwt("token", Instant.now(), Instant.now().plusSeconds(3600L), headers, claims);
        AbstractAuthenticationToken convert = this.jwtAuthenticationConverter.convert(jwt);
        Assertions.assertNotNull(convert);
        Assertions.assertEquals(convert.getClass(), JwtAuthenticationToken.class);
        Collection<GrantedAuthority> authorities = convert.getAuthorities();
        Assertions.assertFalse(authorities.isEmpty());
        Assertions.assertNotNull(authorities);
        Assertions.assertEquals(2, authorities.size());
        Assertions.assertTrue(authorities.contains(new SimpleGrantedAuthority("ROLE_USER")));
        Assertions.assertTrue(authorities.contains(new SimpleGrantedAuthority("ROLE_ADMIN")));
    }

    @Test
    public void testWithoutRoles() {
        Map<String, Object> headers = new HashMap();
        Claims claims = new DefaultClaims();
        headers.put("alg", "RS256");
        claims.put("teste", List.of());
        Jwt jwt = new Jwt("token", Instant.now(), Instant.now().plusSeconds(3600L), headers, claims);
        Collection<GrantedAuthority> authorities = this.jwtAuthenticationConverter.convert(jwt).getAuthorities();
        Assertions.assertTrue(authorities.isEmpty());
    }
}
