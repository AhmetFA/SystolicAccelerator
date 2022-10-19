//-------------------------------------------------------------------------------
//--Project: SystolicAccelerator
//--File: interfaces.sv
//--Date: 10.08.2022
//--Engineer : Ahmet Fatih ANKARALI
//--Description:
//-------------------------------------------------------------------------------
interface shift_register_interface 
    (
    input logic clock_i,               //system clock
    input logic resetn_i               //system active low reset
    );
    
    t_mac_data data_i;
    t_mac_data data_o;

    modport rtl(
        input t_mac_data data_i,
        output t_mac_data data_o
    );
endinterface

module shift_register #(
    parameter length_c = 1
    )(
        shift_register_interface.rtl c
    );

    t_mac_data register_s [length_c];

    assign data_o = register_s[length_c-1];

    always @(posedge shift_register_if.clock_i) begin
        if (shift_register_if.resetn_i == 0) begin
            register_s <= '{default: 0};
        end else begin
            register_s[0] = data_i;
            generate
                if (length_c > 1) begin
                    for (int i = 1; i < length_c; i++)
                            register_s[i] = register_s[i-1];
                end
            endgenerate
        end
    end
endmodule