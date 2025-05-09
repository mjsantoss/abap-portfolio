
TABLES: zprodutos.

DATA: lv_produto_id TYPE zprodutos-id,
      lv_produto_nome TYPE zprodutos-nome.

SELECT * FROM zprodutos INTO (lv_produto_id, lv_produto_nome) WHERE id = '1001'.

IF sy-subrc = 0.
  WRITE: / 'Produto encontrado:', lv_produto_nome.
ELSE.
  WRITE: / 'Produto não encontrado.'.
ENDIF.
