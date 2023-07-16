*&---------------------------------------------------------------------*
*& Report ZSU_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsu_demo.


CLASS zcl_zsu_demo DEFINITION PUBLIC IN classpool g_zsu_demo.

ENDCLASS.

CLASS zcl_zsu_demo IMPLEMENTATION.

  METHOD zif_abap2ui5_app~main.

    " Create the input screen.

    CREATE OBJECT: iw_input_screen.

    " Set the title of the input screen.

    iw_input_screen->set_title( 'ABAP2UI5 Demo' ).

    " Add the user field to the input screen.

    iw_input_screen->add_field( 'User', 'User Name' ).

    " Add the date field to the input screen.

    iw_input_screen->add_field( 'Date', 'Date' ).

    " Add the post button to the input screen.

    iw_input_screen->add_button( 'Post' ).

    " Display the input screen.

    iw_input_screen->display( ).

    " Wait for the user to click the post button.

    iw_input_screen->wait_for_button_click( ).

    " Get the values from the input fields.

    user = iw_input_screen->get_value( 'User' ).

    date = iw_input_screen->get_value( 'Date' ).

    " Send the values to the server.

    send_values_to_server( user, date ).

  ENDMETHOD.

  METHOD send_values_to_server.

    " TODO: Implement this method to send the values to the server.

  ENDMETHOD.

ENDCLASS.
