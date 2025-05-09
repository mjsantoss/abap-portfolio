
DATA: lv_url TYPE string,
      lv_response TYPE string.

CALL FUNCTION 'Z_ODATA_CLIENTES'
  EXPORTING
    url = lv_url
  IMPORTING
    response = lv_response.

IF lv_response IS NOT INITIAL.
  WRITE: / 'Dados retornados:', lv_response.
ENDIF.
