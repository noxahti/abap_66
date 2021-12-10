*&---------------------------------------------------------------------*
*& Report ZNOX_ABAP_GIT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT znox_abap_git.

PARAMETERS: p_type TYPE vbtypl.


START-OF-SELECTION.

SELECT * FROM znox_vbak_v( p_vbtyp = @p_type )
  INTO TABLE @DATA(i_sales_order).

  IF sy-subrc IS INITIAL.

    CALL METHOD cl_demo_output=>display
      EXPORTING
        data = i_sales_order
        name = 'CDS TEST'.

  ENDIF.
