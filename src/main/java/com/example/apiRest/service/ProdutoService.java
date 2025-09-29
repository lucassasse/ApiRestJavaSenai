package com.example.apiRest.service;

import com.example.apiRest.dto.ProdutoDTO;
import com.example.apiRest.entity.Categoria;
import com.example.apiRest.entity.Produto;
import com.example.apiRest.repository.CategoriaRepository;
import com.example.apiRest.repository.ProdutoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProdutoService {

    private final ProdutoRepository produtoRepository;
    private final CategoriaRepository categoriaRepository;

    public List<ProdutoDTO> listarTodos() {
        return produtoRepository.findAll()
                .stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    public Optional<ProdutoDTO> buscarPorId(Long id) {
        return produtoRepository.findById(id)
                .map(this::converterParaDTO);
    }

    public List<ProdutoDTO> listarPorCategoria(Long categoriaId) {
        return produtoRepository.findByCategoriaId(categoriaId)
                .stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    public Optional<ProdutoDTO> criar(ProdutoDTO produtoDTO) {
        Optional<Categoria> categoria = categoriaRepository.findById(produtoDTO.getCategoriaId());
        
        if (categoria.isEmpty()) {
            return Optional.empty();
        }

        Produto produto = new Produto();
        produto.setNome(produtoDTO.getNome());
        produto.setDescricao(produtoDTO.getDescricao());
        produto.setPreco(produtoDTO.getPreco());
        produto.setCategoria(categoria.get());

        Produto produtoSalvo = produtoRepository.save(produto);
        return Optional.of(converterParaDTO(produtoSalvo));
    }

    public Optional<ProdutoDTO> atualizar(Long id, ProdutoDTO produtoDTO) {
        Optional<Produto> produtoExistente = produtoRepository.findById(id);
        
        if (produtoExistente.isEmpty()) {
            return Optional.empty();
        }

        Optional<Categoria> categoria = categoriaRepository.findById(produtoDTO.getCategoriaId());
        
        if (categoria.isEmpty()) {
            return Optional.empty();
        }

        Produto produto = produtoExistente.get();
        produto.setNome(produtoDTO.getNome());
        produto.setDescricao(produtoDTO.getDescricao());
        produto.setPreco(produtoDTO.getPreco());
        produto.setCategoria(categoria.get());

        return Optional.of(converterParaDTO(produtoRepository.save(produto)));
    }

    public boolean excluir(Long id) {
        if (produtoRepository.existsById(id)) {
            produtoRepository.deleteById(id);
            return true;
        }
        return false;
    }

    private ProdutoDTO converterParaDTO(Produto produto) {
        return new ProdutoDTO(
                produto.getId(),
                produto.getNome(),
                produto.getDescricao(),
                produto.getPreco(),
                produto.getDataCadastro(),
                produto.getCategoria().getId(),
                produto.getCategoria().getNome()
        );
    }
}