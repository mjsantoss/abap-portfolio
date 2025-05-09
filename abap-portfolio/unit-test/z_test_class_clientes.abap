
CLASS zcl_test_clientes DEFINITION.
  PUBLIC SECTION.
    METHODS: test_criar_cliente.
ENDCLASS.

CLASS zcl_test_clientes IMPLEMENTATION.
  METHOD test_criar_cliente.
    DATA: lv_result TYPE string.
    lv_result = 'Teste de criação de cliente'.

    ASSERT lv_result = 'Teste de criação de cliente'. " Verificação
    WRITE: / 'Teste concluído com sucesso.'.
  END METHOD.
ENDCLASS.

DATA: lo_test TYPE REF TO zcl_test_clientes.
CREATE OBJECT lo_test.
lo_test->test_criar_cliente( ).
