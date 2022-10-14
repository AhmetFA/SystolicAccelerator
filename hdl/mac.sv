//-------------------------------------------------------------------------------
//--Project: SystolicAccelerator
//--File: mac.sv
//--Date: 10.08.2022
//--Engineer : Ahmet Fatih ANKARALI
//--Description:
//-------------------------------------------------------------------------------
module mac (mac_interface mac_if);
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