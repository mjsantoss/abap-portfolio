
REPORT z_report_clientes_alv.

DATA: lt_clients TYPE TABLE OF kna1,
      lt_fields TYPE TABLE OF fieldcat_alv,
      gv_grid TYPE REF TO cl_gui_alv_grid.

SELECT * FROM kna1 INTO TABLE lt_clients WHERE land1 = 'BR'.

IF sy-subrc = 0.
  LOOP AT lt_clients INTO DATA(client).
    APPEND VALUE #( fieldname = 'NAME1' label = 'Client Name' ) TO lt_fields.
    APPEND VALUE #( fieldname = 'KUNNR' label = 'Client ID' ) TO lt_fields.
  ENDLOOP.

  CREATE OBJECT gv_grid
    EXPORTING
      i_parent = cl_gui_container=>default_screen
    EXCEPTIONS
      others = 1.

  gv_grid->set_table_for_first_display(
    EXPORTING
      i_structure_name = 'KNA1'
      it_fieldcatalog = lt_fields
    CHANGING
      it_outtab = lt_clients
  ).
  gv_grid->refresh_table_display( ).
ENDIF.
