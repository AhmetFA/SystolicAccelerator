//-------------------------------------------------------------------------------
//--Project: SystolicAccelerator
//--File: mac_array.sv
//--Date: 10.08.2022
//--Engineer : Ahmet Fatih ANKARALI
//--Description:
//-------------------------------------------------------------------------------
interface mac_array_interface(
    input logic clock_i,               //system clock
    input logic resetn_i               //system active low reset;
    );

    t_mac_data a_rows_i [systolic_size_c];
    t_mac_data b_columns_i [systolic_size_c];
    t_mac_mul_data c_array_o [systolic_size_c][systolic_size_c];

    modport rtl(
        input t_mac_data a_rows_i [systolic_size_c];
        input t_mac_data b_columns_i [systolic_size_c];
        output t_mac_mul_data c_array_o [systolic_size_c][systolic_size_c];
    );
endinterface

module mac_array(mac_array_interface.rtl mac_array_if);

    mac_interface mac_if[systolic_size_c][systolic_size_c];
    
    genvar i,j;
    generate
        for(i=0; i<systolic_size_c; i++) begin
            for(j=0; i<systolic_size_c; i++) begin

            end
        end
    endgenerate

endmodule