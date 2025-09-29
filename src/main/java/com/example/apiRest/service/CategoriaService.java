package com.example.apiRest.service;

import com.example.apiRest.dto.CategoriaDTO;
import com.example.apiRest.entity.Categoria;
import com.example.apiRest.repository.CategoriaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CategoriaService {

    private final CategoriaRepository categoriaRepository;

    public List<CategoriaDTO> listarTodas() {
        return categoriaRepository.findAll()
                .stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    public Optional<CategoriaDTO> buscarPorId(Long id) {
        return categoriaRepository.findById(id)
                .map(this::converterParaDTO);
    }

    public CategoriaDTO criar(CategoriaDTO categoriaDTO) {
        Categoria categoria = new Categoria();
        categoria.setNome(categoriaDTO.getNome());
        categoria.setDescricao(categoriaDTO.getDescricao());

        Categoria categoriaSalva = categoriaRepository.save(categoria);
        return converterParaDTO(categoriaSalva);
    }

    public Optional<CategoriaDTO> atualizar(Long id, CategoriaDTO categoriaDTO) {
        return categoriaRepository.findById(id)
                .map(categoria -> {
                    categoria.setNome(categoriaDTO.getNome());
                    categoria.setDescricao(categoriaDTO.getDescricao());
                    return converterParaDTO(categoriaRepository.save(categoria));
                });
    }

    public boolean excluir(Long id) {
        if (categoriaRepository.existsById(id)) {
            categoriaRepository.deleteById(id);
            return true;
        }
        return false;
    }

    private CategoriaDTO converterParaDTO(Categoria categoria) {
        return new CategoriaDTO(
                categoria.getId(),
                categoria.getNome(),
                categoria.getDescricao()
        );
    }
}