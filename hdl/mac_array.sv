//-------------------------------------------------------------------------------
//--Project: SystolicAccelerator
//--File: mac_array.sv
//--Date: 10.08.2022
//--Engineer : Ahmet Fatih ANKARALI
//--Description:
//-------------------------------------------------------------------------------
module mac_array(mac_array_interface mac_array_if);

    mac_interface mac_if[systolic_size_c][systolic_size_c];
    
    genvar i,j;
    generate

    endgenerate

endmodule