//-------------------------------------------------------------------------------
//--Project: SystolicAccelerator
//--File: systolic_pkg.svh
//--Date: 10.08.2022
//--Engineer : Ahmet Fatih ANKARALI
//--Description:
//-------------------------------------------------------------------------------
package systolic_pkg;

    parameter int data_width_c = 8;
    parameter int systolic_size_c = 4;

    typedef logic [data_width_c-1 : 0] t_mac_data;         //mac input/output type
    typedef t_mac_data [1:0]  t_mac_mul_data;              //mac multiplication output type

endpackage: systolic_pkg