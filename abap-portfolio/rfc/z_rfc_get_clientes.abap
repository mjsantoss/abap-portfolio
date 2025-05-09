
DATA: lt_clientes TYPE TABLE OF kna1,
      lv_rfc TYPE string.

CALL FUNCTION 'Z_GET_CLIENTES'
  EXPORTING
    rfc_param = lv_rfc
  TABLES
    clientes = lt_clientes.

IF sy-subrc = 0.
  LOOP AT lt_clientes.
    WRITE: / lt_clientes-name1.
  ENDLOOP.
ENDIF.
