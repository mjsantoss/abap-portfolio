
DATA: lv_sales_order TYPE vbak-vbeln,
      lt_return TYPE TABLE OF bapiret2,
      ls_order_header TYPE bapisdh1.

ls_order_header-doc_type = 'OR'.  " Tipo de documento de venda
ls_order_header-sold_to = '100000'.  " Cliente sold to

CALL FUNCTION 'BAPI_SALESORDER_CREATEFROMDATA'
  EXPORTING
    order_header_in = ls_order_header
  TABLES
    return = lt_return.

IF sy-subrc = 0.
  COMMIT WORK.
  WRITE: / 'Sales order created successfully!',
         / 'Order Number: ', lv_sales_order.
ELSE.
  LOOP AT lt_return.
    WRITE: / lt_return-message.
  ENDLOOP.
ENDIF.
