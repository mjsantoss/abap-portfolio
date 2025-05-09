
* Implementação de um user-exit para validar os dados da ordem de venda
DATA: lv_customer TYPE kna1-kunnr,
      lv_order TYPE vbak-vbeln.

CALL FUNCTION 'EXIT_SAPLVEDA_001'
  EXPORTING
    sales_order = vbak-vbeln
  IMPORTING
    customer = lv_customer.

IF lv_customer IS INITIAL.
  MESSAGE 'Customer not found' TYPE 'E'.
ELSE.
  WRITE: / 'Customer found:', lv_customer.
ENDIF.
