//-------------------------------------------------------------------------------
//--Project: SystolicAccelerator
//--File: interfaces.sv
//--Date: 10.08.2022
//--Engineer : Ahmet Fatih ANKARALI
//--Description:
//-------------------------------------------------------------------------------
interface mac_interface(input logic clock_i,               //system clock
                        input logic resetn_i);             //system active low reset;
    t_mac_data a_i;
    t_mac_data b_i;
    t_mac_data x_o;
    t_mac_data y_o;
    t_mac_mul_data c_o;
endinterface

interface mac_array_interface(input logic clock_i,               //system clock
                              input logic resetn_i);             //system active low reset;

    t_mac_data a_rows_i [systolic_size_c];
    t_mac_data b_columns_i [systolic_size_c];
    t_mac_mul_data c_array_o [systolic_size_c][systolic_size_c];
endinterface