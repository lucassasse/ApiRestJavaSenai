package com.example.apiRest.controller;

import com.example.apiRest.dto.ProdutoDTO;
import com.example.apiRest.service.ProdutoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/produtos")
@RequiredArgsConstructor
public class ProdutoController {

    private final ProdutoService produtoService;

    @GetMapping
    public ResponseEntity<List<ProdutoDTO>> listarTodos() {
        List<ProdutoDTO> produtos = produtoService.listarTodos();
        return ResponseEntity.ok(produtos);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProdutoDTO> buscarPorId(@PathVariable Long id) {
        return produtoService.buscarPorId(id)
                .map(produto -> ResponseEntity.ok(produto))
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/categoria/{categoriaId}")
    public ResponseEntity<List<ProdutoDTO>> listarPorCategoria(@PathVariable Long categoriaId) {
        List<ProdutoDTO> produtos = produtoService.listarPorCategoria(categoriaId);
        return ResponseEntity.ok(produtos);
    }

    @PostMapping
    public ResponseEntity<ProdutoDTO> criar(@RequestBody ProdutoDTO produtoDTO) {
        return produtoService.criar(produtoDTO)
                .map(produto -> ResponseEntity.status(HttpStatus.CREATED).body(produto))
                .orElse(ResponseEntity.badRequest().build());
    }

    @PutMapping("/{id}")
    public ResponseEntity<ProdutoDTO> atualizar(@PathVariable Long id, @RequestBody ProdutoDTO produtoDTO) {
        return produtoService.atualizar(id, produtoDTO)
                .map(produto -> ResponseEntity.ok(produto))
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable Long id) {
        if (produtoService.excluir(id)) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }
}