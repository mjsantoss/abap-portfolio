
CLASS zcl_produto DEFINITION.
  PUBLIC SECTION.
    METHODS: criar_produto IMPORTING iv_nome TYPE string,
                              exibir_produto.
  PRIVATE SECTION.
    DATA: mv_nome TYPE string.
ENDCLASS.

CLASS zcl_produto IMPLEMENTATION.
  METHOD criar_produto.
    mv_nome = iv_nome.
  END METHOD.

  METHOD exibir_produto.
    WRITE: / 'Produto: ', mv_nome.
  END METHOD.
ENDCLASS.

DATA: lo_produto TYPE REF TO zcl_produto.

CREATE OBJECT lo_produto.
lo_produto->criar_produto( iv_nome = 'Produto ABC' ).
lo_produto->exibir_produto( ).
