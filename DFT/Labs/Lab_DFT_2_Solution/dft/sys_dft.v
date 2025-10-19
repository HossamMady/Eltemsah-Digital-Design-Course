/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jul 29 23:14:43 2024
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n3), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n5), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n4), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n6), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n7), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n2), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n1), .CI(
        \u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n4), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n3), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n3), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n4), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n4), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n6), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n5), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n5), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n5), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n5), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n6), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n6), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n6), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n6), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n7), .CI(
        \u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n7), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n7), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n7), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n7), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n7), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n2), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX8M U1 ( .A(b[0]), .Y(n8) );
  NOR2X4M U2 ( .A(b[6]), .B(b[7]), .Y(n11) );
  AND3X4M U3 ( .A(n11), .B(n3), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  CLKAND2X4M U4 ( .A(\u_div/CryTmp[4][4] ), .B(n10), .Y(quotient[4]) );
  CLKAND2X4M U5 ( .A(\u_div/CryTmp[2][6] ), .B(n11), .Y(quotient[2]) );
  CLKAND2X4M U6 ( .A(\u_div/CryTmp[1][7] ), .B(n1), .Y(quotient[1]) );
  AND2X2M U7 ( .A(\u_div/CryTmp[5][3] ), .B(n9), .Y(quotient[5]) );
  MX2X1M U8 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X1M U9 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U10 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U11 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U12 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X1M U14 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U15 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U16 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U17 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U18 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2X1M U19 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U20 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U21 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  AND3X2M U22 ( .A(n9), .B(n6), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X2M U23 ( .A(n10), .B(n5), .Y(n9) );
  INVX4M U24 ( .A(b[1]), .Y(n7) );
  INVX4M U25 ( .A(b[2]), .Y(n6) );
  OR2X2M U26 ( .A(a[7]), .B(n8), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U27 ( .A(n8), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U28 ( .A(n8), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U29 ( .A(n8), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U30 ( .A(n8), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U31 ( .A(n8), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U32 ( .A(n8), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X2M U33 ( .A(a[5]), .B(n8), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U34 ( .A(a[4]), .B(n8), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U35 ( .A(a[3]), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U36 ( .A(a[2]), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U37 ( .A(a[1]), .B(n8), .Y(\u_div/CryTmp[1][1] ) );
  NAND2BX2M U38 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U39 ( .A(a[6]), .B(n8), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U40 ( .A(b[6]), .Y(n2) );
  XNOR2X2M U41 ( .A(n8), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX4M U42 ( .A(b[3]), .Y(n5) );
  INVX4M U43 ( .A(b[4]), .Y(n4) );
  INVX4M U44 ( .A(b[5]), .Y(n3) );
  INVX2M U45 ( .A(b[7]), .Y(n1) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U48 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U50 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U56 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U58 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U59 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U60 ( .A(\u_div/CryTmp[7][1] ), .B(n9), .C(n7), .D(n6), .Y(
        quotient[7]) );
  AND3X1M U61 ( .A(n11), .B(n4), .C(n3), .Y(n10) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [8:0] carry;

  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3XLM U2_7 ( .A(A[7]), .B(n1), .C(carry[7]), .Y(DIFF[7]) );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n2) );
  XNOR2X2M U2 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n8) );
  INVX2M U4 ( .A(B[7]), .Y(n1) );
  INVX2M U5 ( .A(B[1]), .Y(n7) );
  OR2X2M U6 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  INVX2M U7 ( .A(B[3]), .Y(n5) );
  INVX2M U8 ( .A(B[4]), .Y(n4) );
  INVX2M U9 ( .A(B[5]), .Y(n3) );
  INVX2M U10 ( .A(B[2]), .Y(n6) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XLM U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][0] , \ab[6][1] , \ab[6][0] , \ab[5][2] , \ab[5][1] ,
         \ab[5][0] , \ab[4][3] , \ab[4][2] , \ab[4][1] , \ab[4][0] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][5] , \ab[2][4] , \ab[2][3] , \ab[2][2] , \ab[2][1] ,
         \ab[2][0] , \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][3] ,
         \ab[1][2] , \ab[1][1] , \ab[1][0] , \ab[0][7] , \ab[0][6] ,
         \ab[0][5] , \ab[0][4] , \ab[0][3] , \ab[0][2] , \ab[0][1] ,
         \CARRYB[6][0] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][3] , \CARRYB[3][2] ,
         \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][4] , \CARRYB[2][3] ,
         \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] , \SUMB[6][1] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] ,
         \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] ,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(PRODUCT[6]) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(PRODUCT[5]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(PRODUCT[4]) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(PRODUCT[3]) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(PRODUCT[2]) );
  XOR3XLM S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .Y(
        \SUMB[6][1] ) );
  XOR3XLM S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .Y(
        PRODUCT[7]) );
  XOR3XLM S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .Y(
        \SUMB[4][3] ) );
  XOR3XLM S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .Y(
        \SUMB[5][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  XOR3XLM S2_2_5 ( .A(\ab[2][5] ), .B(n8), .C(\SUMB[1][6] ), .Y(\SUMB[2][5] )
         );
  XOR3XLM S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .Y(
        \SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  NOR2X2M U7 ( .A(n9), .B(n23), .Y(\ab[0][6] ) );
  NOR2X2M U8 ( .A(n12), .B(n23), .Y(\ab[0][3] ) );
  NOR2X2M U9 ( .A(n13), .B(n23), .Y(\ab[0][2] ) );
  NOR2X2M U10 ( .A(n11), .B(n23), .Y(\ab[0][4] ) );
  NOR2X2M U11 ( .A(n10), .B(n23), .Y(\ab[0][5] ) );
  NOR2X2M U12 ( .A(n14), .B(n23), .Y(\ab[0][1] ) );
  NOR2X2M U13 ( .A(n12), .B(n22), .Y(\ab[1][3] ) );
  NOR2X2M U14 ( .A(n11), .B(n22), .Y(\ab[1][4] ) );
  NOR2X2M U15 ( .A(n13), .B(n22), .Y(\ab[1][2] ) );
  NOR2X2M U16 ( .A(n14), .B(n22), .Y(\ab[1][1] ) );
  NOR2X2M U17 ( .A(n15), .B(n22), .Y(\ab[1][0] ) );
  CLKXOR2X2M U18 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  NOR2X2M U19 ( .A(n10), .B(n22), .Y(\ab[1][5] ) );
  INVX4M U20 ( .A(A[1]), .Y(n22) );
  AND2X2M U21 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  INVX4M U22 ( .A(A[3]), .Y(n20) );
  XOR2X1M U23 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX2M U24 ( .A(A[4]), .Y(n19) );
  INVX2M U25 ( .A(A[5]), .Y(n18) );
  INVX2M U26 ( .A(A[6]), .Y(n17) );
  INVX4M U27 ( .A(A[0]), .Y(n23) );
  XOR2X1M U28 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1M U29 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U30 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U31 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  INVX2M U32 ( .A(A[7]), .Y(n16) );
  XOR2X1M U33 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX2M U34 ( .A(B[6]), .Y(n9) );
  INVX4M U35 ( .A(A[2]), .Y(n21) );
  INVX4M U36 ( .A(B[0]), .Y(n15) );
  INVX4M U37 ( .A(B[1]), .Y(n14) );
  INVX4M U38 ( .A(B[2]), .Y(n13) );
  INVX4M U39 ( .A(B[3]), .Y(n12) );
  INVX2M U40 ( .A(B[4]), .Y(n11) );
  INVX2M U41 ( .A(B[5]), .Y(n10) );
  NOR2BX2M U42 ( .AN(B[7]), .B(n23), .Y(\ab[0][7] ) );
  NOR2X1M U43 ( .A(n16), .B(n15), .Y(\ab[7][0] ) );
  NOR2X1M U44 ( .A(n14), .B(n17), .Y(\ab[6][1] ) );
  NOR2X1M U45 ( .A(n15), .B(n17), .Y(\ab[6][0] ) );
  NOR2X1M U46 ( .A(n13), .B(n18), .Y(\ab[5][2] ) );
  NOR2X1M U47 ( .A(n14), .B(n18), .Y(\ab[5][1] ) );
  NOR2X1M U48 ( .A(n15), .B(n18), .Y(\ab[5][0] ) );
  NOR2X1M U49 ( .A(n12), .B(n19), .Y(\ab[4][3] ) );
  NOR2X1M U50 ( .A(n13), .B(n19), .Y(\ab[4][2] ) );
  NOR2X1M U51 ( .A(n14), .B(n19), .Y(\ab[4][1] ) );
  NOR2X1M U52 ( .A(n15), .B(n19), .Y(\ab[4][0] ) );
  NOR2X1M U53 ( .A(n11), .B(n20), .Y(\ab[3][4] ) );
  NOR2X1M U54 ( .A(n12), .B(n20), .Y(\ab[3][3] ) );
  NOR2X1M U55 ( .A(n13), .B(n20), .Y(\ab[3][2] ) );
  NOR2X1M U56 ( .A(n14), .B(n20), .Y(\ab[3][1] ) );
  NOR2X1M U57 ( .A(n15), .B(n20), .Y(\ab[3][0] ) );
  NOR2X1M U58 ( .A(n10), .B(n21), .Y(\ab[2][5] ) );
  NOR2X1M U59 ( .A(n11), .B(n21), .Y(\ab[2][4] ) );
  NOR2X1M U60 ( .A(n12), .B(n21), .Y(\ab[2][3] ) );
  NOR2X1M U61 ( .A(n13), .B(n21), .Y(\ab[2][2] ) );
  NOR2X1M U62 ( .A(n14), .B(n21), .Y(\ab[2][1] ) );
  NOR2X1M U63 ( .A(n15), .B(n21), .Y(\ab[2][0] ) );
  NOR2X1M U64 ( .A(n9), .B(n22), .Y(\ab[1][6] ) );
  NOR2X1M U65 ( .A(n15), .B(n23), .Y(PRODUCT[0]) );
endmodule


module ALU_test_1 ( A, B, ALU_FUN, CLK, RST, Enable, ALU_OUT, OUT_VALID, 
        test_si2, test_si1, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [7:0] ALU_OUT;
  input CLK, RST, Enable, test_si2, test_si1, test_se;
  output OUT_VALID;
  wire   n12, n13, n14, n15, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N147, N148, N149, n39, n40, n41, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n3, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n42, n43, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n181, n182, n183,
         n184, n185, n186, n187, n4, n6, n8, n10;
  wire   [7:0] ALU_OUT_Comb;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  NAND3BX4M U60 ( .AN(n91), .B(n174), .C(ALU_FUN[3]), .Y(n47) );
  INVX4M U7 ( .A(ALU_FUN[1]), .Y(n173) );
  NAND2BX4M U15 ( .AN(ALU_FUN[3]), .B(n174), .Y(n101) );
  NAND2BX2M U16 ( .AN(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n107) );
  NOR3X6M U17 ( .A(n173), .B(ALU_FUN[2]), .C(n101), .Y(n52) );
  INVX4M U18 ( .A(n27), .Y(n119) );
  CLKINVX1M U19 ( .A(A[6]), .Y(n112) );
  INVX8M U21 ( .A(n3), .Y(OUT_VALID) );
  BUFX4M U31 ( .A(n50), .Y(n23) );
  OAI21X2M U32 ( .A0(n101), .A1(n102), .B0(n103), .Y(n50) );
  XNOR2X4M U33 ( .A(n114), .B(n29), .Y(n145) );
  BUFX4M U34 ( .A(n51), .Y(n24) );
  NOR3X2M U35 ( .A(n173), .B(ALU_FUN[2]), .C(n107), .Y(n51) );
  BUFX4M U36 ( .A(n49), .Y(n25) );
  OAI21X2M U37 ( .A0(n91), .A1(n107), .B0(n103), .Y(n49) );
  OAI31X2M U38 ( .A0(n138), .A1(n129), .A2(n128), .B0(n139), .Y(n131) );
  AOI211X2M U39 ( .A0(n33), .A1(n155), .B0(n135), .C0(n127), .Y(n128) );
  NOR3X12M U40 ( .A(n173), .B(ALU_FUN[2]), .C(n101), .Y(n26) );
  AOI222X2M U41 ( .A0(N108), .A1(n52), .B0(n33), .B1(n119), .C0(N116), .C1(n24), .Y(n87) );
  AOI222X2M U42 ( .A0(N109), .A1(n52), .B0(n34), .B1(n118), .C0(N117), .C1(n24), .Y(n80) );
  AOI222X2M U43 ( .A0(N112), .A1(n52), .B0(n111), .B1(n119), .C0(N120), .C1(
        n24), .Y(n62) );
  AOI222X2M U44 ( .A0(N110), .A1(n26), .B0(n37), .B1(n119), .C0(N118), .C1(n24), .Y(n74) );
  AOI222X2M U45 ( .A0(N111), .A1(n26), .B0(n43), .B1(n118), .C0(N119), .C1(n24), .Y(n68) );
  OAI21X2M U46 ( .A0(n148), .A1(n133), .B0(n149), .Y(N149) );
  OR2X1M U47 ( .A(n102), .B(n107), .Y(n27) );
  OR2X1M U48 ( .A(n101), .B(n91), .Y(n28) );
  AOI31X1M U49 ( .A0(n86), .A1(n87), .A2(n88), .B0(n175), .Y(ALU_OUT_Comb[1])
         );
  NOR2X2M U50 ( .A(n156), .B(n34), .Y(n129) );
  AOI211X2M U51 ( .A0(n136), .A1(n169), .B0(n135), .C0(n134), .Y(n137) );
  NOR2X2M U52 ( .A(n154), .B(n30), .Y(n126) );
  NOR2X2M U53 ( .A(n158), .B(n37), .Y(n138) );
  NOR2X2M U54 ( .A(n153), .B(B[7]), .Y(n148) );
  INVX4M U55 ( .A(n27), .Y(n118) );
  AOI31X1M U56 ( .A0(n79), .A1(n80), .A2(n81), .B0(n175), .Y(ALU_OUT_Comb[2])
         );
  AOI31X1M U57 ( .A0(n73), .A1(n74), .A2(n75), .B0(n175), .Y(ALU_OUT_Comb[3])
         );
  NOR2X4M U58 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n108) );
  AOI31X1M U59 ( .A0(n67), .A1(n68), .A2(n69), .B0(n175), .Y(ALU_OUT_Comb[4])
         );
  AOI31X1M U61 ( .A0(n61), .A1(n62), .A2(n63), .B0(n175), .Y(ALU_OUT_Comb[5])
         );
  CLKBUFX6M U62 ( .A(B[6]), .Y(n29) );
  BUFX6M U63 ( .A(A[2]), .Y(n34) );
  BUFX6M U64 ( .A(A[0]), .Y(n30) );
  INVX4M U65 ( .A(n28), .Y(n120) );
  INVX4M U66 ( .A(n28), .Y(n121) );
  OAI22X1M U67 ( .A0(n85), .A1(n168), .B0(n47), .B1(n170), .Y(n90) );
  BUFX4M U68 ( .A(n48), .Y(n122) );
  BUFX4M U69 ( .A(n48), .Y(n123) );
  NOR2BX8M U70 ( .AN(n108), .B(n107), .Y(n53) );
  NOR2BX8M U71 ( .AN(n108), .B(n101), .Y(n54) );
  INVX4M U72 ( .A(n85), .Y(n171) );
  CLKINVX1M U73 ( .A(n102), .Y(n172) );
  INVX2M U74 ( .A(n117), .Y(n153) );
  INVX4M U75 ( .A(n33), .Y(n169) );
  INVX2M U76 ( .A(n37), .Y(n167) );
  INVX2M U77 ( .A(n43), .Y(n166) );
  INVX2M U78 ( .A(n111), .Y(n165) );
  INVX2M U79 ( .A(n114), .Y(n164) );
  AOI31X2M U80 ( .A0(n95), .A1(n96), .A2(n97), .B0(n175), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U81 ( .A0(N99), .A1(n53), .B0(N91), .B1(n54), .Y(n95) );
  AOI211X2M U82 ( .A0(n120), .A1(n170), .B0(n98), .C0(n99), .Y(n97) );
  AOI222X2M U83 ( .A0(N107), .A1(n26), .B0(n30), .B1(n118), .C0(N115), .C1(n24), .Y(n96) );
  AOI22X1M U84 ( .A0(N100), .A1(n53), .B0(N92), .B1(n54), .Y(n86) );
  AOI211X2M U85 ( .A0(n121), .A1(n169), .B0(n89), .C0(n90), .Y(n88) );
  INVX4M U86 ( .A(n115), .Y(n116) );
  INVX4M U87 ( .A(n112), .Y(n113) );
  INVX4M U88 ( .A(n109), .Y(n110) );
  AOI22X1M U89 ( .A0(N101), .A1(n53), .B0(N93), .B1(n54), .Y(n79) );
  AOI221X2M U90 ( .A0(n37), .A1(n171), .B0(n120), .B1(n168), .C0(n82), .Y(n81)
         );
  INVX4M U91 ( .A(n38), .Y(n42) );
  AOI22X1M U92 ( .A0(N102), .A1(n53), .B0(N94), .B1(n54), .Y(n73) );
  AOI221X2M U93 ( .A0(n43), .A1(n171), .B0(n121), .B1(n167), .C0(n76), .Y(n75)
         );
  INVX4M U94 ( .A(n35), .Y(n36) );
  OAI222X1M U95 ( .A0(n59), .A1(n159), .B0(n29), .B1(n60), .C0(n47), .C1(n165), 
        .Y(n58) );
  AOI221X2M U96 ( .A0(n114), .A1(n122), .B0(n25), .B1(n164), .C0(n120), .Y(n60) );
  AOI221X2M U97 ( .A0(n123), .A1(n164), .B0(n114), .B1(n23), .C0(n119), .Y(n59) );
  AOI22X1M U98 ( .A0(N103), .A1(n53), .B0(N95), .B1(n54), .Y(n67) );
  AOI221X2M U99 ( .A0(n171), .A1(n111), .B0(n120), .B1(n166), .C0(n70), .Y(n69) );
  AOI22X1M U100 ( .A0(N104), .A1(n53), .B0(N96), .B1(n54), .Y(n61) );
  AOI221X2M U101 ( .A0(n171), .A1(n114), .B0(n121), .B1(n165), .C0(n64), .Y(
        n63) );
  AOI31X2M U102 ( .A0(n55), .A1(n56), .A2(n57), .B0(n175), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U103 ( .A0(N105), .A1(n53), .B0(N97), .B1(n54), .Y(n55) );
  AOI222X2M U104 ( .A0(N113), .A1(n26), .B0(n118), .B1(n114), .C0(N121), .C1(
        n24), .Y(n56) );
  AOI221X2M U105 ( .A0(n171), .A1(n117), .B0(n120), .B1(n164), .C0(n58), .Y(
        n57) );
  AOI31X2M U106 ( .A0(n39), .A1(n40), .A2(n41), .B0(n175), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U107 ( .A0(N106), .A1(n53), .B0(N98), .B1(n54), .Y(n39) );
  AOI22X1M U108 ( .A0(N122), .A1(n24), .B0(N114), .B1(n26), .Y(n40) );
  AOI221X2M U109 ( .A0(n121), .A1(n115), .B0(n119), .B1(n117), .C0(n44), .Y(
        n41) );
  INVX4M U110 ( .A(ALU_FUN[0]), .Y(n174) );
  NAND2X2M U111 ( .A(ALU_FUN[2]), .B(n173), .Y(n102) );
  NAND3X2M U112 ( .A(n108), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n103) );
  NAND2X2M U113 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n91) );
  AND3X2M U114 ( .A(n108), .B(n174), .C(ALU_FUN[3]), .Y(n48) );
  NAND4X2M U115 ( .A(N149), .B(n172), .C(ALU_FUN[3]), .D(n174), .Y(n94) );
  NAND3X2M U116 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n172), .Y(n85) );
  INVX2M U117 ( .A(n113), .Y(n152) );
  INVXLM U118 ( .A(n137), .Y(n157) );
  INVX2M U119 ( .A(n151), .Y(N148) );
  INVX2M U120 ( .A(n29), .Y(n159) );
  INVX4M U121 ( .A(n31), .Y(n32) );
  INVX4M U122 ( .A(n31), .Y(n33) );
  INVX4M U123 ( .A(n35), .Y(n37) );
  INVX4M U124 ( .A(n38), .Y(n43) );
  INVX4M U125 ( .A(n112), .Y(n114) );
  INVX4M U126 ( .A(n109), .Y(n111) );
  INVX4M U127 ( .A(n115), .Y(n117) );
  INVX4M U128 ( .A(n34), .Y(n168) );
  INVX2M U129 ( .A(n30), .Y(n170) );
  INVX4M U130 ( .A(n125), .Y(n124) );
  INVX2M U131 ( .A(RST), .Y(n125) );
  INVX2M U132 ( .A(A[7]), .Y(n115) );
  INVX2M U133 ( .A(A[5]), .Y(n109) );
  INVX2M U134 ( .A(A[4]), .Y(n38) );
  INVX2M U135 ( .A(A[3]), .Y(n35) );
  OAI222X1M U136 ( .A0(n83), .A1(n156), .B0(B[2]), .B1(n84), .C0(n47), .C1(
        n169), .Y(n82) );
  AOI221X2M U137 ( .A0(n34), .A1(n122), .B0(n25), .B1(n168), .C0(n120), .Y(n84) );
  AOI221X2M U138 ( .A0(n123), .A1(n168), .B0(n34), .B1(n23), .C0(n119), .Y(n83) );
  OAI222X1M U139 ( .A0(n77), .A1(n158), .B0(B[3]), .B1(n78), .C0(n47), .C1(
        n168), .Y(n76) );
  AOI221X2M U140 ( .A0(n37), .A1(n122), .B0(n25), .B1(n167), .C0(n121), .Y(n78) );
  AOI221X2M U141 ( .A0(n123), .A1(n167), .B0(n37), .B1(n23), .C0(n118), .Y(n77) );
  OAI222X1M U142 ( .A0(n71), .A1(n162), .B0(B[4]), .B1(n72), .C0(n47), .C1(
        n167), .Y(n70) );
  INVX2M U143 ( .A(B[4]), .Y(n162) );
  AOI221X2M U144 ( .A0(n43), .A1(n122), .B0(n25), .B1(n166), .C0(n120), .Y(n72) );
  AOI221X2M U145 ( .A0(n123), .A1(n166), .B0(n43), .B1(n23), .C0(n119), .Y(n71) );
  OAI222X1M U146 ( .A0(n65), .A1(n161), .B0(B[5]), .B1(n66), .C0(n47), .C1(
        n166), .Y(n64) );
  INVX2M U147 ( .A(B[5]), .Y(n161) );
  AOI221X2M U148 ( .A0(n111), .A1(n122), .B0(n25), .B1(n165), .C0(n121), .Y(
        n66) );
  AOI221X2M U149 ( .A0(n123), .A1(n165), .B0(n111), .B1(n23), .C0(n118), .Y(
        n65) );
  OAI222X1M U150 ( .A0(n45), .A1(n160), .B0(B[7]), .B1(n46), .C0(n47), .C1(
        n164), .Y(n44) );
  INVX2M U151 ( .A(B[7]), .Y(n160) );
  AOI221X2M U152 ( .A0(n117), .A1(n122), .B0(n25), .B1(n153), .C0(n121), .Y(
        n46) );
  AOI221X2M U153 ( .A0(n123), .A1(n153), .B0(n117), .B1(n23), .C0(n118), .Y(
        n45) );
  OAI221X1M U154 ( .A0(B[1]), .A1(n92), .B0(n93), .B1(n163), .C0(n94), .Y(n89)
         );
  INVX2M U155 ( .A(B[1]), .Y(n163) );
  AOI221X2M U156 ( .A0(n33), .A1(n122), .B0(n25), .B1(n169), .C0(n121), .Y(n92) );
  AOI221X2M U157 ( .A0(n123), .A1(n169), .B0(n33), .B1(n23), .C0(n118), .Y(n93) );
  OAI2B2X1M U158 ( .A1N(B[0]), .A0(n100), .B0(n85), .B1(n169), .Y(n99) );
  AOI221X2M U159 ( .A0(n123), .A1(n170), .B0(n30), .B1(n23), .C0(n119), .Y(
        n100) );
  OAI211X2M U160 ( .A0(B[0]), .A1(n104), .B0(n105), .C0(n94), .Y(n98) );
  NAND4BBX1M U161 ( .AN(n106), .BN(ALU_FUN[2]), .C(ALU_FUN[3]), .D(ALU_FUN[1]), 
        .Y(n105) );
  AOI221X2M U162 ( .A0(n30), .A1(n122), .B0(n25), .B1(n170), .C0(n120), .Y(
        n104) );
  AOI22X1M U163 ( .A0(N147), .A1(n174), .B0(N148), .B1(ALU_FUN[0]), .Y(n106)
         );
  INVXLM U164 ( .A(n126), .Y(n155) );
  INVX4M U165 ( .A(Enable), .Y(n175) );
  INVX2M U166 ( .A(B[0]), .Y(n154) );
  INVX2M U167 ( .A(B[2]), .Y(n156) );
  INVX2M U168 ( .A(B[3]), .Y(n158) );
  INVX2M U169 ( .A(A[1]), .Y(n31) );
  NAND2BX1M U170 ( .AN(B[4]), .B(n43), .Y(n141) );
  NAND2BX1M U171 ( .AN(n43), .B(B[4]), .Y(n130) );
  CLKNAND2X2M U172 ( .A(n141), .B(n130), .Y(n143) );
  CLKNAND2X2M U173 ( .A(n34), .B(n156), .Y(n140) );
  NAND2BX1M U174 ( .AN(n129), .B(n140), .Y(n135) );
  AOI21X1M U175 ( .A0(n126), .A1(n169), .B0(B[1]), .Y(n127) );
  CLKNAND2X2M U176 ( .A(n37), .B(n158), .Y(n139) );
  NAND2BX1M U177 ( .AN(n111), .B(B[5]), .Y(n146) );
  OAI211X1M U178 ( .A0(n143), .A1(n131), .B0(n130), .C0(n146), .Y(n132) );
  NAND2BX1M U179 ( .AN(B[5]), .B(n111), .Y(n142) );
  AOI32X1M U180 ( .A0(n132), .A1(n142), .A2(n145), .B0(n29), .B1(n152), .Y(
        n133) );
  CLKNAND2X2M U181 ( .A(B[7]), .B(n153), .Y(n149) );
  CLKNAND2X2M U182 ( .A(n30), .B(n154), .Y(n136) );
  OA21X1M U183 ( .A0(n136), .A1(n169), .B0(B[1]), .Y(n134) );
  AOI31X1M U184 ( .A0(n157), .A1(n140), .A2(n139), .B0(n138), .Y(n144) );
  OAI2B11X1M U185 ( .A1N(n144), .A0(n143), .B0(n142), .C0(n141), .Y(n147) );
  AOI32X1M U186 ( .A0(n147), .A1(n146), .A2(n145), .B0(n114), .B1(n159), .Y(
        n150) );
  AOI2B1X1M U187 ( .A1N(n150), .A0(n149), .B0(n148), .Y(n151) );
  NOR2X1M U188 ( .A(N149), .B(N148), .Y(N147) );
  DLY1X1M U190 ( .A(test_se), .Y(n181) );
  DLY1X1M U191 ( .A(n185), .Y(n182) );
  DLY1X1M U193 ( .A(n187), .Y(n184) );
  DLY1X1M U194 ( .A(n181), .Y(n185) );
  DLY1X1M U196 ( .A(test_se), .Y(n187) );
  ALU_DW_div_uns_0 div_51 ( .a({n116, n113, n110, n42, n36, n34, n32, n30}), 
        .b({B[7], n29, B[5:0]}), .quotient({N122, N121, N120, N119, N118, N117, 
        N116, N115}) );
  ALU_DW01_sub_0 sub_45 ( .A({n116, n113, n110, n42, n36, n34, n32, n30}), .B(
        {B[7], n29, B[5:0]}), .CI(1'b0), .DIFF({N106, N105, N104, N103, N102, 
        N101, N100, N99}) );
  ALU_DW01_add_0 add_42 ( .A({n116, n113, n110, n42, n36, n34, n32, n30}), .B(
        {B[7], n29, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, N93, 
        N92, N91}) );
  ALU_DW02_mult_0 mult_48 ( .A({n116, n113, n110, n42, n36, n34, n32, n30}), 
        .B({B[7], n29, B[5:0]}), .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, N114, N113, N112, N111, N110, N109, N108, 
        N107}) );
  SDFFRX1M OUT_VALID_reg ( .D(Enable), .SI(ALU_OUT[6]), .SE(n185), .CK(CLK), 
        .RN(RST), .QN(n3) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(n184), 
        .CK(CLK), .RN(n124), .Q(n13) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(n184), 
        .CK(CLK), .RN(n124), .Q(n14) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(n182), 
        .CK(CLK), .RN(n124), .Q(n15) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(test_si2), .SE(n183), 
        .CK(CLK), .RN(n124), .Q(n12) );
  SDFFRHQX8M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(n187), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRHQX8M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(n182), .CK(CLK), .RN(n124), .Q(ALU_OUT[2]) );
  SDFFRHQX8M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si1), .SE(n186), 
        .CK(CLK), .RN(n124), .Q(ALU_OUT[0]) );
  SDFFRHQX8M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(n183), .CK(CLK), .RN(n124), .Q(ALU_OUT[3]) );
  BUFX2M U3 ( .A(n186), .Y(n183) );
  INVXLM U4 ( .A(n15), .Y(n4) );
  INVX8M U8 ( .A(n4), .Y(ALU_OUT[4]) );
  INVXLM U9 ( .A(n14), .Y(n6) );
  INVX8M U10 ( .A(n6), .Y(ALU_OUT[5]) );
  BUFX2M U11 ( .A(n181), .Y(n186) );
  INVXLM U12 ( .A(n13), .Y(n8) );
  INVX8M U13 ( .A(n8), .Y(ALU_OUT[6]) );
  INVX2M U14 ( .A(n12), .Y(n10) );
  CLKINVX16M U20 ( .A(n10), .Y(ALU_OUT[7]) );
