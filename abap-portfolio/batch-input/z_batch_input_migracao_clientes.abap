
DATA: lt_migracao TYPE TABLE OF zcliente,
      lv_file TYPE string.

CALL FUNCTION 'BATCH_INPUT_MIGRACAO'
  EXPORTING
    filename = lv_file
  TABLES
    clientes = lt_migracao.

IF sy-subrc = 0.
  WRITE: / 'Migração concluída com sucesso!',
         / 'Clientes migrados:', lines( lt_migracao ).
ENDIF.
