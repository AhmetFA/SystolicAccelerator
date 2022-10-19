//-------------------------------------------------------------------------------
//--Project: SystolicAccelerator
//--File: mac.sv
//--Date: 10.08.2022
//--Engineer : Ahmet Fatih ANKARALI
//--Description:
//-------------------------------------------------------------------------------
interface mac_interface(
    input logic clock_i,               //system clock
    input logic resetn_i               //system active low reset;
    );

    t_mac_data a_i;
    t_mac_data b_i;
    t_mac_data x_o;
    t_mac_data y_o;
    t_mac_mul_data c_o;

    modport rtl(
        input t_mac_data a_i,
        input t_mac_data b_i,
        output t_mac_data x_o,
        output t_mac_data y_o,
        output t_mac_mul_data c_o
    );
endinterface

module mac (mac_interface.rtl mac_if);
    always @ (posedge mac_if.clock_i) begin
        if (mac_if.resetn_i == 0) begin
            mac_if.x_o <= 0;
            mac_if.y_o <= 0;
            mac_if.c_o <= 0;
        end else begin
            mac_if.x_o <= mac_if.a_i;
            mac_if.y_o <= mac_if.b_i;
            mac_if.c_o <= mac_if.a_i*mac_if.b_i;
        end
    end
endmodule