endmodule


module RegFile_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, REG0, 
        REG1, REG2, test_si2, test_si1, test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, N13, n621, n622, n624, \regArr[15][7] ,
         \regArr[15][6] , \regArr[15][5] , \regArr[15][4] , \regArr[15][3] ,
         \regArr[15][2] , \regArr[15][1] , \regArr[15][0] , \regArr[14][7] ,
         \regArr[14][6] , \regArr[14][5] , \regArr[14][4] , \regArr[14][3] ,
         \regArr[14][2] , \regArr[14][1] , \regArr[14][0] , \regArr[13][7] ,
         \regArr[13][6] , \regArr[13][5] , \regArr[13][4] , \regArr[13][3] ,
         \regArr[13][2] , \regArr[13][1] , \regArr[13][0] , \regArr[12][7] ,
         \regArr[12][6] , \regArr[12][5] , \regArr[12][4] , \regArr[12][3] ,
         \regArr[12][2] , \regArr[12][1] , \regArr[12][0] , \regArr[11][7] ,
         \regArr[11][6] , \regArr[11][5] , \regArr[11][4] , \regArr[11][3] ,
         \regArr[11][2] , \regArr[11][1] , \regArr[11][0] , \regArr[10][7] ,
         \regArr[10][6] , \regArr[10][5] , \regArr[10][4] , \regArr[10][3] ,
         \regArr[10][2] , \regArr[10][1] , \regArr[10][0] , \regArr[9][7] ,
         \regArr[9][6] , \regArr[9][5] , \regArr[9][4] , \regArr[9][3] ,
         \regArr[9][2] , \regArr[9][1] , \regArr[9][0] , \regArr[8][7] ,
         \regArr[8][6] , \regArr[8][5] , \regArr[8][4] , \regArr[8][3] ,
         \regArr[8][2] , \regArr[8][1] , \regArr[8][0] , \regArr[7][7] ,
         \regArr[7][6] , \regArr[7][5] , \regArr[7][4] , \regArr[7][3] ,
         \regArr[7][2] , \regArr[7][1] , \regArr[7][0] , \regArr[6][7] ,
         \regArr[6][6] , \regArr[6][5] , \regArr[6][4] , \regArr[6][3] ,
         \regArr[6][2] , \regArr[6][1] , \regArr[6][0] , \regArr[5][7] ,
         \regArr[5][6] , \regArr[5][5] , \regArr[5][4] , \regArr[5][3] ,
         \regArr[5][2] , \regArr[5][1] , \regArr[5][0] , \regArr[4][7] ,
         \regArr[4][6] , \regArr[4][5] , \regArr[4][4] , \regArr[4][3] ,
         \regArr[4][2] , \regArr[4][1] , \regArr[4][0] , \regArr[3][7] ,
         \regArr[3][6] , \regArr[3][5] , \regArr[3][4] , \regArr[3][3] ,
         \regArr[3][2] , \regArr[3][1] , \regArr[3][0] , N35, N36, N37, N38,
         N39, N40, N41, N42, n149, n150, n151, n152, n153, n154, n155, n156,
         n158, n161, n162, n164, n165, n166, n167, n168, n169, n170, n174,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n20, n19, n18, n17, n16, n322, n15,
         n327, n329, n331, n333, n335, n337, n339, n341, n343, n345, n347,
         n349, n351, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n1, n2,
         n3, n5, n7, n9, n11, n13;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  SDFFRX1M \regArr_reg[15][7]  ( .D(n304), .SI(n627), .SE(n836), .CK(CLK), 
        .RN(RST), .Q(\regArr[15][7] ), .QN(test_so2) );
  SDFFRX1M \regArr_reg[15][6]  ( .D(n303), .SI(n628), .SE(n795), .CK(CLK), 
        .RN(n583), .Q(\regArr[15][6] ), .QN(n627) );
  SDFFRX1M \regArr_reg[15][5]  ( .D(n302), .SI(n629), .SE(n797), .CK(CLK), 
        .RN(n583), .Q(\regArr[15][5] ), .QN(n628) );
  SDFFRX1M \regArr_reg[15][4]  ( .D(n301), .SI(n630), .SE(n860), .CK(CLK), 
        .RN(n583), .Q(\regArr[15][4] ), .QN(n629) );
  SDFFRX1M \regArr_reg[15][3]  ( .D(n300), .SI(n631), .SE(n799), .CK(CLK), 
        .RN(n584), .Q(\regArr[15][3] ), .QN(n630) );
  SDFFRX1M \regArr_reg[15][2]  ( .D(n299), .SI(n632), .SE(n848), .CK(CLK), 
        .RN(n584), .Q(\regArr[15][2] ), .QN(n631) );
  SDFFRX1M \regArr_reg[15][1]  ( .D(n298), .SI(n633), .SE(n851), .CK(CLK), 
        .RN(n584), .Q(\regArr[15][1] ), .QN(n632) );
  SDFFRX1M \regArr_reg[15][0]  ( .D(n297), .SI(n634), .SE(n807), .CK(CLK), 
        .RN(n584), .Q(\regArr[15][0] ), .QN(n633) );
  SDFFRX1M \regArr_reg[13][7]  ( .D(n288), .SI(n643), .SE(n854), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][7] ), .QN(n642) );
  SDFFRX1M \regArr_reg[13][6]  ( .D(n287), .SI(n644), .SE(n818), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][6] ), .QN(n643) );
  SDFFRX1M \regArr_reg[13][5]  ( .D(n286), .SI(n645), .SE(n824), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][5] ), .QN(n644) );
  SDFFRX1M \regArr_reg[13][4]  ( .D(n285), .SI(n646), .SE(n833), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][4] ), .QN(n645) );
  SDFFRX1M \regArr_reg[13][3]  ( .D(n284), .SI(n647), .SE(n790), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][3] ), .QN(n646) );
  SDFFRX1M \regArr_reg[13][2]  ( .D(n283), .SI(n648), .SE(n786), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][2] ), .QN(n647) );
  SDFFRX1M \regArr_reg[13][1]  ( .D(n282), .SI(n649), .SE(n788), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][1] ), .QN(n648) );
  SDFFRX1M \regArr_reg[13][0]  ( .D(n281), .SI(n650), .SE(n791), .CK(CLK), 
        .RN(n585), .Q(\regArr[13][0] ), .QN(n649) );
  SDFFRX1M \regArr_reg[14][7]  ( .D(n296), .SI(n635), .SE(n794), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][7] ), .QN(n634) );
  SDFFRX1M \regArr_reg[14][6]  ( .D(n295), .SI(n636), .SE(n796), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][6] ), .QN(n635) );
  SDFFRX1M \regArr_reg[14][5]  ( .D(n294), .SI(n637), .SE(n798), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][5] ), .QN(n636) );
  SDFFRX1M \regArr_reg[14][4]  ( .D(n293), .SI(n638), .SE(n810), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][4] ), .QN(n637) );
  SDFFRX1M \regArr_reg[14][3]  ( .D(n292), .SI(n639), .SE(n800), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][3] ), .QN(n638) );
  SDFFRX1M \regArr_reg[14][2]  ( .D(n291), .SI(n640), .SE(n802), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][2] ), .QN(n639) );
  SDFFRX1M \regArr_reg[14][1]  ( .D(n290), .SI(n641), .SE(n804), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][1] ), .QN(n640) );
  SDFFRX1M \regArr_reg[14][0]  ( .D(n289), .SI(n642), .SE(n808), .CK(CLK), 
        .RN(n584), .Q(\regArr[14][0] ), .QN(n641) );
  SDFFRX1M \regArr_reg[12][7]  ( .D(n280), .SI(n651), .SE(n806), .CK(CLK), 
        .RN(n585), .Q(\regArr[12][7] ), .QN(n650) );
  SDFFRX1M \regArr_reg[12][6]  ( .D(n279), .SI(n652), .SE(n775), .CK(CLK), 
        .RN(n585), .Q(\regArr[12][6] ), .QN(n651) );
  SDFFRX1M \regArr_reg[12][5]  ( .D(n278), .SI(n653), .SE(n777), .CK(CLK), 
        .RN(n585), .Q(\regArr[12][5] ), .QN(n652) );
  SDFFRX1M \regArr_reg[12][4]  ( .D(n277), .SI(n654), .SE(n780), .CK(CLK), 
        .RN(n585), .Q(\regArr[12][4] ), .QN(n653) );
  SDFFRX1M \regArr_reg[12][3]  ( .D(n276), .SI(n655), .SE(n778), .CK(CLK), 
        .RN(n586), .Q(\regArr[12][3] ), .QN(n654) );
  SDFFRX1M \regArr_reg[12][2]  ( .D(n275), .SI(n656), .SE(n774), .CK(CLK), 
        .RN(n586), .Q(\regArr[12][2] ), .QN(n655) );
  SDFFRX1M \regArr_reg[12][1]  ( .D(n274), .SI(n657), .SE(n776), .CK(CLK), 
        .RN(n586), .Q(\regArr[12][1] ), .QN(n656) );
  SDFFRX1M \regArr_reg[12][0]  ( .D(n273), .SI(n658), .SE(n779), .CK(CLK), 
        .RN(n586), .Q(\regArr[12][0] ), .QN(n657) );
  SDFFRX1M \regArr_reg[11][7]  ( .D(n272), .SI(n659), .SE(n838), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][7] ), .QN(n658) );
  SDFFRX1M \regArr_reg[11][6]  ( .D(n271), .SI(n660), .SE(n841), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][6] ), .QN(n659) );
  SDFFRX1M \regArr_reg[11][5]  ( .D(n270), .SI(n661), .SE(n844), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][5] ), .QN(n660) );
  SDFFRX1M \regArr_reg[11][4]  ( .D(n269), .SI(n662), .SE(n785), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][4] ), .QN(n661) );
  SDFFRX1M \regArr_reg[11][3]  ( .D(n268), .SI(n663), .SE(n847), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][3] ), .QN(n662) );
  SDFFRX1M \regArr_reg[11][2]  ( .D(n267), .SI(n664), .SE(n781), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][2] ), .QN(n663) );
  SDFFRX1M \regArr_reg[11][1]  ( .D(n266), .SI(n665), .SE(n782), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][1] ), .QN(n664) );
  SDFFRX1M \regArr_reg[9][7]  ( .D(n256), .SI(n675), .SE(n859), .CK(CLK), .RN(
        n587), .Q(\regArr[9][7] ), .QN(n674) );
  SDFFRX1M \regArr_reg[9][6]  ( .D(n255), .SI(n676), .SE(n783), .CK(CLK), .RN(
        n587), .Q(\regArr[9][6] ), .QN(n675) );
  SDFFRX1M \regArr_reg[9][5]  ( .D(n254), .SI(n677), .SE(n820), .CK(CLK), .RN(
        n587), .Q(\regArr[9][5] ), .QN(n676) );
  SDFFRX1M \regArr_reg[9][4]  ( .D(n253), .SI(n678), .SE(n826), .CK(CLK), .RN(
        n587), .Q(\regArr[9][4] ), .QN(n677) );
  SDFFRX1M \regArr_reg[9][3]  ( .D(n252), .SI(n679), .SE(n835), .CK(CLK), .RN(
        n588), .Q(\regArr[9][3] ), .QN(n678) );
  SDFFRX1M \regArr_reg[9][2]  ( .D(n251), .SI(n680), .SE(n829), .CK(CLK), .RN(
        n588), .Q(\regArr[9][2] ), .QN(n679) );
  SDFFRX1M \regArr_reg[9][1]  ( .D(n250), .SI(n681), .SE(n817), .CK(CLK), .RN(
        n588), .Q(\regArr[9][1] ), .QN(n680) );
  SDFFRX1M \regArr_reg[10][7]  ( .D(n264), .SI(n667), .SE(n823), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][7] ), .QN(n666) );
  SDFFRX1M \regArr_reg[10][6]  ( .D(n263), .SI(n668), .SE(n832), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][6] ), .QN(n667) );
  SDFFRX1M \regArr_reg[10][5]  ( .D(n262), .SI(n669), .SE(n793), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][5] ), .QN(n668) );
  SDFFRX1M \regArr_reg[10][4]  ( .D(n261), .SI(n670), .SE(n795), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][4] ), .QN(n669) );
  SDFFRX1M \regArr_reg[10][3]  ( .D(n260), .SI(n671), .SE(n797), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][3] ), .QN(n670) );
  SDFFRX1M \regArr_reg[10][2]  ( .D(n259), .SI(n672), .SE(n809), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][2] ), .QN(n671) );
  SDFFRX1M \regArr_reg[10][1]  ( .D(n258), .SI(n673), .SE(n799), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][1] ), .QN(n672) );
  SDFFRX1M \regArr_reg[8][7]  ( .D(n248), .SI(n683), .SE(n801), .CK(CLK), .RN(
        n588), .Q(\regArr[8][7] ), .QN(n682) );
  SDFFRX1M \regArr_reg[8][6]  ( .D(n247), .SI(n684), .SE(n803), .CK(CLK), .RN(
        n588), .Q(\regArr[8][6] ), .QN(n683) );
  SDFFRX1M \regArr_reg[8][5]  ( .D(n246), .SI(n685), .SE(n807), .CK(CLK), .RN(
        n588), .Q(\regArr[8][5] ), .QN(n684) );
  SDFFRX1M \regArr_reg[8][4]  ( .D(n245), .SI(n686), .SE(n805), .CK(CLK), .RN(
        n588), .Q(\regArr[8][4] ), .QN(n685) );
  SDFFRX1M \regArr_reg[8][3]  ( .D(n244), .SI(n687), .SE(n787), .CK(CLK), .RN(
        n588), .Q(\regArr[8][3] ), .QN(n686) );
  SDFFRX1M \regArr_reg[8][2]  ( .D(n243), .SI(n688), .SE(n789), .CK(CLK), .RN(
        n588), .Q(\regArr[8][2] ), .QN(n687) );
  SDFFRX1M \regArr_reg[8][1]  ( .D(n242), .SI(n689), .SE(n792), .CK(CLK), .RN(
        n588), .Q(\regArr[8][1] ), .QN(n688) );
  SDFFRX1M \regArr_reg[11][0]  ( .D(n265), .SI(n666), .SE(n790), .CK(CLK), 
        .RN(n586), .Q(\regArr[11][0] ), .QN(n665) );
  SDFFRX1M \regArr_reg[9][0]  ( .D(n249), .SI(n682), .SE(n786), .CK(CLK), .RN(
        n588), .Q(\regArr[9][0] ), .QN(n681) );
  SDFFRX1M \regArr_reg[10][0]  ( .D(n257), .SI(n674), .SE(n788), .CK(CLK), 
        .RN(n587), .Q(\regArr[10][0] ), .QN(n673) );
  SDFFRX1M \regArr_reg[8][0]  ( .D(n241), .SI(n690), .SE(n791), .CK(CLK), .RN(
        n588), .Q(\regArr[8][0] ), .QN(n689) );
  SDFFRX1M \regArr_reg[6][7]  ( .D(n232), .SI(n699), .SE(n837), .CK(CLK), .RN(
        n589), .Q(\regArr[6][7] ), .QN(n698) );
  SDFFRX1M \regArr_reg[6][6]  ( .D(n231), .SI(n700), .SE(n796), .CK(CLK), .RN(
        n589), .Q(\regArr[6][6] ), .QN(n699) );
  SDFFRX1M \regArr_reg[6][5]  ( .D(n230), .SI(n701), .SE(n798), .CK(CLK), .RN(
        n589), .Q(\regArr[6][5] ), .QN(n700) );
  SDFFRX1M \regArr_reg[6][4]  ( .D(n229), .SI(n702), .SE(n861), .CK(CLK), .RN(
        n589), .Q(\regArr[6][4] ), .QN(n701) );
  SDFFRX1M \regArr_reg[6][3]  ( .D(n228), .SI(n703), .SE(n800), .CK(CLK), .RN(
        n590), .Q(\regArr[6][3] ), .QN(n702) );
  SDFFRX1M \regArr_reg[6][2]  ( .D(n227), .SI(n704), .SE(n849), .CK(CLK), .RN(
        n590), .Q(\regArr[6][2] ), .QN(n703) );
  SDFFRX1M \regArr_reg[6][1]  ( .D(n226), .SI(n705), .SE(n852), .CK(CLK), .RN(
        n590), .Q(\regArr[6][1] ), .QN(n704) );
  SDFFRX1M \regArr_reg[6][0]  ( .D(n225), .SI(n706), .SE(n808), .CK(CLK), .RN(
        n590), .Q(\regArr[6][0] ), .QN(n705) );
  SDFFRX1M \regArr_reg[4][7]  ( .D(n216), .SI(n715), .SE(n855), .CK(CLK), .RN(
        n591), .Q(\regArr[4][7] ), .QN(n714) );
  SDFFRX1M \regArr_reg[4][6]  ( .D(n215), .SI(n716), .SE(n819), .CK(CLK), .RN(
        n591), .Q(\regArr[4][6] ), .QN(n715) );
  SDFFRX1M \regArr_reg[4][5]  ( .D(n214), .SI(n717), .SE(n825), .CK(CLK), .RN(
        n591), .Q(\regArr[4][5] ), .QN(n716) );
  SDFFRX1M \regArr_reg[4][4]  ( .D(n213), .SI(n718), .SE(n834), .CK(CLK), .RN(
        n591), .Q(\regArr[4][4] ), .QN(n717) );
  SDFFRX1M \regArr_reg[4][3]  ( .D(n212), .SI(n719), .SE(n828), .CK(CLK), .RN(
        n591), .Q(\regArr[4][3] ), .QN(n718) );
  SDFFRX1M \regArr_reg[4][2]  ( .D(n211), .SI(n720), .SE(n816), .CK(CLK), .RN(
        n591), .Q(\regArr[4][2] ), .QN(n719) );
  SDFFRX1M \regArr_reg[4][1]  ( .D(n210), .SI(n721), .SE(n822), .CK(CLK), .RN(
        n591), .Q(\regArr[4][1] ), .QN(n720) );
  SDFFRX1M \regArr_reg[4][0]  ( .D(n209), .SI(n722), .SE(n831), .CK(CLK), .RN(
        n591), .Q(\regArr[4][0] ), .QN(n721) );
  SDFFRX1M \regArr_reg[7][7]  ( .D(n240), .SI(n691), .SE(n838), .CK(CLK), .RN(
        n589), .Q(\regArr[7][7] ), .QN(n690) );
  SDFFRX1M \regArr_reg[7][6]  ( .D(n239), .SI(n692), .SE(n771), .CK(CLK), .RN(
        n589), .Q(\regArr[7][6] ), .QN(n691) );
  SDFFRX1M \regArr_reg[7][5]  ( .D(n238), .SI(n693), .SE(n772), .CK(CLK), .RN(
        n589), .Q(\regArr[7][5] ), .QN(n692) );
  SDFFRX1M \regArr_reg[7][4]  ( .D(n237), .SI(n694), .SE(n862), .CK(CLK), .RN(
        n589), .Q(\regArr[7][4] ), .QN(n693) );
  SDFFRX1M \regArr_reg[7][3]  ( .D(n236), .SI(n695), .SE(n773), .CK(CLK), .RN(
        n589), .Q(\regArr[7][3] ), .QN(n694) );
  SDFFRX1M \regArr_reg[7][2]  ( .D(n235), .SI(n696), .SE(n850), .CK(CLK), .RN(
        n589), .Q(\regArr[7][2] ), .QN(n695) );
  SDFFRX1M \regArr_reg[7][1]  ( .D(n234), .SI(n697), .SE(n853), .CK(CLK), .RN(
        n589), .Q(\regArr[7][1] ), .QN(n696) );
  SDFFRX1M \regArr_reg[7][0]  ( .D(n233), .SI(n698), .SE(n784), .CK(CLK), .RN(
        n589), .Q(\regArr[7][0] ), .QN(n697) );
  SDFFRX1M \regArr_reg[5][7]  ( .D(n224), .SI(test_si2), .SE(n856), .CK(CLK), 
        .RN(n590), .Q(\regArr[5][7] ), .QN(n706) );
  SDFFRX1M \regArr_reg[5][6]  ( .D(n223), .SI(n708), .SE(n820), .CK(CLK), .RN(
        n590), .Q(\regArr[5][6] ), .QN(test_so1) );
  SDFFRX1M \regArr_reg[5][5]  ( .D(n222), .SI(n709), .SE(n826), .CK(CLK), .RN(
        n590), .Q(\regArr[5][5] ), .QN(n708) );
  SDFFRX1M \regArr_reg[5][4]  ( .D(n221), .SI(n710), .SE(n835), .CK(CLK), .RN(
        n590), .Q(\regArr[5][4] ), .QN(n709) );
  SDFFRX1M \regArr_reg[5][3]  ( .D(n220), .SI(n711), .SE(n829), .CK(CLK), .RN(
        n590), .Q(\regArr[5][3] ), .QN(n710) );
  SDFFRX1M \regArr_reg[5][2]  ( .D(n219), .SI(n712), .SE(n817), .CK(CLK), .RN(
        n590), .Q(\regArr[5][2] ), .QN(n711) );
  SDFFRX1M \regArr_reg[5][1]  ( .D(n218), .SI(n713), .SE(n823), .CK(CLK), .RN(
        n590), .Q(\regArr[5][1] ), .QN(n712) );
  SDFFRX1M \regArr_reg[5][0]  ( .D(n217), .SI(n714), .SE(n832), .CK(CLK), .RN(
        n590), .Q(\regArr[5][0] ), .QN(n713) );
  SDFFRX1M \regArr_reg[2][7]  ( .D(n200), .SI(REG2[6]), .SE(n793), .CK(CLK), 
        .RN(n592), .Q(n17) );
  SDFFRX1M \regArr_reg[2][4]  ( .D(n197), .SI(REG2[3]), .SE(n809), .CK(CLK), 
        .RN(n592), .Q(n18) );
  SDFFRX1M \regArr_reg[2][3]  ( .D(n196), .SI(REG2[2]), .SE(n845), .CK(CLK), 
        .RN(n592), .Q(n19) );
  SDFFRX1M \regArr_reg[3][7]  ( .D(n208), .SI(n723), .SE(n857), .CK(CLK), .RN(
        n591), .Q(\regArr[3][7] ), .QN(n722) );
  SDFFRX1M \regArr_reg[3][6]  ( .D(n207), .SI(n724), .SE(n805), .CK(CLK), .RN(
        n591), .Q(\regArr[3][6] ), .QN(n723) );
  SDFFRX1M \regArr_reg[3][5]  ( .D(n206), .SI(n725), .SE(n787), .CK(CLK), .RN(
        n591), .Q(\regArr[3][5] ), .QN(n724) );
  SDFFRX1M \regArr_reg[3][4]  ( .D(n205), .SI(n726), .SE(n789), .CK(CLK), .RN(
        n591), .Q(\regArr[3][4] ), .QN(n725) );
  SDFFRX1M \regArr_reg[3][3]  ( .D(n204), .SI(n727), .SE(n792), .CK(CLK), .RN(
        n592), .Q(\regArr[3][3] ), .QN(n726) );
  SDFFRX1M \regArr_reg[3][2]  ( .D(n203), .SI(n728), .SE(n827), .CK(CLK), .RN(
        n592), .Q(\regArr[3][2] ), .QN(n727) );
  SDFFRX1M \regArr_reg[3][1]  ( .D(n202), .SI(n729), .SE(n815), .CK(CLK), .RN(
        n592), .Q(\regArr[3][1] ), .QN(n728) );
  SDFFRX1M \regArr_reg[0][7]  ( .D(n184), .SI(n2), .SE(n821), .CK(CLK), .RN(
        n593), .Q(n15) );
  SDFFRX1M \regArr_reg[0][6]  ( .D(n183), .SI(REG0[5]), .SE(n830), .CK(CLK), 
        .RN(n593), .Q(n883), .QN(n322) );
  SDFFRX1M \regArr_reg[2][0]  ( .D(n193), .SI(REG1[7]), .SE(n804), .CK(CLK), 
        .RN(n592), .Q(n20) );
  SDFFRX1M \regArr_reg[3][0]  ( .D(n201), .SI(REG2[7]), .SE(n858), .CK(CLK), 
        .RN(n592), .Q(\regArr[3][0] ), .QN(n729) );
  SDFFRX1M \regArr_reg[1][6]  ( .D(n191), .SI(REG1[5]), .SE(n806), .CK(CLK), 
        .RN(n593), .Q(n16) );
  SDFFRQX2M \regArr_reg[1][5]  ( .D(n190), .SI(REG1[4]), .SE(n785), .CK(CLK), 
        .RN(n593), .Q(n622) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n186), .SI(REG1[0]), .SE(n781), .CK(CLK), 
        .RN(n593), .Q(n624) );
  SDFFRQX1M \regArr_reg[1][7]  ( .D(n192), .SI(REG1[6]), .SE(n773), .CK(CLK), 
        .RN(RST), .Q(n621) );
  SDFFRQX4M \regArr_reg[1][3]  ( .D(n188), .SI(REG1[2]), .SE(n771), .CK(CLK), 
        .RN(n593), .Q(REG1[3]) );
  SDFFRQX4M \regArr_reg[1][2]  ( .D(n187), .SI(REG1[1]), .SE(n772), .CK(CLK), 
        .RN(n593), .Q(REG1[2]) );
  CLKBUFX6M U139 ( .A(n598), .Y(n593) );
  CLKBUFX6M U140 ( .A(n595), .Y(n583) );
  CLKINVX1M U141 ( .A(N10), .Y(n599) );
  INVXLM U155 ( .A(n322), .Y(REG0[6]) );
  MX4XLM U156 ( .A(n2), .B(REG1[6]), .C(REG2[6]), .D(\regArr[3][6] ), .S0(n533), .S1(n530), .Y(n524) );
  INVX8M U161 ( .A(n327), .Y(RdData[2]) );
  INVX8M U163 ( .A(n329), .Y(RdData[3]) );
  INVX8M U165 ( .A(n331), .Y(RdData[4]) );
  INVX8M U167 ( .A(n333), .Y(RdData[0]) );
  INVX8M U169 ( .A(n335), .Y(RdData[1]) );
  INVX8M U171 ( .A(n337), .Y(RdData[5]) );
  INVX8M U173 ( .A(n339), .Y(RdData[6]) );
  INVX8M U175 ( .A(n341), .Y(RdData[7]) );
  INVX6M U177 ( .A(n343), .Y(REG1[4]) );
  INVXLM U178 ( .A(n622), .Y(n345) );
  INVX6M U179 ( .A(n345), .Y(REG1[5]) );
  INVXLM U180 ( .A(n624), .Y(n347) );
  INVX6M U181 ( .A(n347), .Y(REG1[1]) );
  INVX6M U183 ( .A(n349), .Y(REG1[0]) );
  INVXLM U184 ( .A(n621), .Y(n351) );
  INVX6M U185 ( .A(n351), .Y(REG1[7]) );
  AND2X2M U322 ( .A(n162), .B(n599), .Y(n151) );
  NOR2X4M U323 ( .A(n601), .B(N12), .Y(n155) );
  NOR2X4M U324 ( .A(n600), .B(N12), .Y(n150) );
  AND2X2M U325 ( .A(n174), .B(n599), .Y(n166) );
  AND2X2M U326 ( .A(N12), .B(n601), .Y(n158) );
  AND2X2M U327 ( .A(N12), .B(n600), .Y(n161) );
  BUFX4M U328 ( .A(n176), .Y(n550) );
  INVX2M U329 ( .A(N11), .Y(n601) );
  CLKBUFX8M U330 ( .A(N10), .Y(n532) );
  CLKBUFX8M U331 ( .A(n600), .Y(n529) );
  CLKBUFX6M U332 ( .A(N10), .Y(n531) );
  BUFX6M U333 ( .A(n595), .Y(n592) );
  BUFX6M U334 ( .A(n595), .Y(n591) );
  BUFX6M U335 ( .A(n596), .Y(n590) );
  BUFX6M U336 ( .A(n596), .Y(n589) );
  BUFX6M U337 ( .A(n597), .Y(n588) );
  BUFX6M U338 ( .A(n597), .Y(n587) );
  BUFX6M U339 ( .A(n598), .Y(n586) );
  BUFX6M U340 ( .A(n596), .Y(n585) );
  BUFX6M U341 ( .A(n598), .Y(n584) );
  BUFX2M U342 ( .A(n597), .Y(n594) );
  CLKBUFX8M U343 ( .A(N10), .Y(n533) );
  CLKBUFX8M U344 ( .A(n600), .Y(n530) );
  BUFX4M U345 ( .A(n154), .Y(n578) );
  BUFX4M U346 ( .A(n156), .Y(n576) );
  BUFX4M U347 ( .A(n152), .Y(n580) );
  BUFX4M U348 ( .A(n165), .Y(n566) );
  BUFX4M U349 ( .A(n167), .Y(n564) );
  BUFX4M U350 ( .A(n169), .Y(n562) );
  BUFX4M U351 ( .A(n170), .Y(n560) );
  BUFX4M U352 ( .A(n149), .Y(n582) );
  BUFX4M U353 ( .A(n154), .Y(n577) );
  BUFX4M U354 ( .A(n156), .Y(n575) );
  BUFX4M U355 ( .A(n152), .Y(n579) );
  BUFX4M U356 ( .A(n165), .Y(n565) );
  BUFX4M U357 ( .A(n167), .Y(n563) );
  BUFX4M U358 ( .A(n169), .Y(n561) );
  BUFX4M U359 ( .A(n170), .Y(n559) );
  BUFX4M U360 ( .A(n149), .Y(n581) );
  INVX4M U361 ( .A(n489), .Y(n574) );
  INVX4M U362 ( .A(n489), .Y(n573) );
  INVX4M U363 ( .A(n490), .Y(n572) );
  INVX4M U364 ( .A(n490), .Y(n571) );
  INVX4M U365 ( .A(n491), .Y(n570) );
  INVX4M U366 ( .A(n491), .Y(n569) );
  INVX4M U367 ( .A(n492), .Y(n568) );
  INVX4M U368 ( .A(n492), .Y(n567) );
  INVX4M U369 ( .A(n493), .Y(n558) );
  INVX4M U370 ( .A(n493), .Y(n557) );
  INVX4M U371 ( .A(n494), .Y(n556) );
  INVX4M U372 ( .A(n494), .Y(n555) );
  INVX4M U373 ( .A(n495), .Y(n554) );
  INVX4M U374 ( .A(n495), .Y(n553) );
  INVX4M U375 ( .A(n496), .Y(n552) );
  INVX4M U376 ( .A(n496), .Y(n551) );
  BUFX2M U377 ( .A(n597), .Y(n595) );
  BUFX2M U378 ( .A(RST), .Y(n596) );
  BUFX2M U379 ( .A(n598), .Y(n597) );
  INVX4M U380 ( .A(n550), .Y(n602) );
  AND2X2M U381 ( .A(n162), .B(n531), .Y(n153) );
  AND2X2M U382 ( .A(n174), .B(n531), .Y(n168) );
  NAND2X2M U383 ( .A(n150), .B(n151), .Y(n149) );
  NAND2X2M U384 ( .A(n155), .B(n151), .Y(n154) );
  NAND2X2M U385 ( .A(n155), .B(n153), .Y(n156) );
  NAND2X2M U386 ( .A(n153), .B(n150), .Y(n152) );
  NAND2X2M U387 ( .A(n166), .B(n150), .Y(n165) );
  NAND2X2M U388 ( .A(n168), .B(n150), .Y(n167) );
  NAND2X2M U389 ( .A(n166), .B(n155), .Y(n169) );
  NAND2X2M U390 ( .A(n168), .B(n155), .Y(n170) );
  AND2X2M U391 ( .A(n158), .B(n151), .Y(n489) );
  AND2X2M U392 ( .A(n158), .B(n153), .Y(n490) );
  AND2X2M U393 ( .A(n161), .B(n151), .Y(n491) );
  AND2X2M U394 ( .A(n161), .B(n153), .Y(n492) );
  AND2X2M U395 ( .A(n166), .B(n158), .Y(n493) );
  AND2X2M U396 ( .A(n168), .B(n158), .Y(n494) );
  AND2X2M U397 ( .A(n166), .B(n161), .Y(n495) );
  AND2X2M U398 ( .A(n168), .B(n161), .Y(n496) );
  BUFX2M U399 ( .A(RST), .Y(n598) );
  NOR2BX2M U400 ( .AN(n164), .B(N13), .Y(n162) );
  NOR2X2M U401 ( .A(n603), .B(RdEn), .Y(n164) );
  NAND2X2M U402 ( .A(RdEn), .B(n603), .Y(n176) );
  AND2X2M U403 ( .A(N13), .B(n164), .Y(n174) );
  INVX2M U404 ( .A(n601), .Y(n600) );
  BUFX4M U405 ( .A(n611), .Y(n548) );
  BUFX4M U406 ( .A(n610), .Y(n546) );
  BUFX4M U407 ( .A(n609), .Y(n544) );
  BUFX4M U408 ( .A(n608), .Y(n542) );
  BUFX4M U409 ( .A(n607), .Y(n540) );
  BUFX4M U410 ( .A(n606), .Y(n538) );
  BUFX4M U411 ( .A(n605), .Y(n536) );
  BUFX4M U412 ( .A(n604), .Y(n534) );
  BUFX4M U413 ( .A(n611), .Y(n549) );
  BUFX4M U414 ( .A(n610), .Y(n547) );
  BUFX4M U415 ( .A(n609), .Y(n545) );
  BUFX4M U416 ( .A(n608), .Y(n543) );
  BUFX4M U417 ( .A(n607), .Y(n541) );
  BUFX4M U418 ( .A(n606), .Y(n539) );
  BUFX4M U419 ( .A(n605), .Y(n537) );
  BUFX4M U420 ( .A(n604), .Y(n535) );
  OAI2BB2X1M U421 ( .B0(n547), .B1(n579), .A0N(REG1[1]), .A1N(n580), .Y(n186)
         );
  OAI2BB2X1M U422 ( .B0(n545), .B1(n579), .A0N(REG1[2]), .A1N(n580), .Y(n187)
         );
  OAI2BB2X1M U423 ( .B0(n543), .B1(n579), .A0N(REG1[3]), .A1N(n580), .Y(n188)
         );
  OAI2BB2X1M U424 ( .B0(n541), .B1(n579), .A0N(REG1[4]), .A1N(n580), .Y(n189)
         );
  OAI2BB2X1M U425 ( .B0(n539), .B1(n579), .A0N(REG1[5]), .A1N(n580), .Y(n190)
         );
  OAI2BB2X1M U426 ( .B0(n537), .B1(n579), .A0N(REG1[6]), .A1N(n580), .Y(n191)
         );
  OAI2BB2X1M U427 ( .B0(n535), .B1(n579), .A0N(REG1[7]), .A1N(n580), .Y(n192)
         );
  OAI2BB2X1M U428 ( .B0(n547), .B1(n577), .A0N(REG2[1]), .A1N(n578), .Y(n194)
         );
  OAI2BB2X1M U429 ( .B0(n545), .B1(n577), .A0N(REG2[2]), .A1N(n578), .Y(n195)
         );
  OAI2BB2X1M U430 ( .B0(n543), .B1(n577), .A0N(REG2[3]), .A1N(n578), .Y(n196)
         );
  OAI2BB2X1M U431 ( .B0(n541), .B1(n577), .A0N(REG2[4]), .A1N(n578), .Y(n197)
         );
  OAI2BB2X1M U432 ( .B0(n539), .B1(n577), .A0N(REG2[5]), .A1N(n578), .Y(n198)
         );
  OAI2BB2X1M U433 ( .B0(n537), .B1(n577), .A0N(REG2[6]), .A1N(n578), .Y(n199)
         );
  OAI2BB2X1M U434 ( .B0(n535), .B1(n577), .A0N(REG2[7]), .A1N(n578), .Y(n200)
         );
  OAI2BB2X1M U435 ( .B0(n547), .B1(n575), .A0N(\regArr[3][1] ), .A1N(n576), 
        .Y(n202) );
  OAI2BB2X1M U436 ( .B0(n545), .B1(n575), .A0N(\regArr[3][2] ), .A1N(n576), 
        .Y(n203) );
  OAI2BB2X1M U437 ( .B0(n543), .B1(n575), .A0N(\regArr[3][3] ), .A1N(n576), 
        .Y(n204) );
  OAI2BB2X1M U438 ( .B0(n541), .B1(n575), .A0N(\regArr[3][4] ), .A1N(n576), 
        .Y(n205) );
  OAI2BB2X1M U439 ( .B0(n539), .B1(n575), .A0N(\regArr[3][5] ), .A1N(n576), 
        .Y(n206) );
  OAI2BB2X1M U440 ( .B0(n537), .B1(n575), .A0N(\regArr[3][6] ), .A1N(n576), 
        .Y(n207) );
  OAI2BB2X1M U441 ( .B0(n535), .B1(n575), .A0N(\regArr[3][7] ), .A1N(n576), 
        .Y(n208) );
  OAI2BB2X1M U442 ( .B0(n549), .B1(n574), .A0N(\regArr[4][0] ), .A1N(n574), 
        .Y(n209) );
  OAI2BB2X1M U443 ( .B0(n547), .B1(n573), .A0N(\regArr[4][1] ), .A1N(n573), 
        .Y(n210) );
  OAI2BB2X1M U444 ( .B0(n545), .B1(n574), .A0N(\regArr[4][2] ), .A1N(n574), 
        .Y(n211) );
  OAI2BB2X1M U445 ( .B0(n543), .B1(n573), .A0N(\regArr[4][3] ), .A1N(n573), 
        .Y(n212) );
  OAI2BB2X1M U446 ( .B0(n541), .B1(n574), .A0N(\regArr[4][4] ), .A1N(n574), 
        .Y(n213) );
  OAI2BB2X1M U447 ( .B0(n539), .B1(n573), .A0N(\regArr[4][5] ), .A1N(n573), 
        .Y(n214) );
  OAI2BB2X1M U448 ( .B0(n537), .B1(n574), .A0N(\regArr[4][6] ), .A1N(n574), 
        .Y(n215) );
  OAI2BB2X1M U449 ( .B0(n535), .B1(n573), .A0N(\regArr[4][7] ), .A1N(n573), 
        .Y(n216) );
  OAI2BB2X1M U450 ( .B0(n549), .B1(n572), .A0N(\regArr[5][0] ), .A1N(n572), 
        .Y(n217) );
  OAI2BB2X1M U451 ( .B0(n547), .B1(n571), .A0N(\regArr[5][1] ), .A1N(n571), 
        .Y(n218) );
  OAI2BB2X1M U452 ( .B0(n545), .B1(n572), .A0N(\regArr[5][2] ), .A1N(n572), 
        .Y(n219) );
  OAI2BB2X1M U453 ( .B0(n543), .B1(n571), .A0N(\regArr[5][3] ), .A1N(n571), 
        .Y(n220) );
  OAI2BB2X1M U454 ( .B0(n541), .B1(n572), .A0N(\regArr[5][4] ), .A1N(n572), 
        .Y(n221) );
  OAI2BB2X1M U455 ( .B0(n539), .B1(n571), .A0N(\regArr[5][5] ), .A1N(n571), 
        .Y(n222) );
  OAI2BB2X1M U456 ( .B0(n537), .B1(n572), .A0N(\regArr[5][6] ), .A1N(n572), 
        .Y(n223) );
  OAI2BB2X1M U457 ( .B0(n535), .B1(n571), .A0N(\regArr[5][7] ), .A1N(n571), 
        .Y(n224) );
  OAI2BB2X1M U458 ( .B0(n549), .B1(n570), .A0N(\regArr[6][0] ), .A1N(n570), 
        .Y(n225) );
  OAI2BB2X1M U459 ( .B0(n547), .B1(n569), .A0N(\regArr[6][1] ), .A1N(n569), 
        .Y(n226) );
  OAI2BB2X1M U460 ( .B0(n545), .B1(n570), .A0N(\regArr[6][2] ), .A1N(n570), 
        .Y(n227) );
  OAI2BB2X1M U461 ( .B0(n543), .B1(n569), .A0N(\regArr[6][3] ), .A1N(n569), 
        .Y(n228) );
  OAI2BB2X1M U462 ( .B0(n541), .B1(n570), .A0N(\regArr[6][4] ), .A1N(n570), 
        .Y(n229) );
  OAI2BB2X1M U463 ( .B0(n539), .B1(n569), .A0N(\regArr[6][5] ), .A1N(n569), 
        .Y(n230) );
  OAI2BB2X1M U464 ( .B0(n537), .B1(n570), .A0N(\regArr[6][6] ), .A1N(n570), 
        .Y(n231) );
  OAI2BB2X1M U465 ( .B0(n535), .B1(n569), .A0N(\regArr[6][7] ), .A1N(n569), 
        .Y(n232) );
  OAI2BB2X1M U466 ( .B0(n549), .B1(n568), .A0N(\regArr[7][0] ), .A1N(n568), 
        .Y(n233) );
  OAI2BB2X1M U467 ( .B0(n547), .B1(n567), .A0N(\regArr[7][1] ), .A1N(n567), 
        .Y(n234) );
  OAI2BB2X1M U468 ( .B0(n545), .B1(n568), .A0N(\regArr[7][2] ), .A1N(n568), 
        .Y(n235) );
  OAI2BB2X1M U469 ( .B0(n543), .B1(n567), .A0N(\regArr[7][3] ), .A1N(n567), 
        .Y(n236) );
  OAI2BB2X1M U470 ( .B0(n541), .B1(n568), .A0N(\regArr[7][4] ), .A1N(n568), 
        .Y(n237) );
  OAI2BB2X1M U471 ( .B0(n539), .B1(n567), .A0N(\regArr[7][5] ), .A1N(n567), 
        .Y(n238) );
  OAI2BB2X1M U472 ( .B0(n537), .B1(n568), .A0N(\regArr[7][6] ), .A1N(n568), 
        .Y(n239) );
  OAI2BB2X1M U473 ( .B0(n535), .B1(n567), .A0N(\regArr[7][7] ), .A1N(n567), 
        .Y(n240) );
  OAI2BB2X1M U474 ( .B0(n547), .B1(n565), .A0N(\regArr[8][1] ), .A1N(n566), 
        .Y(n242) );
  OAI2BB2X1M U475 ( .B0(n545), .B1(n565), .A0N(\regArr[8][2] ), .A1N(n566), 
        .Y(n243) );
  OAI2BB2X1M U476 ( .B0(n543), .B1(n565), .A0N(\regArr[8][3] ), .A1N(n566), 
        .Y(n244) );
  OAI2BB2X1M U477 ( .B0(n541), .B1(n565), .A0N(\regArr[8][4] ), .A1N(n566), 
        .Y(n245) );
  OAI2BB2X1M U478 ( .B0(n539), .B1(n565), .A0N(\regArr[8][5] ), .A1N(n566), 
        .Y(n246) );
  OAI2BB2X1M U479 ( .B0(n537), .B1(n565), .A0N(\regArr[8][6] ), .A1N(n566), 
        .Y(n247) );
  OAI2BB2X1M U480 ( .B0(n535), .B1(n565), .A0N(\regArr[8][7] ), .A1N(n566), 
        .Y(n248) );
  OAI2BB2X1M U481 ( .B0(n546), .B1(n563), .A0N(\regArr[9][1] ), .A1N(n564), 
        .Y(n250) );
  OAI2BB2X1M U482 ( .B0(n544), .B1(n563), .A0N(\regArr[9][2] ), .A1N(n564), 
        .Y(n251) );
  OAI2BB2X1M U483 ( .B0(n542), .B1(n563), .A0N(\regArr[9][3] ), .A1N(n564), 
        .Y(n252) );
  OAI2BB2X1M U484 ( .B0(n540), .B1(n563), .A0N(\regArr[9][4] ), .A1N(n564), 
        .Y(n253) );
  OAI2BB2X1M U485 ( .B0(n538), .B1(n563), .A0N(\regArr[9][5] ), .A1N(n564), 
        .Y(n254) );
  OAI2BB2X1M U486 ( .B0(n536), .B1(n563), .A0N(\regArr[9][6] ), .A1N(n564), 
        .Y(n255) );
  OAI2BB2X1M U487 ( .B0(n534), .B1(n563), .A0N(\regArr[9][7] ), .A1N(n564), 
        .Y(n256) );
  OAI2BB2X1M U488 ( .B0(n546), .B1(n561), .A0N(\regArr[10][1] ), .A1N(n562), 
        .Y(n258) );
  OAI2BB2X1M U489 ( .B0(n544), .B1(n561), .A0N(\regArr[10][2] ), .A1N(n562), 
        .Y(n259) );
  OAI2BB2X1M U490 ( .B0(n542), .B1(n561), .A0N(\regArr[10][3] ), .A1N(n562), 
        .Y(n260) );
  OAI2BB2X1M U491 ( .B0(n540), .B1(n561), .A0N(\regArr[10][4] ), .A1N(n562), 
        .Y(n261) );
  OAI2BB2X1M U492 ( .B0(n538), .B1(n561), .A0N(\regArr[10][5] ), .A1N(n562), 
        .Y(n262) );
  OAI2BB2X1M U493 ( .B0(n536), .B1(n561), .A0N(\regArr[10][6] ), .A1N(n562), 
        .Y(n263) );
  OAI2BB2X1M U494 ( .B0(n534), .B1(n561), .A0N(\regArr[10][7] ), .A1N(n562), 
        .Y(n264) );
  OAI2BB2X1M U495 ( .B0(n546), .B1(n559), .A0N(\regArr[11][1] ), .A1N(n560), 
        .Y(n266) );
  OAI2BB2X1M U496 ( .B0(n544), .B1(n559), .A0N(\regArr[11][2] ), .A1N(n560), 
        .Y(n267) );
  OAI2BB2X1M U497 ( .B0(n542), .B1(n559), .A0N(\regArr[11][3] ), .A1N(n560), 
        .Y(n268) );
  OAI2BB2X1M U498 ( .B0(n540), .B1(n559), .A0N(\regArr[11][4] ), .A1N(n560), 
        .Y(n269) );
  OAI2BB2X1M U499 ( .B0(n538), .B1(n559), .A0N(\regArr[11][5] ), .A1N(n560), 
        .Y(n270) );
  OAI2BB2X1M U500 ( .B0(n536), .B1(n559), .A0N(\regArr[11][6] ), .A1N(n560), 
        .Y(n271) );
  OAI2BB2X1M U501 ( .B0(n534), .B1(n559), .A0N(\regArr[11][7] ), .A1N(n560), 
        .Y(n272) );
  OAI2BB2X1M U502 ( .B0(n548), .B1(n558), .A0N(\regArr[12][0] ), .A1N(n558), 
        .Y(n273) );
  OAI2BB2X1M U503 ( .B0(n546), .B1(n557), .A0N(\regArr[12][1] ), .A1N(n557), 
        .Y(n274) );
  OAI2BB2X1M U504 ( .B0(n544), .B1(n558), .A0N(\regArr[12][2] ), .A1N(n558), 
        .Y(n275) );
  OAI2BB2X1M U505 ( .B0(n542), .B1(n557), .A0N(\regArr[12][3] ), .A1N(n557), 
        .Y(n276) );
  OAI2BB2X1M U506 ( .B0(n540), .B1(n558), .A0N(\regArr[12][4] ), .A1N(n558), 
        .Y(n277) );
  OAI2BB2X1M U507 ( .B0(n538), .B1(n557), .A0N(\regArr[12][5] ), .A1N(n557), 
        .Y(n278) );
  OAI2BB2X1M U508 ( .B0(n536), .B1(n558), .A0N(\regArr[12][6] ), .A1N(n558), 
        .Y(n279) );
  OAI2BB2X1M U509 ( .B0(n534), .B1(n557), .A0N(\regArr[12][7] ), .A1N(n557), 
        .Y(n280) );
  OAI2BB2X1M U510 ( .B0(n548), .B1(n556), .A0N(\regArr[13][0] ), .A1N(n556), 
        .Y(n281) );
  OAI2BB2X1M U511 ( .B0(n546), .B1(n555), .A0N(\regArr[13][1] ), .A1N(n555), 
        .Y(n282) );
  OAI2BB2X1M U512 ( .B0(n544), .B1(n556), .A0N(\regArr[13][2] ), .A1N(n556), 
        .Y(n283) );
  OAI2BB2X1M U513 ( .B0(n542), .B1(n555), .A0N(\regArr[13][3] ), .A1N(n555), 
        .Y(n284) );
  OAI2BB2X1M U514 ( .B0(n540), .B1(n556), .A0N(\regArr[13][4] ), .A1N(n556), 
        .Y(n285) );
  OAI2BB2X1M U515 ( .B0(n538), .B1(n555), .A0N(\regArr[13][5] ), .A1N(n555), 
        .Y(n286) );
  OAI2BB2X1M U516 ( .B0(n536), .B1(n556), .A0N(\regArr[13][6] ), .A1N(n556), 
        .Y(n287) );
  OAI2BB2X1M U517 ( .B0(n534), .B1(n555), .A0N(\regArr[13][7] ), .A1N(n555), 
        .Y(n288) );
  OAI2BB2X1M U518 ( .B0(n548), .B1(n554), .A0N(\regArr[14][0] ), .A1N(n554), 
        .Y(n289) );
  OAI2BB2X1M U519 ( .B0(n546), .B1(n553), .A0N(\regArr[14][1] ), .A1N(n553), 
        .Y(n290) );
  OAI2BB2X1M U520 ( .B0(n544), .B1(n554), .A0N(\regArr[14][2] ), .A1N(n554), 
        .Y(n291) );
  OAI2BB2X1M U521 ( .B0(n542), .B1(n553), .A0N(\regArr[14][3] ), .A1N(n553), 
        .Y(n292) );
  OAI2BB2X1M U522 ( .B0(n540), .B1(n554), .A0N(\regArr[14][4] ), .A1N(n554), 
        .Y(n293) );
  OAI2BB2X1M U523 ( .B0(n538), .B1(n553), .A0N(\regArr[14][5] ), .A1N(n553), 
        .Y(n294) );
  OAI2BB2X1M U524 ( .B0(n536), .B1(n554), .A0N(\regArr[14][6] ), .A1N(n554), 
        .Y(n295) );
  OAI2BB2X1M U525 ( .B0(n534), .B1(n553), .A0N(\regArr[14][7] ), .A1N(n553), 
        .Y(n296) );
  OAI2BB2X1M U526 ( .B0(n548), .B1(n552), .A0N(\regArr[15][0] ), .A1N(n552), 
        .Y(n297) );
  OAI2BB2X1M U527 ( .B0(n546), .B1(n551), .A0N(\regArr[15][1] ), .A1N(n551), 
        .Y(n298) );
  OAI2BB2X1M U528 ( .B0(n544), .B1(n552), .A0N(\regArr[15][2] ), .A1N(n552), 
        .Y(n299) );
  OAI2BB2X1M U529 ( .B0(n542), .B1(n551), .A0N(\regArr[15][3] ), .A1N(n551), 
        .Y(n300) );
  OAI2BB2X1M U530 ( .B0(n540), .B1(n552), .A0N(\regArr[15][4] ), .A1N(n552), 
        .Y(n301) );
  OAI2BB2X1M U531 ( .B0(n538), .B1(n551), .A0N(\regArr[15][5] ), .A1N(n551), 
        .Y(n302) );
  OAI2BB2X1M U532 ( .B0(n536), .B1(n552), .A0N(\regArr[15][6] ), .A1N(n552), 
        .Y(n303) );
  OAI2BB2X1M U533 ( .B0(n534), .B1(n551), .A0N(\regArr[15][7] ), .A1N(n551), 
        .Y(n304) );
  OAI2BB2X1M U534 ( .B0(n582), .B1(n548), .A0N(REG0[0]), .A1N(n582), .Y(n177)
         );
  OAI2BB2X1M U535 ( .B0(n581), .B1(n546), .A0N(REG0[1]), .A1N(n582), .Y(n178)
         );
  OAI2BB2X1M U536 ( .B0(n581), .B1(n544), .A0N(REG0[2]), .A1N(n582), .Y(n179)
         );
  OAI2BB2X1M U537 ( .B0(n581), .B1(n542), .A0N(REG0[3]), .A1N(n582), .Y(n180)
         );
  OAI2BB2X1M U538 ( .B0(n581), .B1(n540), .A0N(REG0[4]), .A1N(n582), .Y(n181)
         );
  OAI2BB2X1M U539 ( .B0(n581), .B1(n538), .A0N(REG0[5]), .A1N(n582), .Y(n182)
         );
  OAI2BB2X1M U540 ( .B0(n581), .B1(n536), .A0N(n2), .A1N(n582), .Y(n183) );
  OAI2BB2X1M U541 ( .B0(n581), .B1(n534), .A0N(REG0[7]), .A1N(n582), .Y(n184)
         );
  OAI2BB2X1M U542 ( .B0(n549), .B1(n580), .A0N(REG1[0]), .A1N(n580), .Y(n185)
         );
  OAI2BB2X1M U543 ( .B0(n549), .B1(n578), .A0N(REG2[0]), .A1N(n578), .Y(n193)
         );
  OAI2BB2X1M U544 ( .B0(n549), .B1(n576), .A0N(\regArr[3][0] ), .A1N(n576), 
        .Y(n201) );
  OAI2BB2X1M U545 ( .B0(n549), .B1(n566), .A0N(\regArr[8][0] ), .A1N(n566), 
        .Y(n241) );
  OAI2BB2X1M U546 ( .B0(n548), .B1(n564), .A0N(\regArr[9][0] ), .A1N(n564), 
        .Y(n249) );
  OAI2BB2X1M U547 ( .B0(n548), .B1(n562), .A0N(\regArr[10][0] ), .A1N(n562), 
        .Y(n257) );
  OAI2BB2X1M U548 ( .B0(n548), .B1(n560), .A0N(\regArr[11][0] ), .A1N(n560), 
        .Y(n265) );
  INVX2M U549 ( .A(WrEn), .Y(n603) );
  MX4X1M U550 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n532), .S1(n529), .Y(n507) );
  MX4X1M U551 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n532), .S1(n529), .Y(n511) );
  MX4X1M U552 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n532), .S1(n529), .Y(n515) );
  MX4X1M U553 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n533), .S1(n530), .Y(n519) );
  MX4X1M U554 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n533), .S1(n530), .Y(n523) );
  MX4X1M U555 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n533), .S1(n530), .Y(n527) );
  MX4X1M U556 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n532), .S1(n529), .Y(n505) );
  MX4X1M U557 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n532), .S1(n529), .Y(n509) );
  MX4X1M U558 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n532), .S1(n529), .Y(n513) );
  MX4X1M U559 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n533), .S1(n530), .Y(n517) );
  MX4X1M U560 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n533), .S1(n530), .Y(n521) );
  MX4X1M U561 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n533), .S1(n530), .Y(n525) );
  MX4X1M U562 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n531), .S1(n530), .Y(n499) );
  MX4X1M U563 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n531), .S1(n529), .Y(n503) );
  MX4X1M U564 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n531), .S1(n529), .Y(n497) );
  MX4X1M U565 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n531), .S1(n529), .Y(n501) );
  AO22XLM U566 ( .A0(N42), .A1(n602), .B0(RdData[0]), .B1(n550), .Y(n305) );
  MX4X1M U567 ( .A(n500), .B(n498), .C(n499), .D(n497), .S0(N13), .S1(N12), 
        .Y(N42) );
  MX4X1M U569 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(n531), .S1(n530), .Y(n498) );
  AO22XLM U570 ( .A0(N41), .A1(n602), .B0(RdData[1]), .B1(n550), .Y(n306) );
  MX4X1M U571 ( .A(n504), .B(n502), .C(n503), .D(n501), .S0(N13), .S1(N12), 
        .Y(N41) );
  MX4X1M U572 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(\regArr[3][1] ), 
        .S0(n531), .S1(n529), .Y(n504) );
  MX4X1M U573 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n531), .S1(N11), .Y(n502) );
  AO22XLM U574 ( .A0(N40), .A1(n602), .B0(RdData[2]), .B1(n550), .Y(n307) );
  MX4X1M U575 ( .A(n508), .B(n506), .C(n507), .D(n505), .S0(N13), .S1(N12), 
        .Y(N40) );
  MX4X1M U577 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n532), .S1(n529), .Y(n506) );
  AO22XLM U578 ( .A0(N39), .A1(n602), .B0(RdData[3]), .B1(n550), .Y(n308) );
  MX4X1M U579 ( .A(n512), .B(n510), .C(n511), .D(n509), .S0(N13), .S1(N12), 
        .Y(N39) );
  MX4X1M U580 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(\regArr[3][3] ), 
        .S0(n532), .S1(n529), .Y(n512) );
  MX4X1M U581 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n532), .S1(n529), .Y(n510) );
  AO22XLM U582 ( .A0(N38), .A1(n602), .B0(RdData[4]), .B1(n550), .Y(n309) );
  MX4X1M U583 ( .A(n516), .B(n514), .C(n515), .D(n513), .S0(N13), .S1(N12), 
        .Y(N38) );
  MX4X1M U584 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(\regArr[3][4] ), 
        .S0(n532), .S1(n530), .Y(n516) );
  MX4X1M U585 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n532), .S1(n529), .Y(n514) );
  AO22XLM U586 ( .A0(N37), .A1(n602), .B0(RdData[5]), .B1(n550), .Y(n310) );
  MX4X1M U587 ( .A(n520), .B(n518), .C(n519), .D(n517), .S0(N13), .S1(N12), 
        .Y(N37) );
  MX4X1M U588 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(\regArr[3][5] ), 
        .S0(n533), .S1(n530), .Y(n520) );
  MX4X1M U589 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n533), .S1(n530), .Y(n518) );
  AO22XLM U590 ( .A0(N36), .A1(n602), .B0(RdData[6]), .B1(n550), .Y(n311) );
  MX4X1M U591 ( .A(n524), .B(n522), .C(n523), .D(n521), .S0(N13), .S1(N12), 
        .Y(N36) );
  MX4X1M U592 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n533), .S1(n530), .Y(n522) );
  AO22XLM U593 ( .A0(N35), .A1(n602), .B0(RdData[7]), .B1(n550), .Y(n312) );
  MX4X1M U594 ( .A(n528), .B(n526), .C(n527), .D(n525), .S0(N13), .S1(N12), 
        .Y(N35) );
  MX4X1M U595 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(\regArr[3][7] ), 
        .S0(n533), .S1(n530), .Y(n528) );
  MX4X1M U596 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(n533), .S1(n530), .Y(n526) );
  INVX2M U597 ( .A(WrData[0]), .Y(n611) );
  INVX2M U598 ( .A(WrData[1]), .Y(n610) );
  INVX2M U599 ( .A(WrData[2]), .Y(n609) );
  INVX2M U600 ( .A(WrData[3]), .Y(n608) );
  INVX2M U601 ( .A(WrData[4]), .Y(n607) );
  INVX2M U602 ( .A(WrData[5]), .Y(n606) );
  INVX2M U603 ( .A(WrData[6]), .Y(n605) );
  INVX2M U604 ( .A(WrData[7]), .Y(n604) );
  DLY1X1M U605 ( .A(n811), .Y(n749) );
  DLY1X1M U606 ( .A(n812), .Y(n750) );
  DLY1X1M U607 ( .A(n813), .Y(n751) );
  DLY1X1M U608 ( .A(n814), .Y(n752) );
  DLY1X1M U609 ( .A(n863), .Y(n753) );
  DLY1X1M U610 ( .A(n864), .Y(n754) );
  DLY1X1M U611 ( .A(n866), .Y(n755) );
  DLY1X1M U612 ( .A(n867), .Y(n756) );
  DLY1X1M U613 ( .A(n869), .Y(n757) );
  DLY1X1M U614 ( .A(n870), .Y(n758) );
  DLY1X1M U615 ( .A(n871), .Y(n759) );
  DLY1X1M U616 ( .A(n872), .Y(n760) );
  DLY1X1M U617 ( .A(n812), .Y(n761) );
  DLY1X1M U618 ( .A(n874), .Y(n762) );
  DLY1X1M U619 ( .A(n875), .Y(n763) );
  DLY1X1M U620 ( .A(n811), .Y(n764) );
  DLY1X1M U621 ( .A(n877), .Y(n765) );
  DLY1X1M U622 ( .A(n878), .Y(n766) );
  DLY1X1M U623 ( .A(n879), .Y(n767) );
  DLY1X1M U624 ( .A(n880), .Y(n768) );
  DLY1X1M U625 ( .A(n881), .Y(n769) );
  DLY1X1M U626 ( .A(n882), .Y(n770) );
  DLY1X1M U627 ( .A(n841), .Y(n771) );
  DLY1X1M U628 ( .A(n844), .Y(n772) );
  DLY1X1M U629 ( .A(n847), .Y(n773) );
  DLY1X1M U630 ( .A(n816), .Y(n774) );
  DLY1X1M U631 ( .A(n819), .Y(n775) );
  DLY1X1M U632 ( .A(n822), .Y(n776) );
  DLY1X1M U633 ( .A(n825), .Y(n777) );
  DLY1X1M U634 ( .A(n828), .Y(n778) );
  DLY1X1M U635 ( .A(n831), .Y(n779) );
  DLY1X1M U636 ( .A(n834), .Y(n780) );
  DLY1X1M U637 ( .A(n850), .Y(n781) );
  DLY1X1M U638 ( .A(n853), .Y(n782) );
  DLY1X1M U639 ( .A(n856), .Y(n783) );
  DLY1X1M U640 ( .A(n859), .Y(n784) );
  DLY1X1M U641 ( .A(n862), .Y(n785) );
  DLY1X1M U642 ( .A(n815), .Y(n786) );
  DLY1X1M U643 ( .A(n818), .Y(n787) );
  DLY1X1M U644 ( .A(n821), .Y(n788) );
  DLY1X1M U645 ( .A(n824), .Y(n789) );
  DLY1X1M U646 ( .A(n827), .Y(n790) );
  DLY1X1M U647 ( .A(n830), .Y(n791) );
  DLY1X1M U648 ( .A(n833), .Y(n792) );
  DLY1X1M U649 ( .A(n836), .Y(n793) );
  DLY1X1M U650 ( .A(n837), .Y(n794) );
  DLY1X1M U651 ( .A(n839), .Y(n795) );
  DLY1X1M U652 ( .A(n840), .Y(n796) );
  DLY1X1M U653 ( .A(n842), .Y(n797) );
  DLY1X1M U654 ( .A(n843), .Y(n798) );
  DLY1X1M U655 ( .A(n845), .Y(n799) );
  DLY1X1M U656 ( .A(n846), .Y(n800) );
  DLY1X1M U657 ( .A(n848), .Y(n801) );
  DLY1X1M U658 ( .A(n849), .Y(n802) );
  DLY1X1M U659 ( .A(n851), .Y(n803) );
  DLY1X1M U660 ( .A(n852), .Y(n804) );
  DLY1X1M U661 ( .A(n854), .Y(n805) );
  DLY1X1M U662 ( .A(n855), .Y(n806) );
  DLY1X1M U663 ( .A(n857), .Y(n807) );
  DLY1X1M U664 ( .A(n858), .Y(n808) );
  DLY1X1M U665 ( .A(n860), .Y(n809) );
  DLY1X1M U666 ( .A(n861), .Y(n810) );
  DLY1X1M U667 ( .A(n752), .Y(n811) );
  DLY1X1M U668 ( .A(n751), .Y(n812) );
  DLY1X1M U669 ( .A(test_se), .Y(n813) );
  DLY1X1M U670 ( .A(test_se), .Y(n814) );
  DLY1X1M U671 ( .A(n764), .Y(n815) );
  DLY1X1M U672 ( .A(n865), .Y(n816) );
  DLY1X1M U673 ( .A(n764), .Y(n817) );
  DLY1X1M U674 ( .A(n866), .Y(n818) );
  DLY1X1M U675 ( .A(n755), .Y(n819) );
  DLY1X1M U676 ( .A(n755), .Y(n820) );
  DLY1X1M U677 ( .A(n869), .Y(n821) );
  DLY1X1M U678 ( .A(n757), .Y(n822) );
  DLY1X1M U679 ( .A(n757), .Y(n823) );
  DLY1X1M U680 ( .A(n870), .Y(n824) );
  DLY1X1M U681 ( .A(n758), .Y(n825) );
  DLY1X1M U682 ( .A(n758), .Y(n826) );
  DLY1X1M U683 ( .A(n874), .Y(n827) );
  DLY1X1M U684 ( .A(n762), .Y(n828) );
  DLY1X1M U685 ( .A(n762), .Y(n829) );
  DLY1X1M U686 ( .A(n877), .Y(n830) );
  DLY1X1M U687 ( .A(n765), .Y(n831) );
  DLY1X1M U688 ( .A(n765), .Y(n832) );
  DLY1X1M U689 ( .A(n878), .Y(n833) );
  DLY1X1M U690 ( .A(n766), .Y(n834) );
  DLY1X1M U691 ( .A(n766), .Y(n835) );
  DLY1X1M U692 ( .A(n868), .Y(n836) );
  DLY1X1M U693 ( .A(n873), .Y(n837) );
  DLY1X1M U694 ( .A(n761), .Y(n838) );
  DLY1X1M U695 ( .A(n754), .Y(n839) );
  DLY1X1M U696 ( .A(n864), .Y(n840) );
  DLY1X1M U697 ( .A(n754), .Y(n841) );
  DLY1X1M U698 ( .A(n873), .Y(n842) );
  DLY1X1M U699 ( .A(n761), .Y(n843) );
  DLY1X1M U700 ( .A(n868), .Y(n844) );
  DLY1X1M U701 ( .A(n760), .Y(n845) );
  DLY1X1M U702 ( .A(n872), .Y(n846) );
  DLY1X1M U703 ( .A(n760), .Y(n847) );
  DLY1X1M U704 ( .A(n753), .Y(n848) );
  DLY1X1M U705 ( .A(n863), .Y(n849) );
  DLY1X1M U706 ( .A(n753), .Y(n850) );
  DLY1X1M U707 ( .A(n756), .Y(n851) );
  DLY1X1M U708 ( .A(n867), .Y(n852) );
  DLY1X1M U709 ( .A(n756), .Y(n853) );
  DLY1X1M U710 ( .A(n759), .Y(n854) );
  DLY1X1M U711 ( .A(n871), .Y(n855) );
  DLY1X1M U712 ( .A(n759), .Y(n856) );
  DLY1X1M U713 ( .A(n763), .Y(n857) );
  DLY1X1M U714 ( .A(n875), .Y(n858) );
  DLY1X1M U715 ( .A(n763), .Y(n859) );
  DLY1X1M U716 ( .A(n865), .Y(n860) );
  DLY1X1M U717 ( .A(n876), .Y(n861) );
  DLY1X1M U718 ( .A(n876), .Y(n862) );
  DLY1X1M U719 ( .A(n767), .Y(n863) );
  DLY1X1M U720 ( .A(n881), .Y(n864) );
  DLY1X1M U721 ( .A(n749), .Y(n865) );
  DLY1X1M U722 ( .A(n767), .Y(n866) );
  DLY1X1M U723 ( .A(n770), .Y(n867) );
  DLY1X1M U724 ( .A(n750), .Y(n868) );
  DLY1X1M U725 ( .A(n880), .Y(n869) );
  DLY1X1M U726 ( .A(n770), .Y(n870) );
  DLY1X1M U727 ( .A(n768), .Y(n871) );
  DLY1X1M U728 ( .A(n882), .Y(n872) );
  DLY1X1M U729 ( .A(n750), .Y(n873) );
  DLY1X1M U730 ( .A(n768), .Y(n874) );
  DLY1X1M U731 ( .A(n769), .Y(n875) );
  DLY1X1M U732 ( .A(n749), .Y(n876) );
  DLY1X1M U733 ( .A(n879), .Y(n877) );
  DLY1X1M U734 ( .A(n769), .Y(n878) );
  DLY1X1M U735 ( .A(n752), .Y(n879) );
  DLY1X1M U736 ( .A(n813), .Y(n880) );
  DLY1X1M U737 ( .A(n814), .Y(n881) );
  DLY1X1M U738 ( .A(n751), .Y(n882) );
  SDFFRX1M \RdData_reg[7]  ( .D(n312), .SI(RdData[6]), .SE(n784), .CK(CLK), 
        .RN(RST), .QN(n341) );
  SDFFRX1M \RdData_reg[5]  ( .D(n310), .SI(RdData[4]), .SE(n775), .CK(CLK), 
        .RN(n583), .QN(n337) );
  SDFFRX1M \RdData_reg[4]  ( .D(n309), .SI(RdData[3]), .SE(n774), .CK(CLK), 
        .RN(n583), .QN(n331) );
  SDFFRX1M \RdData_reg[3]  ( .D(n308), .SI(RdData[2]), .SE(n776), .CK(CLK), 
        .RN(n583), .QN(n329) );
  SDFFRX1M \RdData_reg[2]  ( .D(n307), .SI(RdData[1]), .SE(n779), .CK(CLK), 
        .RN(n583), .QN(n327) );
  SDFFRX1M \RdData_reg[1]  ( .D(n306), .SI(RdData[0]), .SE(n777), .CK(CLK), 
        .RN(n583), .QN(n335) );
  SDFFRX1M \RdData_reg[0]  ( .D(n305), .SI(test_si1), .SE(n780), .CK(CLK), 
        .RN(n583), .QN(n333) );
  SDFFRX1M \RdData_reg[6]  ( .D(n311), .SI(RdData[5]), .SE(n778), .CK(CLK), 
        .RN(n583), .QN(n339) );
  SDFFRX1M \regArr_reg[1][4]  ( .D(n189), .SI(REG1[3]), .SE(n783), .CK(CLK), 
        .RN(n593), .QN(n343) );
  SDFFRX1M \regArr_reg[1][0]  ( .D(n185), .SI(REG0[7]), .SE(n782), .CK(CLK), 
        .RN(n593), .QN(n349) );
  SDFFRX2M \regArr_reg[0][2]  ( .D(n179), .SI(REG0[1]), .SE(n810), .CK(CLK), 
        .RN(n594), .Q(REG0[2]) );
  SDFFRX2M \regArr_reg[0][3]  ( .D(n180), .SI(REG0[2]), .SE(n843), .CK(CLK), 
        .RN(n594), .Q(REG0[3]) );
  SDFFRX2M \regArr_reg[0][0]  ( .D(n177), .SI(RdData[7]), .SE(n802), .CK(CLK), 
        .RN(n594), .Q(REG0[0]) );
  SDFFRX2M \regArr_reg[0][1]  ( .D(n178), .SI(REG0[0]), .SE(n846), .CK(CLK), 
        .RN(n594), .Q(REG0[1]) );
  SDFFRX2M \regArr_reg[0][5]  ( .D(n182), .SI(REG0[4]), .SE(n794), .CK(CLK), 
        .RN(n593), .Q(REG0[5]) );
  SDFFRX2M \regArr_reg[0][4]  ( .D(n181), .SI(REG0[3]), .SE(n840), .CK(CLK), 
        .RN(n593), .Q(REG0[4]) );
  SDFFRX2M \regArr_reg[2][5]  ( .D(n198), .SI(REG2[4]), .SE(n842), .CK(CLK), 
        .RN(n592), .Q(REG2[5]) );
  SDFFRX2M \regArr_reg[2][6]  ( .D(n199), .SI(REG2[5]), .SE(n839), .CK(CLK), 
        .RN(n592), .Q(REG2[6]) );
  SDFFRX2M \regArr_reg[2][1]  ( .D(n194), .SI(REG2[0]), .SE(n803), .CK(CLK), 
        .RN(n592), .Q(REG2[1]) );
  SDFFRX2M \regArr_reg[2][2]  ( .D(n195), .SI(REG2[1]), .SE(n801), .CK(CLK), 
        .RN(n592), .Q(REG2[2]) );
  INVXLM U3 ( .A(n883), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n2) );
  INVXLM U5 ( .A(n20), .Y(n3) );
  INVX2M U6 ( .A(n3), .Y(REG2[0]) );
  INVXLM U7 ( .A(n16), .Y(n5) );
  INVX2M U8 ( .A(n5), .Y(REG1[6]) );
  INVXLM U9 ( .A(n19), .Y(n7) );
  INVX2M U10 ( .A(n7), .Y(REG2[3]) );
  INVXLM U11 ( .A(n18), .Y(n9) );
  INVX2M U12 ( .A(n9), .Y(REG2[4]) );
  INVXLM U13 ( .A(n17), .Y(n11) );
  INVX2M U14 ( .A(n11), .Y(REG2[7]) );
  INVXLM U15 ( .A(n15), .Y(n13) );
  INVX2M U16 ( .A(n13), .Y(REG0[7]) );
  MX4XLM U17 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(\regArr[3][0] ), .S0(
        n531), .S1(N11), .Y(n500) );
  MX4XLM U18 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(\regArr[3][2] ), .S0(
        n532), .S1(n529), .Y(n508) );
