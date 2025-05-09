
DATA: lv_invoice TYPE vbrk-vbeln,
      lv_output TYPE string.

CALL FUNCTION 'SSF_FUNCTION_MODULE_NAME'
  EXPORTING
    formname = 'Z_IMPRESSAO_NF'
  IMPORTING
    fm_name = lv_invoice.

IF lv_invoice IS NOT INITIAL.
  CALL FUNCTION lv_invoice
    EXPORTING
      invoice_data = lv_invoice_data
    IMPORTING
      invoice_output = lv_output.
  WRITE: / 'Invoice Output: ', lv_output.
ENDIF.