endmodule


module CLK_GATE ( test_en, CLK_EN, CLK, GATED_CLK );
  input test_en, CLK_EN, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_en), .Y(_0_net_) );
endmodule


module ClkDiv_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n1, n2;
  wire   [7:0] i_div_ratio_reg;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFQX1M \i_div_ratio_reg_reg[0]  ( .D(i_div_ratio[0]), .SI(n83), .SE(n100), 
        .CK(i_ref_clk), .Q(i_div_ratio_reg[0]) );
  SDFFQX2M \i_div_ratio_reg_reg[7]  ( .D(i_div_ratio[7]), .SI(n104), .SE(n94), 
        .CK(i_ref_clk), .Q(i_div_ratio_reg[7]) );
  SDFFQX2M \i_div_ratio_reg_reg[6]  ( .D(i_div_ratio[6]), .SI(n54), .SE(n97), 
        .CK(i_ref_clk), .Q(i_div_ratio_reg[6]) );
  SDFFQX2M \i_div_ratio_reg_reg[5]  ( .D(i_div_ratio[5]), .SI(n109), .SE(n100), 
        .CK(i_ref_clk), .Q(i_div_ratio_reg[5]) );
  SDFFQX2M \i_div_ratio_reg_reg[4]  ( .D(i_div_ratio[4]), .SI(n103), .SE(n93), 
        .CK(i_ref_clk), .Q(i_div_ratio_reg[4]) );
  SDFFQX2M \i_div_ratio_reg_reg[3]  ( .D(i_div_ratio[3]), .SI(
        i_div_ratio_reg[2]), .SE(n101), .CK(i_ref_clk), .Q(i_div_ratio_reg[3])
         );
  SDFFQX2M \i_div_ratio_reg_reg[2]  ( .D(i_div_ratio[2]), .SI(
        edge_flip_half[0]), .SE(n98), .CK(i_ref_clk), .Q(i_div_ratio_reg[2])
         );
  SDFFQX2M \i_div_ratio_reg_reg[1]  ( .D(i_div_ratio[1]), .SI(n112), .SE(n102), 
        .CK(i_ref_clk), .Q(i_div_ratio_reg[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n34), .SI(i_div_ratio_reg[7]), .SE(n99), 
        .CK(i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRX1M div_clk_reg ( .D(n35), .SI(n108), .SE(n92), .CK(i_ref_clk), .RN(
        i_rst), .Q(div_clk), .QN(n83) );
  SDFFRQX2M \count_reg[6]  ( .D(n36), .SI(n107), .SE(n91), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[5]  ( .D(n37), .SI(n106), .SE(n93), .CK(i_ref_clk), 
        .RN(n47), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n38), .SI(n105), .SE(n91), .CK(i_ref_clk), 
        .RN(n47), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n39), .SI(n111), .SE(n90), .CK(i_ref_clk), 
        .RN(n47), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n40), .SI(n110), .SE(n94), .CK(i_ref_clk), 
        .RN(n47), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n41), .SI(n2), .SE(n92), .CK(i_ref_clk), .RN(
        n47), .Q(count[1]) );
  INVX4M U5 ( .A(n48), .Y(n47) );
  NOR4X2M U39 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n69) );
  NOR2X4M U40 ( .A(n50), .B(i_div_ratio_reg[4]), .Y(n51) );
  AND3X4M U41 ( .A(n57), .B(n58), .C(n82), .Y(n56) );
  NAND4X2M U42 ( .A(n66), .B(n67), .C(n68), .D(n69), .Y(n60) );
  NAND2BX2M U43 ( .AN(i_div_ratio_reg[2]), .B(edge_flip_half[0]), .Y(n49) );
  OR2X2M U44 ( .A(n49), .B(i_div_ratio_reg[3]), .Y(n50) );
  AO22XLM U45 ( .A0(n106), .A1(n46), .B0(N20), .B1(n56), .Y(n38) );
  AO22XLM U46 ( .A0(n107), .A1(n46), .B0(N21), .B1(n56), .Y(n37) );
  AO22XLM U47 ( .A0(n46), .A1(n110), .B0(N17), .B1(n56), .Y(n41) );
  AO22XLM U48 ( .A0(n46), .A1(n111), .B0(N18), .B1(n56), .Y(n40) );
  AO22XLM U49 ( .A0(n105), .A1(n46), .B0(N19), .B1(n56), .Y(n39) );
  AO22XLM U50 ( .A0(n108), .A1(n46), .B0(N22), .B1(n56), .Y(n36) );
  OAI2BB1XLM U51 ( .A0N(n49), .A1N(i_div_ratio_reg[3]), .B0(n50), .Y(
        edge_flip_half[2]) );
  OAI2BB1XLM U52 ( .A0N(i_div_ratio_reg[1]), .A1N(i_div_ratio_reg[2]), .B0(n49), .Y(edge_flip_half[1]) );
  INVX2M U53 ( .A(i_rst), .Y(n48) );
  INVX2M U54 ( .A(i_div_ratio_reg[1]), .Y(edge_flip_half[0]) );
  CLKBUFX6M U55 ( .A(n55), .Y(n46) );
  OAI21X2M U56 ( .A0(n62), .A1(n63), .B0(i_clk_en), .Y(n55) );
  INVX2M U57 ( .A(i_div_ratio_reg[5]), .Y(n54) );
  MX2XLM U58 ( .A(i_ref_clk), .B(div_clk), .S0(n82), .Y(o_div_clk) );
  AO21XLM U59 ( .A0(n50), .A1(i_div_ratio_reg[4]), .B0(n51), .Y(
        edge_flip_half[3]) );
  CLKNAND2X2M U60 ( .A(n51), .B(n54), .Y(n52) );
  OAI21X1M U61 ( .A0(n51), .A1(n54), .B0(n52), .Y(edge_flip_half[4]) );
  XNOR2X1M U62 ( .A(i_div_ratio_reg[6]), .B(n52), .Y(edge_flip_half[5]) );
  NOR2X1M U63 ( .A(i_div_ratio_reg[6]), .B(n52), .Y(n53) );
  CLKXOR2X2M U64 ( .A(i_div_ratio_reg[7]), .B(n53), .Y(edge_flip_half[6]) );
  AO22X1M U65 ( .A0(n46), .A1(n2), .B0(N16), .B1(n56), .Y(n42) );
  CLKINVX1M U66 ( .A(n46), .Y(n82) );
  CLKXOR2X2M U67 ( .A(div_clk), .B(n59), .Y(n35) );
  AOI21X1M U68 ( .A0(n58), .A1(n57), .B0(n46), .Y(n59) );
  OR2X1M U69 ( .A(n60), .B(n112), .Y(n57) );
  XNOR2X1M U70 ( .A(n113), .B(n61), .Y(n34) );
  OR2X1M U71 ( .A(n58), .B(n46), .Y(n61) );
  OR3X1M U72 ( .A(i_div_ratio_reg[2]), .B(n103), .C(i_div_ratio_reg[1]), .Y(
        n63) );
  OR4X1M U73 ( .A(n109), .B(i_div_ratio_reg[5]), .C(n104), .D(
        i_div_ratio_reg[7]), .Y(n62) );
  CLKNAND2X2M U74 ( .A(n64), .B(i_div_ratio_reg[0]), .Y(n58) );
  MXI2X1M U75 ( .A(n65), .B(n60), .S0(n113), .Y(n64) );
  CLKXOR2X2M U76 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n73) );
  CLKXOR2X2M U77 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n72) );
  CLKXOR2X2M U78 ( .A(edge_flip_half[0]), .B(n2), .Y(n71) );
  CLKXOR2X2M U79 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n70) );
  XNOR2X1M U80 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n68) );
  XNOR2X1M U81 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n67) );
  XNOR2X1M U82 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n66) );
  NAND4X1M U83 ( .A(n74), .B(n75), .C(n76), .D(n77), .Y(n65) );
  NOR4X1M U84 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n77) );
  CLKXOR2X2M U85 ( .A(count[2]), .B(i_div_ratio_reg[3]), .Y(n81) );
  CLKXOR2X2M U86 ( .A(count[1]), .B(i_div_ratio_reg[2]), .Y(n80) );
  CLKXOR2X2M U87 ( .A(i_div_ratio_reg[1]), .B(n2), .Y(n79) );
  CLKXOR2X2M U88 ( .A(i_div_ratio_reg[7]), .B(count[6]), .Y(n78) );
  XNOR2X1M U89 ( .A(count[4]), .B(i_div_ratio_reg[5]), .Y(n76) );
  XNOR2X1M U90 ( .A(i_div_ratio_reg[6]), .B(count[5]), .Y(n75) );
  XNOR2X1M U91 ( .A(count[3]), .B(i_div_ratio_reg[4]), .Y(n74) );
  DLY1X1M U92 ( .A(test_se), .Y(n87) );
  DLY1X1M U93 ( .A(n95), .Y(n88) );
  DLY1X1M U94 ( .A(n96), .Y(n89) );
  DLY1X1M U95 ( .A(n99), .Y(n90) );
  DLY1X1M U96 ( .A(n102), .Y(n91) );
  DLY1X1M U97 ( .A(n98), .Y(n92) );
  DLY1X1M U98 ( .A(n97), .Y(n93) );
  DLY1X1M U99 ( .A(n101), .Y(n94) );
  DLY1X1M U100 ( .A(n87), .Y(n95) );
  DLY1X1M U101 ( .A(n87), .Y(n96) );
  DLY1X1M U102 ( .A(n95), .Y(n97) );
  DLY1X1M U103 ( .A(n89), .Y(n98) );
  DLY1X1M U104 ( .A(n88), .Y(n99) );
  DLY1X1M U105 ( .A(n89), .Y(n100) );
  DLY1X1M U106 ( .A(n96), .Y(n101) );
  DLY1X1M U107 ( .A(n88), .Y(n102) );
  DLY1X1M U108 ( .A(i_div_ratio_reg[3]), .Y(n103) );
  DLY1X1M U109 ( .A(i_div_ratio_reg[6]), .Y(n104) );
  DLY1X1M U110 ( .A(count[3]), .Y(n105) );
  DLY1X1M U111 ( .A(count[4]), .Y(n106) );
  DLY1X1M U112 ( .A(count[5]), .Y(n107) );
  DLY1X1M U113 ( .A(count[6]), .Y(n108) );
  DLY1X1M U114 ( .A(i_div_ratio_reg[4]), .Y(n109) );
  DLY1X1M U115 ( .A(count[1]), .Y(n110) );
  DLY1X1M U116 ( .A(count[2]), .Y(n111) );
  DLY1X1M U117 ( .A(i_div_ratio_reg[0]), .Y(n112) );
  DLY1X1M U118 ( .A(odd_edge_tog), .Y(n113) );
  ClkDiv_DW01_inc_0 add_52 ( .A({count[6:1], n2}), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  SDFFRQX1M \count_reg[0]  ( .D(n42), .SI(test_si), .SE(n90), .CK(i_ref_clk), 
        .RN(i_rst), .Q(n84) );
  INVXLM U3 ( .A(n84), .Y(n1) );
  INVX4M U4 ( .A(n1), .Y(n2) );
endmodule


module System_Top ( SI, SE, scan_clk, scan_rst, test_mode, SO, CLKDIV_EN, 
        CLKG_EN, CLK, RST, ALU_FUN, ALU_Enable, WrEn, RdEn, Address, WrData, 
        RdData, ALU_VLD, ALU_OUT, test_si2, test_so2 );
  input [3:0] ALU_FUN;
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] ALU_OUT;
  input SI, SE, scan_clk, scan_rst, test_mode, CLKDIV_EN, CLKG_EN, CLK, RST,
         ALU_Enable, WrEn, RdEn, test_si2;
  output SO, ALU_VLD, test_so2;
  wire   CLK_M, REG_CLK, CLK_M2, RST_M, ALU_CLK, n1, n2, n3, n4, n5, n6, n7,
         n11, n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [7:0] ALU_A;
  wire   [7:0] ALU_B;
  wire   [7:0] CLKDIV_Config;
  assign SO = ALU_OUT[7];

  INVX6M U1 ( .A(n7), .Y(n6) );
  BUFX4M U2 ( .A(ALU_FUN[3]), .Y(n5) );
  CLKBUFX6M U3 ( .A(Address[3]), .Y(n2) );
  BUFX6M U4 ( .A(Address[2]), .Y(n1) );
  BUFX4M U5 ( .A(ALU_FUN[0]), .Y(n3) );
  BUFX4M U6 ( .A(ALU_FUN[2]), .Y(n4) );
  INVX2M U7 ( .A(RST_M), .Y(n7) );
  INVXLM U8 ( .A(SE), .Y(n14) );
  DLY1X1M U9 ( .A(n17), .Y(n15) );
  INVXLM U10 ( .A(n23), .Y(n16) );
  INVXLM U11 ( .A(n16), .Y(n17) );
  DLY1X1M U12 ( .A(n15), .Y(n18) );
  DLY1X1M U13 ( .A(n21), .Y(n19) );
  INVXLM U14 ( .A(n24), .Y(n20) );
  INVXLM U15 ( .A(n20), .Y(n21) );
  INVXLM U16 ( .A(SE), .Y(n22) );
  INVXLM U17 ( .A(n14), .Y(n23) );
  INVXLM U18 ( .A(n22), .Y(n24) );
  mux2X1_0 U0_mux2X1 ( .IN_0(CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_2 U1_mux2X1 ( .IN_0(REG_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M2) );
  mux2X1_1 U2_mux2X1 ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_M) );
  ALU_test_1 U0_ALU ( .A(ALU_A), .B(ALU_B), .ALU_FUN({n5, n4, ALU_FUN[1], n3}), 
        .CLK(ALU_CLK), .RST(n6), .Enable(ALU_Enable), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_VLD), .test_si2(n11), .test_si1(SI), .test_se(n19) );
  RegFile_test_1 U0_RegFile ( .CLK(CLK_M2), .RST(n6), .WrEn(WrEn), .RdEn(RdEn), 
        .Address({n2, n1, Address[1:0]}), .WrData(WrData), .RdData(RdData), 
        .REG0(ALU_A), .REG1(ALU_B), .REG2(CLKDIV_Config), .test_si2(test_si2), 
        .test_si1(n12), .test_so2(test_so2), .test_so1(n11), .test_se(n18) );
  CLK_GATE U0_CLK_GATE ( .test_en(test_mode), .CLK_EN(CLKG_EN), .CLK(CLK_M), 
        .GATED_CLK(ALU_CLK) );
  ClkDiv_test_1 U0_ClkDiv ( .i_ref_clk(CLK_M), .i_rst(n6), .i_clk_en(CLKDIV_EN), .i_div_ratio(CLKDIV_Config), .o_div_clk(REG_CLK), .test_si(ALU_VLD), 
        .test_so(n12), .test_se(n15) );
endmodule

