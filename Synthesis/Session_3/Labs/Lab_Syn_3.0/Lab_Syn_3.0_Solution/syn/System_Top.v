/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Aug 10 17:11:05 2025
/////////////////////////////////////////////////////////////


module RegFile ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, REG0, REG1, 
        REG2 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  input CLK, RST, WrEn, RdEn;
  wire   n383, n399, n378, n379, n380, n267, n268, n269, n270, n271,
         \regArr[15][7] , \regArr[15][6] , \regArr[15][5] , \regArr[15][4] ,
         \regArr[15][3] , \regArr[15][2] , \regArr[15][1] , \regArr[15][0] ,
         \regArr[14][7] , \regArr[14][6] , \regArr[14][5] , \regArr[14][4] ,
         \regArr[14][3] , \regArr[14][2] , \regArr[14][1] , \regArr[14][0] ,
         \regArr[13][7] , \regArr[13][6] , \regArr[13][5] , \regArr[13][4] ,
         \regArr[13][3] , \regArr[13][2] , \regArr[13][1] , \regArr[13][0] ,
         \regArr[12][7] , \regArr[12][6] , \regArr[12][5] , \regArr[12][4] ,
         \regArr[12][3] , \regArr[12][2] , \regArr[12][1] , \regArr[12][0] ,
         \regArr[11][7] , \regArr[11][6] , \regArr[11][5] , \regArr[11][4] ,
         \regArr[11][3] , \regArr[11][2] , \regArr[11][1] , \regArr[11][0] ,
         \regArr[10][7] , \regArr[10][6] , \regArr[10][5] , \regArr[10][4] ,
         \regArr[10][3] , \regArr[10][2] , \regArr[10][1] , \regArr[10][0] ,
         \regArr[9][7] , \regArr[9][6] , \regArr[9][5] , \regArr[9][4] ,
         \regArr[9][3] , \regArr[9][2] , \regArr[9][1] , \regArr[9][0] ,
         \regArr[8][7] , \regArr[8][6] , \regArr[8][5] , \regArr[8][4] ,
         \regArr[8][3] , \regArr[8][2] , \regArr[8][1] , \regArr[8][0] ,
         \regArr[7][7] , \regArr[7][6] , \regArr[7][5] , \regArr[7][4] ,
         \regArr[7][3] , \regArr[7][2] , \regArr[7][1] , \regArr[7][0] ,
         \regArr[6][7] , \regArr[6][6] , \regArr[6][5] , \regArr[6][4] ,
         \regArr[6][3] , \regArr[6][2] , \regArr[6][1] , \regArr[6][0] ,
         \regArr[5][7] , \regArr[5][6] , \regArr[5][5] , \regArr[5][4] ,
         \regArr[5][3] , \regArr[5][2] , \regArr[5][1] , \regArr[5][0] ,
         \regArr[4][7] , \regArr[4][6] , \regArr[4][5] , \regArr[4][4] ,
         \regArr[4][3] , \regArr[4][2] , \regArr[4][1] , \regArr[4][0] ,
         \regArr[3][7] , \regArr[3][6] , \regArr[3][5] , \regArr[3][4] ,
         \regArr[3][3] , \regArr[3][2] , \regArr[3][1] , \regArr[3][0] , N36,
         N37, N38, N39, N40, N41, N42, N43, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n381, n320, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n202, n321, n323, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n382, n384, n385, n400, n401, n402;
  assign REG0[0] = n399;
  assign REG0[4] = n379;
  assign REG1[3] = n380;
  assign REG1[5] = n268;
  assign REG1[4] = n269;

  BUFX6M U324 ( .A(n397), .Y(n387) );
  CLKBUFX8M U381 ( .A(n397), .Y(n386) );
  CLKBUFX8M U382 ( .A(n398), .Y(n388) );
  CLKBUFX8M U383 ( .A(n397), .Y(n389) );
  CLKBUFX8M U384 ( .A(n398), .Y(n391) );
  CLKBUFX8M U385 ( .A(n396), .Y(n392) );
  CLKBUFX8M U386 ( .A(n396), .Y(n393) );
  CLKBUFX8M U387 ( .A(n398), .Y(n394) );
  CLKBUFX8M U388 ( .A(n396), .Y(n390) );
  BUFX6M U389 ( .A(n397), .Y(n395) );
  BUFX2M U420 ( .A(n398), .Y(n397) );
  BUFX2M U421 ( .A(n386), .Y(n396) );
  BUFX2M U518 ( .A(RST), .Y(n398) );
  AND3X4M U648 ( .A(n201), .B(n386), .C(RdEn), .Y(n320) );
  EDFFHQX2M \RdData_reg[7]  ( .D(N36), .E(n320), .CK(CLK), .Q(RdData[7]) );
  EDFFHQX2M \RdData_reg[6]  ( .D(N37), .E(n320), .CK(CLK), .Q(RdData[6]) );
  EDFFHQX2M \RdData_reg[5]  ( .D(N38), .E(n320), .CK(CLK), .Q(RdData[5]) );
  EDFFHQX2M \RdData_reg[4]  ( .D(N39), .E(n320), .CK(CLK), .Q(RdData[4]) );
  EDFFHQX2M \RdData_reg[3]  ( .D(N40), .E(n320), .CK(CLK), .Q(RdData[3]) );
  EDFFHQX2M \RdData_reg[2]  ( .D(N41), .E(n320), .CK(CLK), .Q(RdData[2]) );
  EDFFHQX2M \RdData_reg[1]  ( .D(N42), .E(n320), .CK(CLK), .Q(RdData[1]) );
  EDFFHQX2M \RdData_reg[0]  ( .D(N43), .E(n320), .CK(CLK), .Q(RdData[0]) );
  DFFRQX1M \regArr_reg[11][7]  ( .D(n135), .CK(CLK), .RN(n390), .Q(
        \regArr[11][7] ) );
  DFFRQX1M \regArr_reg[11][6]  ( .D(n134), .CK(CLK), .RN(n390), .Q(
        \regArr[11][6] ) );
  DFFRQX1M \regArr_reg[11][5]  ( .D(n133), .CK(CLK), .RN(n390), .Q(
        \regArr[11][5] ) );
  DFFRQX1M \regArr_reg[11][4]  ( .D(n132), .CK(CLK), .RN(n390), .Q(
        \regArr[11][4] ) );
  DFFRQX1M \regArr_reg[11][3]  ( .D(n131), .CK(CLK), .RN(n390), .Q(
        \regArr[11][3] ) );
  DFFRQX1M \regArr_reg[11][2]  ( .D(n130), .CK(CLK), .RN(n389), .Q(
        \regArr[11][2] ) );
  DFFRQX1M \regArr_reg[11][1]  ( .D(n129), .CK(CLK), .RN(n389), .Q(
        \regArr[11][1] ) );
  DFFRQX1M \regArr_reg[11][0]  ( .D(n128), .CK(CLK), .RN(n389), .Q(
        \regArr[11][0] ) );
  DFFRQX1M \regArr_reg[10][7]  ( .D(n127), .CK(CLK), .RN(n389), .Q(
        \regArr[10][7] ) );
  DFFRQX1M \regArr_reg[10][6]  ( .D(n126), .CK(CLK), .RN(n389), .Q(
        \regArr[10][6] ) );
  DFFRQX1M \regArr_reg[10][5]  ( .D(n125), .CK(CLK), .RN(n389), .Q(
        \regArr[10][5] ) );
  DFFRQX1M \regArr_reg[10][4]  ( .D(n124), .CK(CLK), .RN(n389), .Q(
        \regArr[10][4] ) );
  DFFRQX1M \regArr_reg[10][3]  ( .D(n123), .CK(CLK), .RN(n389), .Q(
        \regArr[10][3] ) );
  DFFRQX1M \regArr_reg[10][2]  ( .D(n122), .CK(CLK), .RN(n389), .Q(
        \regArr[10][2] ) );
  DFFRQX1M \regArr_reg[10][1]  ( .D(n121), .CK(CLK), .RN(n389), .Q(
        \regArr[10][1] ) );
  DFFRQX1M \regArr_reg[10][0]  ( .D(n120), .CK(CLK), .RN(n389), .Q(
        \regArr[10][0] ) );
  DFFRQX1M \regArr_reg[9][7]  ( .D(n119), .CK(CLK), .RN(n391), .Q(
        \regArr[9][7] ) );
  DFFRQX1M \regArr_reg[9][6]  ( .D(n118), .CK(CLK), .RN(n390), .Q(
        \regArr[9][6] ) );
  DFFRQX1M \regArr_reg[9][5]  ( .D(n117), .CK(CLK), .RN(n390), .Q(
        \regArr[9][5] ) );
  DFFRQX1M \regArr_reg[9][4]  ( .D(n116), .CK(CLK), .RN(n390), .Q(
        \regArr[9][4] ) );
  DFFRQX1M \regArr_reg[9][3]  ( .D(n115), .CK(CLK), .RN(n390), .Q(
        \regArr[9][3] ) );
  DFFRQX1M \regArr_reg[9][2]  ( .D(n114), .CK(CLK), .RN(n390), .Q(
        \regArr[9][2] ) );
  DFFRQX1M \regArr_reg[9][1]  ( .D(n113), .CK(CLK), .RN(n390), .Q(
        \regArr[9][1] ) );
  DFFRQX1M \regArr_reg[9][0]  ( .D(n112), .CK(CLK), .RN(n390), .Q(
        \regArr[9][0] ) );
  DFFRQX1M \regArr_reg[8][7]  ( .D(n111), .CK(CLK), .RN(n389), .Q(
        \regArr[8][7] ) );
  DFFRQX1M \regArr_reg[8][6]  ( .D(n110), .CK(CLK), .RN(n389), .Q(
        \regArr[8][6] ) );
  DFFRQX1M \regArr_reg[8][5]  ( .D(n109), .CK(CLK), .RN(n388), .Q(
        \regArr[8][5] ) );
  DFFRQX1M \regArr_reg[8][4]  ( .D(n108), .CK(CLK), .RN(n388), .Q(
        \regArr[8][4] ) );
  DFFRQX1M \regArr_reg[8][3]  ( .D(n107), .CK(CLK), .RN(n388), .Q(
        \regArr[8][3] ) );
  DFFRQX1M \regArr_reg[8][2]  ( .D(n106), .CK(CLK), .RN(n388), .Q(
        \regArr[8][2] ) );
  DFFRQX1M \regArr_reg[8][1]  ( .D(n105), .CK(CLK), .RN(n388), .Q(
        \regArr[8][1] ) );
  DFFRQX1M \regArr_reg[8][0]  ( .D(n104), .CK(CLK), .RN(n388), .Q(
        \regArr[8][0] ) );
  DFFRQX1M \regArr_reg[13][7]  ( .D(n151), .CK(CLK), .RN(n393), .Q(
        \regArr[13][7] ) );
  DFFRQX1M \regArr_reg[13][6]  ( .D(n150), .CK(CLK), .RN(n393), .Q(
        \regArr[13][6] ) );
  DFFRQX1M \regArr_reg[13][5]  ( .D(n149), .CK(CLK), .RN(n393), .Q(
        \regArr[13][5] ) );
  DFFRQX1M \regArr_reg[13][4]  ( .D(n148), .CK(CLK), .RN(n393), .Q(
        \regArr[13][4] ) );
  DFFRQX1M \regArr_reg[13][3]  ( .D(n147), .CK(CLK), .RN(n393), .Q(
        \regArr[13][3] ) );
  DFFRQX1M \regArr_reg[13][2]  ( .D(n146), .CK(CLK), .RN(n393), .Q(
        \regArr[13][2] ) );
  DFFRQX1M \regArr_reg[13][1]  ( .D(n145), .CK(CLK), .RN(n393), .Q(
        \regArr[13][1] ) );
  DFFRQX1M \regArr_reg[13][0]  ( .D(n144), .CK(CLK), .RN(n392), .Q(
        \regArr[13][0] ) );
  DFFRQX1M \regArr_reg[12][7]  ( .D(n143), .CK(CLK), .RN(n392), .Q(
        \regArr[12][7] ) );
  DFFRQX1M \regArr_reg[12][6]  ( .D(n142), .CK(CLK), .RN(n392), .Q(
        \regArr[12][6] ) );
  DFFRQX1M \regArr_reg[12][5]  ( .D(n141), .CK(CLK), .RN(n392), .Q(
        \regArr[12][5] ) );
  DFFRQX1M \regArr_reg[12][4]  ( .D(n140), .CK(CLK), .RN(n392), .Q(
        \regArr[12][4] ) );
  DFFRQX1M \regArr_reg[12][3]  ( .D(n139), .CK(CLK), .RN(n392), .Q(
        \regArr[12][3] ) );
  DFFRQX1M \regArr_reg[12][2]  ( .D(n138), .CK(CLK), .RN(n392), .Q(
        \regArr[12][2] ) );
  DFFRQX1M \regArr_reg[12][1]  ( .D(n137), .CK(CLK), .RN(n392), .Q(
        \regArr[12][1] ) );
  DFFRQX1M \regArr_reg[12][0]  ( .D(n136), .CK(CLK), .RN(n392), .Q(
        \regArr[12][0] ) );
  DFFRQX1M \regArr_reg[15][7]  ( .D(n167), .CK(CLK), .RN(n392), .Q(
        \regArr[15][7] ) );
  DFFRQX1M \regArr_reg[15][6]  ( .D(n166), .CK(CLK), .RN(n392), .Q(
        \regArr[15][6] ) );
  DFFRQX1M \regArr_reg[15][5]  ( .D(n165), .CK(CLK), .RN(n392), .Q(
        \regArr[15][5] ) );
  DFFRQX1M \regArr_reg[15][4]  ( .D(n164), .CK(CLK), .RN(n392), .Q(
        \regArr[15][4] ) );
  DFFRQX1M \regArr_reg[15][3]  ( .D(n163), .CK(CLK), .RN(n391), .Q(
        \regArr[15][3] ) );
  DFFRQX1M \regArr_reg[15][2]  ( .D(n162), .CK(CLK), .RN(n391), .Q(
        \regArr[15][2] ) );
  DFFRQX1M \regArr_reg[15][1]  ( .D(n161), .CK(CLK), .RN(n391), .Q(
        \regArr[15][1] ) );
  DFFRQX1M \regArr_reg[15][0]  ( .D(n160), .CK(CLK), .RN(n391), .Q(
        \regArr[15][0] ) );
  DFFRQX1M \regArr_reg[14][7]  ( .D(n159), .CK(CLK), .RN(n391), .Q(
        \regArr[14][7] ) );
  DFFRQX1M \regArr_reg[14][6]  ( .D(n158), .CK(CLK), .RN(n391), .Q(
        \regArr[14][6] ) );
  DFFRQX1M \regArr_reg[14][5]  ( .D(n157), .CK(CLK), .RN(n391), .Q(
        \regArr[14][5] ) );
  DFFRQX1M \regArr_reg[14][4]  ( .D(n156), .CK(CLK), .RN(n391), .Q(
        \regArr[14][4] ) );
  DFFRQX1M \regArr_reg[14][3]  ( .D(n155), .CK(CLK), .RN(n391), .Q(
        \regArr[14][3] ) );
  DFFRQX1M \regArr_reg[14][2]  ( .D(n154), .CK(CLK), .RN(n391), .Q(
        \regArr[14][2] ) );
  DFFRQX1M \regArr_reg[14][1]  ( .D(n153), .CK(CLK), .RN(n391), .Q(
        \regArr[14][1] ) );
  DFFRQX1M \regArr_reg[14][0]  ( .D(n152), .CK(CLK), .RN(n391), .Q(
        \regArr[14][0] ) );
  DFFRQX1M \regArr_reg[6][7]  ( .D(n95), .CK(CLK), .RN(n394), .Q(
        \regArr[6][7] ) );
  DFFRQX1M \regArr_reg[6][6]  ( .D(n94), .CK(CLK), .RN(n394), .Q(
        \regArr[6][6] ) );
  DFFRQX1M \regArr_reg[6][5]  ( .D(n93), .CK(CLK), .RN(n394), .Q(
        \regArr[6][5] ) );
  DFFRQX1M \regArr_reg[6][4]  ( .D(n92), .CK(CLK), .RN(n394), .Q(
        \regArr[6][4] ) );
  DFFRQX1M \regArr_reg[6][3]  ( .D(n91), .CK(CLK), .RN(n394), .Q(
        \regArr[6][3] ) );
  DFFRQX1M \regArr_reg[6][2]  ( .D(n90), .CK(CLK), .RN(n394), .Q(
        \regArr[6][2] ) );
  DFFRQX1M \regArr_reg[6][1]  ( .D(n89), .CK(CLK), .RN(n394), .Q(
        \regArr[6][1] ) );
  DFFRQX1M \regArr_reg[6][0]  ( .D(n88), .CK(CLK), .RN(n394), .Q(
        \regArr[6][0] ) );
  DFFRQX1M \regArr_reg[4][7]  ( .D(n79), .CK(CLK), .RN(n394), .Q(
        \regArr[4][7] ) );
  DFFRQX1M \regArr_reg[4][6]  ( .D(n78), .CK(CLK), .RN(n394), .Q(
        \regArr[4][6] ) );
  DFFRQX1M \regArr_reg[4][5]  ( .D(n77), .CK(CLK), .RN(n393), .Q(
        \regArr[4][5] ) );
  DFFRQX1M \regArr_reg[4][4]  ( .D(n76), .CK(CLK), .RN(n393), .Q(
        \regArr[4][4] ) );
  DFFRQX1M \regArr_reg[4][3]  ( .D(n75), .CK(CLK), .RN(n393), .Q(
        \regArr[4][3] ) );
  DFFRQX1M \regArr_reg[4][2]  ( .D(n74), .CK(CLK), .RN(n393), .Q(
        \regArr[4][2] ) );
  DFFRQX1M \regArr_reg[4][1]  ( .D(n73), .CK(CLK), .RN(n393), .Q(
        \regArr[4][1] ) );
  DFFRQX1M \regArr_reg[4][0]  ( .D(n72), .CK(CLK), .RN(n393), .Q(
        \regArr[4][0] ) );
  DFFRQX1M \regArr_reg[5][7]  ( .D(n87), .CK(CLK), .RN(n386), .Q(
        \regArr[5][7] ) );
  DFFRQX1M \regArr_reg[5][6]  ( .D(n86), .CK(CLK), .RN(n395), .Q(
        \regArr[5][6] ) );
  DFFRQX1M \regArr_reg[5][5]  ( .D(n85), .CK(CLK), .RN(n395), .Q(
        \regArr[5][5] ) );
  DFFRQX1M \regArr_reg[5][4]  ( .D(n84), .CK(CLK), .RN(n395), .Q(
        \regArr[5][4] ) );
  DFFRQX1M \regArr_reg[5][3]  ( .D(n83), .CK(CLK), .RN(n395), .Q(
        \regArr[5][3] ) );
  DFFRQX1M \regArr_reg[5][2]  ( .D(n82), .CK(CLK), .RN(n395), .Q(
        \regArr[5][2] ) );
  DFFRQX1M \regArr_reg[5][1]  ( .D(n81), .CK(CLK), .RN(n395), .Q(
        \regArr[5][1] ) );
  DFFRQX1M \regArr_reg[5][0]  ( .D(n80), .CK(CLK), .RN(n395), .Q(
        \regArr[5][0] ) );
  DFFRQX1M \regArr_reg[7][7]  ( .D(n103), .CK(CLK), .RN(n395), .Q(
        \regArr[7][7] ) );
  DFFRQX1M \regArr_reg[7][6]  ( .D(n102), .CK(CLK), .RN(n395), .Q(
        \regArr[7][6] ) );
  DFFRQX1M \regArr_reg[7][5]  ( .D(n101), .CK(CLK), .RN(n395), .Q(
        \regArr[7][5] ) );
  DFFRQX1M \regArr_reg[7][4]  ( .D(n100), .CK(CLK), .RN(n395), .Q(
        \regArr[7][4] ) );
  DFFRQX1M \regArr_reg[7][3]  ( .D(n99), .CK(CLK), .RN(n395), .Q(
        \regArr[7][3] ) );
  DFFRQX1M \regArr_reg[7][2]  ( .D(n98), .CK(CLK), .RN(n394), .Q(
        \regArr[7][2] ) );
  DFFRQX1M \regArr_reg[7][1]  ( .D(n97), .CK(CLK), .RN(n394), .Q(
        \regArr[7][1] ) );
  DFFRQX1M \regArr_reg[7][0]  ( .D(n96), .CK(CLK), .RN(n394), .Q(
        \regArr[7][0] ) );
  DFFRQX1M \regArr_reg[3][7]  ( .D(n71), .CK(CLK), .RN(n388), .Q(
        \regArr[3][7] ) );
  DFFRQX1M \regArr_reg[3][6]  ( .D(n70), .CK(CLK), .RN(n388), .Q(
        \regArr[3][6] ) );
  DFFRQX1M \regArr_reg[3][5]  ( .D(n69), .CK(CLK), .RN(n388), .Q(
        \regArr[3][5] ) );
  DFFRQX1M \regArr_reg[3][4]  ( .D(n68), .CK(CLK), .RN(n388), .Q(
        \regArr[3][4] ) );
  DFFRQX1M \regArr_reg[3][3]  ( .D(n67), .CK(CLK), .RN(n388), .Q(
        \regArr[3][3] ) );
  DFFRQX1M \regArr_reg[3][2]  ( .D(n66), .CK(CLK), .RN(n388), .Q(
        \regArr[3][2] ) );
  DFFRQX1M \regArr_reg[3][1]  ( .D(n65), .CK(CLK), .RN(n388), .Q(
        \regArr[3][1] ) );
  DFFRQX1M \regArr_reg[3][0]  ( .D(n64), .CK(CLK), .RN(n387), .Q(
        \regArr[3][0] ) );
  DFFSQX2M \regArr_reg[2][2]  ( .D(n58), .CK(CLK), .SN(n386), .Q(REG2[2]) );
  DFFRQX2M \regArr_reg[2][7]  ( .D(n63), .CK(CLK), .RN(n387), .Q(REG2[7]) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n62), .CK(CLK), .RN(n387), .Q(REG2[6]) );
  DFFRQX2M \regArr_reg[2][5]  ( .D(n61), .CK(CLK), .RN(n387), .Q(REG2[5]) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n60), .CK(CLK), .RN(n387), .Q(REG2[4]) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n59), .CK(CLK), .RN(n387), .Q(REG2[3]) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n57), .CK(CLK), .RN(n387), .Q(REG2[1]) );
  DFFRQX2M \regArr_reg[2][0]  ( .D(n56), .CK(CLK), .RN(n387), .Q(REG2[0]) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n40), .CK(CLK), .RN(RST), .Q(n399) );
  DFFSQX2M \regArr_reg[0][1]  ( .D(n41), .CK(CLK), .SN(n386), .Q(REG0[1]) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n42), .CK(CLK), .RN(n387), .Q(REG0[2]) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n43), .CK(CLK), .RN(n387), .Q(REG0[3]) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n44), .CK(CLK), .RN(n386), .Q(n379) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n45), .CK(CLK), .RN(n387), .Q(REG0[5]) );
  DFFSQX2M \regArr_reg[1][3]  ( .D(n51), .CK(CLK), .SN(n386), .Q(n380) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n46), .CK(CLK), .RN(n386), .Q(REG0[6]) );
  DFFRQX2M \regArr_reg[1][4]  ( .D(n52), .CK(CLK), .RN(n386), .Q(n269) );
  DFFRQX2M \regArr_reg[1][5]  ( .D(n53), .CK(CLK), .RN(n386), .Q(n268) );
  DFFRQX1M \regArr_reg[1][1]  ( .D(n49), .CK(CLK), .RN(n386), .Q(n271) );
  DFFRQX1M \regArr_reg[1][2]  ( .D(n50), .CK(CLK), .RN(n387), .Q(n270) );
  DFFRQX1M \regArr_reg[1][0]  ( .D(n48), .CK(CLK), .RN(n386), .Q(n381) );
  DFFRQX2M \regArr_reg[1][7]  ( .D(n55), .CK(CLK), .RN(RST), .Q(n267) );
  DFFRQX1M \regArr_reg[1][6]  ( .D(n54), .CK(CLK), .RN(n390), .Q(n383) );
  DFFRQX1M \regArr_reg[0][7]  ( .D(n47), .CK(CLK), .RN(n386), .Q(n378) );
  INVX6M U323 ( .A(n323), .Y(REG1[6]) );
  INVX2M U325 ( .A(n383), .Y(n323) );
  INVX1M U326 ( .A(n234), .Y(n382) );
  NOR2X2M U327 ( .A(n204), .B(Address[2]), .Y(n221) );
  INVX1M U328 ( .A(n242), .Y(n374) );
  NOR2X2M U329 ( .A(Address[1]), .B(Address[2]), .Y(n224) );
  INVXLM U330 ( .A(n267), .Y(n202) );
  INVX6M U331 ( .A(n202), .Y(REG1[7]) );
  INVXLM U332 ( .A(n378), .Y(n321) );
  INVX6M U333 ( .A(n321), .Y(REG0[7]) );
  BUFX10M U334 ( .A(n381), .Y(REG1[0]) );
  BUFX10M U335 ( .A(n270), .Y(REG1[2]) );
  BUFX10M U336 ( .A(n271), .Y(REG1[1]) );
  INVX2M U337 ( .A(n234), .Y(n384) );
  INVX2M U338 ( .A(n242), .Y(n375) );
  AND2X2M U339 ( .A(n347), .B(n227), .Y(n218) );
  NOR2BX4M U340 ( .AN(n227), .B(n344), .Y(n231) );
  NOR2BX4M U341 ( .AN(n227), .B(n345), .Y(n229) );
  AND2X2M U342 ( .A(n346), .B(n227), .Y(n216) );
  BUFX4M U343 ( .A(n213), .Y(n328) );
  BUFX4M U344 ( .A(n212), .Y(n330) );
  BUFX4M U345 ( .A(n211), .Y(n332) );
  BUFX4M U346 ( .A(n210), .Y(n334) );
  BUFX4M U347 ( .A(n209), .Y(n336) );
  BUFX4M U348 ( .A(n208), .Y(n338) );
  BUFX4M U349 ( .A(n207), .Y(n340) );
  BUFX4M U350 ( .A(n206), .Y(n342) );
  NOR2X4M U351 ( .A(RdEn), .B(n201), .Y(n227) );
  INVX4M U352 ( .A(n348), .Y(n193) );
  INVX4M U353 ( .A(n370), .Y(n194) );
  INVX4M U354 ( .A(n369), .Y(n199) );
  INVX4M U355 ( .A(n371), .Y(n200) );
  INVX4M U356 ( .A(n359), .Y(n196) );
  INVX4M U357 ( .A(n360), .Y(n198) );
  INVX4M U358 ( .A(n357), .Y(n195) );
  INVX4M U359 ( .A(n358), .Y(n197) );
  INVX8M U360 ( .A(n374), .Y(n373) );
  INVX8M U361 ( .A(n382), .Y(n377) );
  INVX6M U362 ( .A(n382), .Y(n376) );
  INVX6M U363 ( .A(n374), .Y(n372) );
  BUFX4M U364 ( .A(n236), .Y(n354) );
  BUFX4M U365 ( .A(n235), .Y(n356) );
  BUFX4M U366 ( .A(n239), .Y(n350) );
  BUFX4M U367 ( .A(n237), .Y(n352) );
  BUFX4M U368 ( .A(n223), .Y(n364) );
  BUFX4M U369 ( .A(n225), .Y(n362) );
  BUFX4M U370 ( .A(n222), .Y(n366) );
  BUFX4M U371 ( .A(n220), .Y(n368) );
  BUFX4M U372 ( .A(n236), .Y(n353) );
  BUFX4M U373 ( .A(n235), .Y(n355) );
  BUFX4M U374 ( .A(n239), .Y(n349) );
  BUFX4M U375 ( .A(n237), .Y(n351) );
  BUFX4M U376 ( .A(n223), .Y(n363) );
  BUFX4M U377 ( .A(n225), .Y(n361) );
  BUFX4M U378 ( .A(n222), .Y(n365) );
  BUFX4M U379 ( .A(n220), .Y(n367) );
  BUFX10M U380 ( .A(n221), .Y(n402) );
  BUFX10M U390 ( .A(n224), .Y(n400) );
  CLKBUFX8M U391 ( .A(n224), .Y(n385) );
  CLKBUFX8M U392 ( .A(n221), .Y(n401) );
  CLKBUFX6M U393 ( .A(n214), .Y(n348) );
  NAND2X2M U394 ( .A(n375), .B(n218), .Y(n214) );
  CLKBUFX6M U395 ( .A(n215), .Y(n371) );
  NAND2X2M U396 ( .A(n216), .B(n375), .Y(n215) );
  CLKBUFX6M U397 ( .A(n217), .Y(n370) );
  NAND2X2M U398 ( .A(n384), .B(n218), .Y(n217) );
  CLKBUFX6M U399 ( .A(n219), .Y(n369) );
  NAND2X2M U400 ( .A(n384), .B(n216), .Y(n219) );
  CLKBUFX6M U401 ( .A(n230), .Y(n359) );
  NAND2X2M U402 ( .A(n231), .B(n375), .Y(n230) );
  CLKBUFX6M U403 ( .A(n228), .Y(n360) );
  NAND2X2M U404 ( .A(n229), .B(n375), .Y(n228) );
  CLKBUFX6M U405 ( .A(n233), .Y(n357) );
  NAND2X2M U406 ( .A(n231), .B(n384), .Y(n233) );
  CLKBUFX6M U407 ( .A(n232), .Y(n358) );
  NAND2X2M U408 ( .A(n229), .B(n384), .Y(n232) );
  NAND2X2M U409 ( .A(n231), .B(n401), .Y(n236) );
  NAND2X2M U410 ( .A(n229), .B(n401), .Y(n235) );
  NAND2X2M U411 ( .A(n231), .B(n385), .Y(n239) );
  NAND2X2M U412 ( .A(n229), .B(n385), .Y(n237) );
  NAND2X2M U413 ( .A(n385), .B(n218), .Y(n223) );
  NAND2X2M U414 ( .A(n385), .B(n216), .Y(n225) );
  NAND2X2M U415 ( .A(n401), .B(n216), .Y(n222) );
  NAND2X2M U416 ( .A(n401), .B(n218), .Y(n220) );
  INVX2M U417 ( .A(Address[1]), .Y(n204) );
  OAI22X1M U418 ( .A0(n377), .A1(n15), .B0(n373), .B1(n31), .Y(n260) );
  OAI22X1M U419 ( .A0(n377), .A1(n14), .B0(n373), .B1(n30), .Y(n274) );
  OAI22X1M U422 ( .A0(n377), .A1(n13), .B0(n373), .B1(n29), .Y(n283) );
  OAI22X1M U423 ( .A0(n377), .A1(n5), .B0(n373), .B1(n21), .Y(n282) );
  OAI22X1M U424 ( .A0(n376), .A1(n16), .B0(n372), .B1(n32), .Y(n251) );
  OAI22X1M U425 ( .A0(n376), .A1(n8), .B0(n372), .B1(n24), .Y(n250) );
  OAI22X1M U426 ( .A0(n376), .A1(n7), .B0(n372), .B1(n23), .Y(n259) );
  OAI22X1M U427 ( .A0(n376), .A1(n6), .B0(n372), .B1(n22), .Y(n273) );
  OAI22X1M U428 ( .A0(n376), .A1(n12), .B0(n372), .B1(n28), .Y(n292) );
  OAI22X1M U429 ( .A0(n376), .A1(n4), .B0(n372), .B1(n20), .Y(n291) );
  OAI22X1M U430 ( .A0(n376), .A1(n11), .B0(n372), .B1(n27), .Y(n301) );
  OAI22X1M U431 ( .A0(n376), .A1(n3), .B0(n372), .B1(n19), .Y(n300) );
  OAI22X1M U432 ( .A0(n376), .A1(n10), .B0(n372), .B1(n26), .Y(n310) );
  OAI22X1M U433 ( .A0(n376), .A1(n2), .B0(n372), .B1(n18), .Y(n309) );
  OAI22X1M U434 ( .A0(n376), .A1(n9), .B0(n372), .B1(n25), .Y(n319) );
  OAI22X1M U435 ( .A0(n376), .A1(n1), .B0(n372), .B1(n17), .Y(n318) );
  OAI22X1M U436 ( .A0(n193), .A1(n192), .B0(n348), .B1(n329), .Y(n96) );
  OAI22X1M U437 ( .A0(n193), .A1(n191), .B0(n348), .B1(n331), .Y(n97) );
  OAI22X1M U438 ( .A0(n193), .A1(n190), .B0(n348), .B1(n333), .Y(n98) );
  OAI22X1M U439 ( .A0(n193), .A1(n189), .B0(n348), .B1(n335), .Y(n99) );
  OAI22X1M U440 ( .A0(n193), .A1(n188), .B0(n348), .B1(n337), .Y(n100) );
  OAI22X1M U441 ( .A0(n193), .A1(n187), .B0(n348), .B1(n339), .Y(n101) );
  OAI22X1M U442 ( .A0(n193), .A1(n186), .B0(n348), .B1(n341), .Y(n102) );
  OAI22X1M U443 ( .A0(n193), .A1(n185), .B0(n348), .B1(n343), .Y(n103) );
  OAI22X1M U444 ( .A0(n194), .A1(n184), .B0(n328), .B1(n370), .Y(n80) );
  OAI22X1M U445 ( .A0(n194), .A1(n183), .B0(n330), .B1(n370), .Y(n81) );
  OAI22X1M U446 ( .A0(n194), .A1(n182), .B0(n332), .B1(n370), .Y(n82) );
  OAI22X1M U447 ( .A0(n194), .A1(n181), .B0(n334), .B1(n370), .Y(n83) );
  OAI22X1M U448 ( .A0(n194), .A1(n180), .B0(n336), .B1(n370), .Y(n84) );
  OAI22X1M U449 ( .A0(n194), .A1(n179), .B0(n338), .B1(n370), .Y(n85) );
  OAI22X1M U450 ( .A0(n194), .A1(n178), .B0(n340), .B1(n370), .Y(n86) );
  OAI22X1M U451 ( .A0(n194), .A1(n177), .B0(n342), .B1(n370), .Y(n87) );
  OAI22X1M U452 ( .A0(n199), .A1(n176), .B0(n328), .B1(n369), .Y(n72) );
  OAI22X1M U453 ( .A0(n199), .A1(n175), .B0(n330), .B1(n369), .Y(n73) );
  OAI22X1M U454 ( .A0(n199), .A1(n174), .B0(n332), .B1(n369), .Y(n74) );
  OAI22X1M U455 ( .A0(n199), .A1(n173), .B0(n334), .B1(n369), .Y(n75) );
  OAI22X1M U456 ( .A0(n199), .A1(n172), .B0(n336), .B1(n369), .Y(n76) );
  OAI22X1M U457 ( .A0(n199), .A1(n171), .B0(n338), .B1(n369), .Y(n77) );
  OAI22X1M U458 ( .A0(n199), .A1(n170), .B0(n340), .B1(n369), .Y(n78) );
  OAI22X1M U459 ( .A0(n199), .A1(n169), .B0(n342), .B1(n369), .Y(n79) );
  OAI22X1M U460 ( .A0(n200), .A1(n168), .B0(n328), .B1(n371), .Y(n88) );
  OAI22X1M U461 ( .A0(n200), .A1(n39), .B0(n330), .B1(n371), .Y(n89) );
  OAI22X1M U462 ( .A0(n200), .A1(n38), .B0(n332), .B1(n371), .Y(n90) );
  OAI22X1M U463 ( .A0(n200), .A1(n37), .B0(n334), .B1(n371), .Y(n91) );
  OAI22X1M U464 ( .A0(n200), .A1(n36), .B0(n371), .B1(n337), .Y(n92) );
  OAI22X1M U465 ( .A0(n200), .A1(n35), .B0(n371), .B1(n339), .Y(n93) );
  OAI22X1M U466 ( .A0(n200), .A1(n34), .B0(n371), .B1(n341), .Y(n94) );
  OAI22X1M U467 ( .A0(n200), .A1(n33), .B0(n371), .B1(n343), .Y(n95) );
  OAI22X1M U468 ( .A0(n196), .A1(n32), .B0(n328), .B1(n359), .Y(n152) );
  OAI22X1M U469 ( .A0(n196), .A1(n31), .B0(n330), .B1(n359), .Y(n153) );
  OAI22X1M U470 ( .A0(n196), .A1(n30), .B0(n332), .B1(n359), .Y(n154) );
  OAI22X1M U471 ( .A0(n196), .A1(n29), .B0(n334), .B1(n359), .Y(n155) );
  OAI22X1M U472 ( .A0(n196), .A1(n28), .B0(n336), .B1(n359), .Y(n156) );
  OAI22X1M U473 ( .A0(n196), .A1(n27), .B0(n338), .B1(n359), .Y(n157) );
  OAI22X1M U474 ( .A0(n196), .A1(n26), .B0(n340), .B1(n359), .Y(n158) );
  OAI22X1M U475 ( .A0(n196), .A1(n25), .B0(n342), .B1(n359), .Y(n159) );
  OAI22X1M U476 ( .A0(n198), .A1(n24), .B0(n328), .B1(n360), .Y(n160) );
  OAI22X1M U477 ( .A0(n198), .A1(n23), .B0(n330), .B1(n360), .Y(n161) );
  OAI22X1M U478 ( .A0(n198), .A1(n22), .B0(n332), .B1(n360), .Y(n162) );
  OAI22X1M U479 ( .A0(n198), .A1(n21), .B0(n334), .B1(n360), .Y(n163) );
  OAI22X1M U480 ( .A0(n198), .A1(n20), .B0(n336), .B1(n360), .Y(n164) );
  OAI22X1M U481 ( .A0(n198), .A1(n19), .B0(n338), .B1(n360), .Y(n165) );
  OAI22X1M U482 ( .A0(n198), .A1(n18), .B0(n340), .B1(n360), .Y(n166) );
  OAI22X1M U483 ( .A0(n198), .A1(n17), .B0(n342), .B1(n360), .Y(n167) );
  OAI22X1M U484 ( .A0(n195), .A1(n16), .B0(n328), .B1(n357), .Y(n136) );
  OAI22X1M U485 ( .A0(n195), .A1(n15), .B0(n330), .B1(n357), .Y(n137) );
  OAI22X1M U486 ( .A0(n195), .A1(n14), .B0(n332), .B1(n357), .Y(n138) );
  OAI22X1M U487 ( .A0(n195), .A1(n13), .B0(n334), .B1(n357), .Y(n139) );
  OAI22X1M U488 ( .A0(n195), .A1(n12), .B0(n336), .B1(n357), .Y(n140) );
  OAI22X1M U489 ( .A0(n195), .A1(n11), .B0(n338), .B1(n357), .Y(n141) );
  OAI22X1M U490 ( .A0(n195), .A1(n10), .B0(n340), .B1(n357), .Y(n142) );
  OAI22X1M U491 ( .A0(n195), .A1(n9), .B0(n342), .B1(n357), .Y(n143) );
  OAI22X1M U492 ( .A0(n197), .A1(n8), .B0(n328), .B1(n358), .Y(n144) );
  OAI22X1M U493 ( .A0(n197), .A1(n7), .B0(n330), .B1(n358), .Y(n145) );
  OAI22X1M U494 ( .A0(n197), .A1(n6), .B0(n332), .B1(n358), .Y(n146) );
  OAI22X1M U495 ( .A0(n197), .A1(n5), .B0(n334), .B1(n358), .Y(n147) );
  OAI22X1M U496 ( .A0(n197), .A1(n4), .B0(n336), .B1(n358), .Y(n148) );
  OAI22X1M U497 ( .A0(n197), .A1(n3), .B0(n338), .B1(n358), .Y(n149) );
  OAI22X1M U498 ( .A0(n197), .A1(n2), .B0(n340), .B1(n358), .Y(n150) );
  OAI22X1M U499 ( .A0(n197), .A1(n1), .B0(n342), .B1(n358), .Y(n151) );
  CLKBUFX6M U500 ( .A(n238), .Y(n345) );
  NAND2X2M U501 ( .A(Address[3]), .B(Address[0]), .Y(n238) );
  CLKBUFX6M U502 ( .A(n226), .Y(n346) );
  NOR2X2M U503 ( .A(Address[0]), .B(Address[3]), .Y(n226) );
  CLKBUFX6M U504 ( .A(n241), .Y(n347) );
  NOR2X2M U505 ( .A(n205), .B(Address[3]), .Y(n241) );
  INVX2M U506 ( .A(Address[0]), .Y(n205) );
  CLKBUFX6M U507 ( .A(n240), .Y(n344) );
  NAND2X2M U508 ( .A(Address[3]), .B(n205), .Y(n240) );
  NAND2X2M U509 ( .A(Address[2]), .B(n204), .Y(n234) );
  NAND2X2M U510 ( .A(Address[2]), .B(Address[1]), .Y(n242) );
  BUFX4M U511 ( .A(n213), .Y(n329) );
  BUFX4M U512 ( .A(n212), .Y(n331) );
  BUFX4M U513 ( .A(n211), .Y(n333) );
  BUFX4M U514 ( .A(n210), .Y(n335) );
  BUFX4M U515 ( .A(n209), .Y(n337) );
  BUFX4M U516 ( .A(n208), .Y(n339) );
  BUFX4M U517 ( .A(n207), .Y(n341) );
  BUFX4M U519 ( .A(n206), .Y(n343) );
  OAI221X1M U520 ( .A0(n373), .A1(n168), .B0(n377), .B1(n176), .C0(n249), .Y(
        n246) );
  AOI22X1M U521 ( .A0(REG2[0]), .A1(n402), .B0(n399), .B1(n400), .Y(n249) );
  OAI221X1M U522 ( .A0(n373), .A1(n39), .B0(n377), .B1(n175), .C0(n258), .Y(
        n255) );
  AOI22X1M U523 ( .A0(REG2[1]), .A1(n402), .B0(REG0[1]), .B1(n400), .Y(n258)
         );
  OAI221X1M U524 ( .A0(n373), .A1(n38), .B0(n377), .B1(n174), .C0(n272), .Y(
        n264) );
  AOI22X1M U525 ( .A0(REG2[2]), .A1(n402), .B0(REG0[2]), .B1(n400), .Y(n272)
         );
  OAI221X1M U526 ( .A0(n373), .A1(n37), .B0(n377), .B1(n173), .C0(n281), .Y(
        n278) );
  AOI22X1M U527 ( .A0(REG2[3]), .A1(n402), .B0(REG0[3]), .B1(n400), .Y(n281)
         );
  OAI221X1M U528 ( .A0(n373), .A1(n36), .B0(n377), .B1(n172), .C0(n290), .Y(
        n287) );
  AOI22X1M U529 ( .A0(REG2[4]), .A1(n402), .B0(n379), .B1(n400), .Y(n290) );
  OAI221X1M U530 ( .A0(n373), .A1(n35), .B0(n377), .B1(n171), .C0(n299), .Y(
        n296) );
  AOI22X1M U531 ( .A0(REG2[5]), .A1(n402), .B0(REG0[5]), .B1(n400), .Y(n299)
         );
  OAI221X1M U532 ( .A0(n242), .A1(n34), .B0(n234), .B1(n170), .C0(n308), .Y(
        n305) );
  AOI22X1M U533 ( .A0(REG2[6]), .A1(n402), .B0(REG0[6]), .B1(n400), .Y(n308)
         );
  OAI221X1M U534 ( .A0(n373), .A1(n192), .B0(n377), .B1(n184), .C0(n248), .Y(
        n247) );
  AOI22X1M U535 ( .A0(\regArr[3][0] ), .A1(n402), .B0(REG1[0]), .B1(n400), .Y(
        n248) );
  OAI221X1M U536 ( .A0(n373), .A1(n191), .B0(n377), .B1(n183), .C0(n257), .Y(
        n256) );
  AOI22X1M U537 ( .A0(\regArr[3][1] ), .A1(n402), .B0(REG1[1]), .B1(n400), .Y(
        n257) );
  OAI221X1M U538 ( .A0(n373), .A1(n190), .B0(n377), .B1(n182), .C0(n266), .Y(
        n265) );
  AOI22X1M U539 ( .A0(\regArr[3][2] ), .A1(n402), .B0(REG1[2]), .B1(n400), .Y(
        n266) );
  OAI221X1M U540 ( .A0(n373), .A1(n189), .B0(n377), .B1(n181), .C0(n280), .Y(
        n279) );
  AOI22X1M U541 ( .A0(\regArr[3][3] ), .A1(n402), .B0(n380), .B1(n400), .Y(
        n280) );
  OAI221X1M U542 ( .A0(n373), .A1(n188), .B0(n377), .B1(n180), .C0(n289), .Y(
        n288) );
  AOI22X1M U543 ( .A0(\regArr[3][4] ), .A1(n402), .B0(n269), .B1(n400), .Y(
        n289) );
  OAI221X1M U544 ( .A0(n373), .A1(n187), .B0(n377), .B1(n179), .C0(n298), .Y(
        n297) );
  AOI22X1M U545 ( .A0(\regArr[3][5] ), .A1(n402), .B0(n268), .B1(n400), .Y(
        n298) );
  OAI221X1M U546 ( .A0(n373), .A1(n186), .B0(n377), .B1(n178), .C0(n307), .Y(
        n306) );
  AOI22X1M U547 ( .A0(\regArr[3][6] ), .A1(n402), .B0(REG1[6]), .B1(n400), .Y(
        n307) );
  OAI221X1M U548 ( .A0(n243), .A1(n344), .B0(n244), .B1(n345), .C0(n245), .Y(
        N43) );
  AOI221X2M U549 ( .A0(\regArr[11][0] ), .A1(n401), .B0(\regArr[9][0] ), .B1(
        n385), .C0(n250), .Y(n244) );
  AOI221X2M U550 ( .A0(\regArr[10][0] ), .A1(n401), .B0(\regArr[8][0] ), .B1(
        n385), .C0(n251), .Y(n243) );
  AOI22X1M U551 ( .A0(n346), .A1(n246), .B0(n347), .B1(n247), .Y(n245) );
  OAI221X1M U552 ( .A0(n252), .A1(n344), .B0(n253), .B1(n345), .C0(n254), .Y(
        N42) );
  AOI221X2M U553 ( .A0(\regArr[11][1] ), .A1(n401), .B0(\regArr[9][1] ), .B1(
        n385), .C0(n259), .Y(n253) );
  AOI221X2M U554 ( .A0(\regArr[10][1] ), .A1(n401), .B0(\regArr[8][1] ), .B1(
        n385), .C0(n260), .Y(n252) );
  AOI22X1M U555 ( .A0(n346), .A1(n255), .B0(n347), .B1(n256), .Y(n254) );
  OAI221X1M U556 ( .A0(n261), .A1(n344), .B0(n262), .B1(n345), .C0(n263), .Y(
        N41) );
  AOI221X2M U557 ( .A0(\regArr[11][2] ), .A1(n401), .B0(\regArr[9][2] ), .B1(
        n385), .C0(n273), .Y(n262) );
  AOI221X2M U558 ( .A0(\regArr[10][2] ), .A1(n401), .B0(\regArr[8][2] ), .B1(
        n385), .C0(n274), .Y(n261) );
  AOI22X1M U559 ( .A0(n346), .A1(n264), .B0(n347), .B1(n265), .Y(n263) );
  OAI221X1M U560 ( .A0(n275), .A1(n344), .B0(n276), .B1(n345), .C0(n277), .Y(
        N40) );
  AOI221X2M U561 ( .A0(\regArr[11][3] ), .A1(n401), .B0(\regArr[9][3] ), .B1(
        n385), .C0(n282), .Y(n276) );
  AOI221X2M U562 ( .A0(\regArr[10][3] ), .A1(n401), .B0(\regArr[8][3] ), .B1(
        n385), .C0(n283), .Y(n275) );
  AOI22X1M U563 ( .A0(n346), .A1(n278), .B0(n347), .B1(n279), .Y(n277) );
  OAI221X1M U564 ( .A0(n284), .A1(n344), .B0(n285), .B1(n345), .C0(n286), .Y(
        N39) );
  AOI221X2M U565 ( .A0(\regArr[11][4] ), .A1(n401), .B0(\regArr[9][4] ), .B1(
        n385), .C0(n291), .Y(n285) );
  AOI221X2M U566 ( .A0(\regArr[10][4] ), .A1(n402), .B0(\regArr[8][4] ), .B1(
        n400), .C0(n292), .Y(n284) );
  AOI22X1M U567 ( .A0(n346), .A1(n287), .B0(n347), .B1(n288), .Y(n286) );
  OAI221X1M U568 ( .A0(n293), .A1(n344), .B0(n294), .B1(n345), .C0(n295), .Y(
        N38) );
  AOI221X2M U569 ( .A0(\regArr[11][5] ), .A1(n402), .B0(\regArr[9][5] ), .B1(
        n400), .C0(n300), .Y(n294) );
  AOI221X2M U570 ( .A0(\regArr[10][5] ), .A1(n401), .B0(\regArr[8][5] ), .B1(
        n385), .C0(n301), .Y(n293) );
  AOI22X1M U571 ( .A0(n346), .A1(n296), .B0(n347), .B1(n297), .Y(n295) );
  OAI221X1M U572 ( .A0(n302), .A1(n344), .B0(n303), .B1(n345), .C0(n304), .Y(
        N37) );
  AOI221X2M U573 ( .A0(\regArr[11][6] ), .A1(n402), .B0(\regArr[9][6] ), .B1(
        n400), .C0(n309), .Y(n303) );
  AOI221X2M U574 ( .A0(\regArr[10][6] ), .A1(n402), .B0(\regArr[8][6] ), .B1(
        n400), .C0(n310), .Y(n302) );
  AOI22X1M U575 ( .A0(n346), .A1(n305), .B0(n347), .B1(n306), .Y(n304) );
  OAI221X1M U576 ( .A0(n373), .A1(n33), .B0(n377), .B1(n169), .C0(n317), .Y(
        n314) );
  AOI22X1M U577 ( .A0(REG2[7]), .A1(n402), .B0(REG0[7]), .B1(n400), .Y(n317)
         );
  OAI221X1M U578 ( .A0(n372), .A1(n185), .B0(n376), .B1(n177), .C0(n316), .Y(
        n315) );
  AOI22X1M U579 ( .A0(\regArr[3][7] ), .A1(n402), .B0(REG1[7]), .B1(n400), .Y(
        n316) );
  OAI221X1M U580 ( .A0(n311), .A1(n344), .B0(n312), .B1(n345), .C0(n313), .Y(
        N36) );
  AOI221X2M U581 ( .A0(\regArr[11][7] ), .A1(n401), .B0(\regArr[9][7] ), .B1(
        n385), .C0(n318), .Y(n312) );
  AOI221X2M U582 ( .A0(\regArr[10][7] ), .A1(n401), .B0(\regArr[8][7] ), .B1(
        n385), .C0(n319), .Y(n311) );
  AOI22X1M U583 ( .A0(n346), .A1(n314), .B0(n347), .B1(n315), .Y(n313) );
  OAI2BB2X1M U584 ( .B0(n341), .B1(n363), .A0N(n364), .A1N(REG1[6]), .Y(n54)
         );
  OAI2BB2X1M U585 ( .B0(n329), .B1(n363), .A0N(n364), .A1N(REG1[0]), .Y(n48)
         );
  OAI2BB2X1M U586 ( .B0(n333), .B1(n363), .A0N(n364), .A1N(REG1[2]), .Y(n50)
         );
  OAI2BB2X1M U587 ( .B0(n331), .B1(n363), .A0N(n364), .A1N(REG1[1]), .Y(n49)
         );
  OAI2BB2X1M U588 ( .B0(n339), .B1(n363), .A0N(n364), .A1N(n268), .Y(n53) );
  OAI2BB2X1M U589 ( .B0(n341), .B1(n361), .A0N(n362), .A1N(REG0[6]), .Y(n46)
         );
  OAI2BB2X1M U590 ( .B0(n337), .B1(n363), .A0N(n364), .A1N(n269), .Y(n52) );
  OAI2BB2X1M U591 ( .B0(n339), .B1(n361), .A0N(n362), .A1N(REG0[5]), .Y(n45)
         );
  OAI2BB2X1M U592 ( .B0(n337), .B1(n361), .A0N(n362), .A1N(n379), .Y(n44) );
  OAI2BB2X1M U593 ( .B0(n335), .B1(n361), .A0N(n362), .A1N(REG0[3]), .Y(n43)
         );
  OAI2BB2X1M U594 ( .B0(n333), .B1(n361), .A0N(n362), .A1N(REG0[2]), .Y(n42)
         );
  OAI2BB2X1M U595 ( .B0(n329), .B1(n361), .A0N(n362), .A1N(n399), .Y(n40) );
  OAI2BB2X1M U596 ( .B0(n329), .B1(n365), .A0N(n366), .A1N(REG2[0]), .Y(n56)
         );
  OAI2BB2X1M U597 ( .B0(n331), .B1(n365), .A0N(n366), .A1N(REG2[1]), .Y(n57)
         );
  OAI2BB2X1M U598 ( .B0(n335), .B1(n365), .A0N(n366), .A1N(REG2[3]), .Y(n59)
         );
  OAI2BB2X1M U599 ( .B0(n337), .B1(n365), .A0N(n366), .A1N(REG2[4]), .Y(n60)
         );
  OAI2BB2X1M U600 ( .B0(n339), .B1(n365), .A0N(n366), .A1N(REG2[5]), .Y(n61)
         );
  OAI2BB2X1M U601 ( .B0(n341), .B1(n365), .A0N(n366), .A1N(REG2[6]), .Y(n62)
         );
  OAI2BB2X1M U602 ( .B0(n329), .B1(n353), .A0N(n354), .A1N(\regArr[10][0] ), 
        .Y(n120) );
  OAI2BB2X1M U603 ( .B0(n331), .B1(n353), .A0N(n354), .A1N(\regArr[10][1] ), 
        .Y(n121) );
  OAI2BB2X1M U604 ( .B0(n333), .B1(n353), .A0N(n354), .A1N(\regArr[10][2] ), 
        .Y(n122) );
  OAI2BB2X1M U605 ( .B0(n335), .B1(n353), .A0N(n354), .A1N(\regArr[10][3] ), 
        .Y(n123) );
  OAI2BB2X1M U606 ( .B0(n337), .B1(n353), .A0N(n354), .A1N(\regArr[10][4] ), 
        .Y(n124) );
  OAI2BB2X1M U607 ( .B0(n339), .B1(n353), .A0N(n354), .A1N(\regArr[10][5] ), 
        .Y(n125) );
  OAI2BB2X1M U608 ( .B0(n341), .B1(n353), .A0N(n354), .A1N(\regArr[10][6] ), 
        .Y(n126) );
  OAI2BB2X1M U609 ( .B0(n329), .B1(n355), .A0N(n356), .A1N(\regArr[11][0] ), 
        .Y(n128) );
  OAI2BB2X1M U610 ( .B0(n331), .B1(n355), .A0N(n356), .A1N(\regArr[11][1] ), 
        .Y(n129) );
  OAI2BB2X1M U611 ( .B0(n333), .B1(n355), .A0N(n356), .A1N(\regArr[11][2] ), 
        .Y(n130) );
  OAI2BB2X1M U612 ( .B0(n335), .B1(n355), .A0N(n356), .A1N(\regArr[11][3] ), 
        .Y(n131) );
  OAI2BB2X1M U613 ( .B0(n337), .B1(n355), .A0N(n356), .A1N(\regArr[11][4] ), 
        .Y(n132) );
  OAI2BB2X1M U614 ( .B0(n339), .B1(n355), .A0N(n356), .A1N(\regArr[11][5] ), 
        .Y(n133) );
  OAI2BB2X1M U615 ( .B0(n341), .B1(n355), .A0N(n356), .A1N(\regArr[11][6] ), 
        .Y(n134) );
  OAI2BB2X1M U616 ( .B0(n328), .B1(n349), .A0N(n350), .A1N(\regArr[8][0] ), 
        .Y(n104) );
  OAI2BB2X1M U617 ( .B0(n330), .B1(n349), .A0N(n350), .A1N(\regArr[8][1] ), 
        .Y(n105) );
  OAI2BB2X1M U618 ( .B0(n332), .B1(n349), .A0N(n350), .A1N(\regArr[8][2] ), 
        .Y(n106) );
  OAI2BB2X1M U619 ( .B0(n334), .B1(n349), .A0N(n350), .A1N(\regArr[8][3] ), 
        .Y(n107) );
  OAI2BB2X1M U620 ( .B0(n336), .B1(n349), .A0N(n350), .A1N(\regArr[8][4] ), 
        .Y(n108) );
  OAI2BB2X1M U621 ( .B0(n338), .B1(n349), .A0N(n350), .A1N(\regArr[8][5] ), 
        .Y(n109) );
  OAI2BB2X1M U622 ( .B0(n340), .B1(n349), .A0N(n350), .A1N(\regArr[8][6] ), 
        .Y(n110) );
  OAI2BB2X1M U623 ( .B0(n329), .B1(n351), .A0N(n352), .A1N(\regArr[9][0] ), 
        .Y(n112) );
  OAI2BB2X1M U624 ( .B0(n331), .B1(n351), .A0N(n352), .A1N(\regArr[9][1] ), 
        .Y(n113) );
  OAI2BB2X1M U625 ( .B0(n333), .B1(n351), .A0N(n352), .A1N(\regArr[9][2] ), 
        .Y(n114) );
  OAI2BB2X1M U626 ( .B0(n335), .B1(n351), .A0N(n352), .A1N(\regArr[9][3] ), 
        .Y(n115) );
  OAI2BB2X1M U627 ( .B0(n336), .B1(n351), .A0N(n352), .A1N(\regArr[9][4] ), 
        .Y(n116) );
  OAI2BB2X1M U628 ( .B0(n338), .B1(n351), .A0N(n352), .A1N(\regArr[9][5] ), 
        .Y(n117) );
  OAI2BB2X1M U629 ( .B0(n340), .B1(n351), .A0N(n352), .A1N(\regArr[9][6] ), 
        .Y(n118) );
  OAI2BB2X1M U630 ( .B0(n329), .B1(n367), .A0N(n368), .A1N(\regArr[3][0] ), 
        .Y(n64) );
  OAI2BB2X1M U631 ( .B0(n331), .B1(n367), .A0N(n368), .A1N(\regArr[3][1] ), 
        .Y(n65) );
  OAI2BB2X1M U632 ( .B0(n333), .B1(n367), .A0N(n368), .A1N(\regArr[3][2] ), 
        .Y(n66) );
  OAI2BB2X1M U633 ( .B0(n335), .B1(n367), .A0N(n368), .A1N(\regArr[3][3] ), 
        .Y(n67) );
  OAI2BB2X1M U634 ( .B0(n337), .B1(n367), .A0N(n368), .A1N(\regArr[3][4] ), 
        .Y(n68) );
  OAI2BB2X1M U635 ( .B0(n339), .B1(n367), .A0N(n368), .A1N(\regArr[3][5] ), 
        .Y(n69) );
  OAI2BB2X1M U636 ( .B0(n341), .B1(n367), .A0N(n368), .A1N(\regArr[3][6] ), 
        .Y(n70) );
  OAI2BB2X1M U637 ( .B0(n343), .B1(n364), .A0N(n364), .A1N(REG1[7]), .Y(n55)
         );
  OAI2BB2X1M U638 ( .B0(n343), .B1(n362), .A0N(n362), .A1N(REG0[7]), .Y(n47)
         );
  OAI2BB2X1M U639 ( .B0(n343), .B1(n366), .A0N(n366), .A1N(REG2[7]), .Y(n63)
         );
  OAI2BB2X1M U640 ( .B0(n343), .B1(n354), .A0N(n354), .A1N(\regArr[10][7] ), 
        .Y(n127) );
  OAI2BB2X1M U641 ( .B0(n343), .B1(n356), .A0N(n356), .A1N(\regArr[11][7] ), 
        .Y(n135) );
  OAI2BB2X1M U642 ( .B0(n342), .B1(n350), .A0N(n350), .A1N(\regArr[8][7] ), 
        .Y(n111) );
  OAI2BB2X1M U643 ( .B0(n342), .B1(n352), .A0N(n352), .A1N(\regArr[9][7] ), 
        .Y(n119) );
  OAI2BB2X1M U644 ( .B0(n343), .B1(n368), .A0N(n368), .A1N(\regArr[3][7] ), 
        .Y(n71) );
  OAI2BB2X1M U645 ( .B0(n335), .B1(n363), .A0N(n364), .A1N(n380), .Y(n51) );
  OAI2BB2X1M U646 ( .B0(n331), .B1(n361), .A0N(n362), .A1N(REG0[1]), .Y(n41)
         );
  OAI2BB2X1M U647 ( .B0(n333), .B1(n365), .A0N(n366), .A1N(REG2[2]), .Y(n58)
         );
  INVX2M U649 ( .A(WrEn), .Y(n201) );
  INVX2M U650 ( .A(WrData[0]), .Y(n213) );
  INVX2M U651 ( .A(WrData[1]), .Y(n212) );
  INVX2M U652 ( .A(WrData[2]), .Y(n211) );
  INVX2M U653 ( .A(WrData[3]), .Y(n210) );
  INVX2M U654 ( .A(WrData[4]), .Y(n209) );
  INVX2M U655 ( .A(WrData[5]), .Y(n208) );
  INVX2M U656 ( .A(WrData[6]), .Y(n207) );
  INVX2M U657 ( .A(WrData[7]), .Y(n206) );
  INVX2M U658 ( .A(\regArr[14][0] ), .Y(n32) );
  INVX2M U659 ( .A(\regArr[15][0] ), .Y(n24) );
  INVX2M U660 ( .A(\regArr[14][1] ), .Y(n31) );
  INVX2M U661 ( .A(\regArr[15][1] ), .Y(n23) );
  INVX2M U662 ( .A(\regArr[14][2] ), .Y(n30) );
  INVX2M U663 ( .A(\regArr[15][2] ), .Y(n22) );
  INVX2M U664 ( .A(\regArr[14][3] ), .Y(n29) );
  INVX2M U665 ( .A(\regArr[15][3] ), .Y(n21) );
  INVX2M U666 ( .A(\regArr[14][4] ), .Y(n28) );
  INVX2M U667 ( .A(\regArr[15][4] ), .Y(n20) );
  INVX2M U668 ( .A(\regArr[14][5] ), .Y(n27) );
  INVX2M U669 ( .A(\regArr[15][5] ), .Y(n19) );
  INVX2M U670 ( .A(\regArr[14][6] ), .Y(n26) );
  INVX2M U671 ( .A(\regArr[15][6] ), .Y(n18) );
  INVX2M U672 ( .A(\regArr[14][7] ), .Y(n25) );
  INVX2M U673 ( .A(\regArr[15][7] ), .Y(n17) );
  INVX2M U674 ( .A(\regArr[12][0] ), .Y(n16) );
  INVX2M U675 ( .A(\regArr[13][0] ), .Y(n8) );
  INVX2M U676 ( .A(\regArr[12][1] ), .Y(n15) );
  INVX2M U677 ( .A(\regArr[13][1] ), .Y(n7) );
  INVX2M U678 ( .A(\regArr[12][2] ), .Y(n14) );
  INVX2M U679 ( .A(\regArr[13][2] ), .Y(n6) );
  INVX2M U680 ( .A(\regArr[12][3] ), .Y(n13) );
  INVX2M U681 ( .A(\regArr[13][3] ), .Y(n5) );
  INVX2M U682 ( .A(\regArr[12][4] ), .Y(n12) );
  INVX2M U683 ( .A(\regArr[13][4] ), .Y(n4) );
  INVX2M U684 ( .A(\regArr[12][5] ), .Y(n11) );
  INVX2M U685 ( .A(\regArr[13][5] ), .Y(n3) );
  INVX2M U686 ( .A(\regArr[12][6] ), .Y(n10) );
  INVX2M U687 ( .A(\regArr[13][6] ), .Y(n2) );
  INVX2M U688 ( .A(\regArr[12][7] ), .Y(n9) );
  INVX2M U689 ( .A(\regArr[13][7] ), .Y(n1) );
  INVX2M U690 ( .A(\regArr[5][0] ), .Y(n184) );
  INVX2M U691 ( .A(\regArr[4][0] ), .Y(n176) );
  INVX2M U692 ( .A(\regArr[5][1] ), .Y(n183) );
  INVX2M U693 ( .A(\regArr[4][1] ), .Y(n175) );
  INVX2M U694 ( .A(\regArr[5][2] ), .Y(n182) );
  INVX2M U695 ( .A(\regArr[4][2] ), .Y(n174) );
  INVX2M U696 ( .A(\regArr[5][3] ), .Y(n181) );
  INVX2M U697 ( .A(\regArr[4][3] ), .Y(n173) );
  INVX2M U698 ( .A(\regArr[5][4] ), .Y(n180) );
  INVX2M U699 ( .A(\regArr[4][4] ), .Y(n172) );
  INVX2M U700 ( .A(\regArr[5][5] ), .Y(n179) );
  INVX2M U701 ( .A(\regArr[4][5] ), .Y(n171) );
  INVX2M U702 ( .A(\regArr[5][6] ), .Y(n178) );
  INVX2M U703 ( .A(\regArr[4][6] ), .Y(n170) );
  INVX2M U704 ( .A(\regArr[5][7] ), .Y(n177) );
  INVX2M U705 ( .A(\regArr[4][7] ), .Y(n169) );
  INVX2M U706 ( .A(\regArr[7][0] ), .Y(n192) );
  INVX2M U707 ( .A(\regArr[6][0] ), .Y(n168) );
  INVX2M U708 ( .A(\regArr[7][1] ), .Y(n191) );
  INVX2M U709 ( .A(\regArr[6][1] ), .Y(n39) );
  INVX2M U710 ( .A(\regArr[7][2] ), .Y(n190) );
  INVX2M U711 ( .A(\regArr[6][2] ), .Y(n38) );
  INVX2M U712 ( .A(\regArr[7][3] ), .Y(n189) );
  INVX2M U713 ( .A(\regArr[6][3] ), .Y(n37) );
  INVX2M U714 ( .A(\regArr[7][4] ), .Y(n188) );
  INVX2M U715 ( .A(\regArr[6][4] ), .Y(n36) );
  INVX2M U716 ( .A(\regArr[7][5] ), .Y(n187) );
  INVX2M U717 ( .A(\regArr[6][5] ), .Y(n35) );
  INVX2M U718 ( .A(\regArr[7][6] ), .Y(n186) );
  INVX2M U719 ( .A(\regArr[6][6] ), .Y(n34) );
  INVX2M U720 ( .A(\regArr[7][7] ), .Y(n185) );
  INVX2M U721 ( .A(\regArr[6][7] ), .Y(n33) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n158, n153, n155, n154, n2, n3, n4, n5, n6, n9, n11, n12, n13, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n160, n1, n7, n10,
         n72, n144, n145, n146, n148, n149, n150, n151, n152, n156, n157, n159
;

  OAI32X4M U60 ( .A0(n90), .A1(n4), .A2(n3), .B0(n91), .B1(n92), .Y(n158) );
  OAI32X4M U84 ( .A0(n95), .A1(quotient[4]), .A2(n114), .B0(n19), .B1(n115), 
        .Y(n155) );
  AOI31X4M U107 ( .A0(b[0]), .A1(n15), .A2(quotient[5]), .B0(n133), .Y(n123)
         );
  OAI221X4M U121 ( .A0(a[6]), .A1(n152), .B0(a[7]), .B1(n156), .C0(n142), .Y(
        n138) );
  NOR2X2M U150 ( .A(n92), .B(b[4]), .Y(n116) );
  XNOR2X4M U151 ( .A(n82), .B(n83), .Y(n60) );
  NOR2X2M U152 ( .A(n1), .B(n19), .Y(n142) );
  OR2X2M U153 ( .A(b[2]), .B(n157), .Y(n1) );
  OAI22X4M U154 ( .A0(n39), .A1(n40), .B0(b[2]), .B1(n41), .Y(n37) );
  BUFX2M U155 ( .A(n76), .Y(n7) );
  INVXLM U156 ( .A(n7), .Y(n145) );
  OAI31X2M U157 ( .A0(n152), .A1(n107), .A2(n9), .B0(n109), .Y(n76) );
  BUFX2M U158 ( .A(n160), .Y(quotient[7]) );
  INVX2M U159 ( .A(n142), .Y(n18) );
  AOI211X2M U160 ( .A0(n13), .A1(b[0]), .B0(b[1]), .C0(n18), .Y(n160) );
  INVX2M U161 ( .A(quotient[1]), .Y(n10) );
  OAI2B11X2M U162 ( .A1N(n67), .A0(n21), .B0(n68), .C0(n20), .Y(n45) );
  CLKINVX1M U163 ( .A(n9), .Y(quotient[3]) );
  INVX4M U164 ( .A(n155), .Y(n9) );
  BUFX2M U165 ( .A(n104), .Y(n72) );
  OAI31X2M U166 ( .A0(n152), .A1(n120), .A2(n11), .B0(n121), .Y(n104) );
  INVX2M U167 ( .A(n2), .Y(quotient[2]) );
  BUFX4M U168 ( .A(n154), .Y(quotient[4]) );
  NOR3X4M U169 ( .A(quotient[4]), .B(quotient[3]), .C(n95), .Y(n93) );
  OAI31X2M U170 ( .A0(n95), .A1(n157), .A2(n19), .B0(n129), .Y(n154) );
  NAND2X2M U171 ( .A(n144), .B(n145), .Y(n146) );
  NAND2X2M U172 ( .A(n146), .B(n108), .Y(n103) );
  INVX2M U173 ( .A(n74), .Y(n144) );
  INVX4M U174 ( .A(n116), .Y(n19) );
  AO21XLM U175 ( .A0(n62), .A1(n60), .B0(b[4]), .Y(n70) );
  INVX2M U176 ( .A(n94), .Y(n4) );
  OR2X2M U177 ( .A(n82), .B(n85), .Y(n148) );
  CLKINVX3M U178 ( .A(n158), .Y(n2) );
  NOR2X1M U179 ( .A(n93), .B(n94), .Y(n91) );
  OR2X2M U180 ( .A(n110), .B(n113), .Y(n149) );
  CLKINVX1M U181 ( .A(b[0]), .Y(n24) );
  CLKINVX2M U182 ( .A(b[2]), .Y(n22) );
  NOR2BX2M U183 ( .AN(n86), .B(n89), .Y(n96) );
  NOR2X4M U184 ( .A(n151), .B(a[5]), .Y(n134) );
  NAND2XLM U185 ( .A(n61), .B(quotient[1]), .Y(n59) );
  XOR2X1M U186 ( .A(n62), .B(b[4]), .Y(n61) );
  NOR2X1M U187 ( .A(n2), .B(n88), .Y(n87) );
  XOR2X1M U188 ( .A(n89), .B(b[4]), .Y(n88) );
  NOR2X2M U189 ( .A(n151), .B(a[1]), .Y(n49) );
  OAI2B1X2M U190 ( .A1N(n79), .A0(n103), .B0(n22), .Y(n102) );
  BUFX4M U191 ( .A(n24), .Y(n152) );
  AOI21X1M U192 ( .A0(quotient[1]), .A1(n49), .B0(a[1]), .Y(n47) );
  NOR2X1M U193 ( .A(n2), .B(n78), .Y(n77) );
  NOR2X1M U194 ( .A(n9), .B(n99), .Y(n98) );
  XOR2X1M U195 ( .A(n100), .B(n157), .Y(n99) );
  NOR2X1M U196 ( .A(n2), .B(n81), .Y(n80) );
  XOR2X1M U197 ( .A(n58), .B(n157), .Y(n57) );
  XOR2X1M U198 ( .A(n85), .B(n157), .Y(n84) );
  NOR2X1M U199 ( .A(n2), .B(n84), .Y(n83) );
  CLKBUFX6M U200 ( .A(n23), .Y(n156) );
  OAI21X2M U201 ( .A0(n36), .A1(n37), .B0(n38), .Y(n34) );
  INVX2M U202 ( .A(b[6]), .Y(n21) );
  NOR2X1M U203 ( .A(n9), .B(n112), .Y(n111) );
  BUFX4M U204 ( .A(n153), .Y(quotient[5]) );
  OAI32X2M U205 ( .A0(n139), .A1(quotient[7]), .A2(n13), .B0(n18), .B1(n140), 
        .Y(n153) );
  CLKINVX2M U206 ( .A(n93), .Y(n3) );
  INVX2M U207 ( .A(n134), .Y(n15) );
  INVX2M U208 ( .A(n120), .Y(n16) );
  INVX2M U209 ( .A(n49), .Y(n17) );
  INVXLM U210 ( .A(quotient[4]), .Y(n11) );
  AO21XLM U211 ( .A0(quotient[4]), .A1(n120), .B0(a[4]), .Y(n121) );
  AO21XLM U212 ( .A0(n155), .A1(n107), .B0(a[3]), .Y(n109) );
  OAI21X4M U213 ( .A0(n60), .A1(n62), .B0(n70), .Y(n66) );
  OAI22X4M U214 ( .A0(n5), .A1(n86), .B0(b[4]), .B1(n96), .Y(n94) );
  INVX2M U215 ( .A(n89), .Y(n5) );
  OAI2BB1X2M U216 ( .A0N(n158), .A1N(n74), .B0(n75), .Y(n42) );
  OAI21X2M U217 ( .A0(n2), .A1(n152), .B0(a[2]), .Y(n75) );
  NOR2X2M U218 ( .A(n134), .B(n136), .Y(n143) );
  INVX6M U219 ( .A(n159), .Y(n157) );
  INVX2M U220 ( .A(b[3]), .Y(n159) );
  XNOR2X4M U221 ( .A(n86), .B(n87), .Y(n63) );
  NOR2X4M U222 ( .A(n151), .B(a[4]), .Y(n120) );
  NOR2X6M U223 ( .A(n151), .B(a[3]), .Y(n107) );
  NOR2X4M U224 ( .A(n151), .B(a[2]), .Y(n74) );
  OAI211X2M U225 ( .A0(n126), .A1(n128), .B0(n130), .C0(n131), .Y(n129) );
  AOI21X1M U226 ( .A0(n157), .A1(n95), .B0(n19), .Y(n131) );
  AO21XLM U227 ( .A0(n128), .A1(n126), .B0(n22), .Y(n130) );
  NAND2X2M U228 ( .A(n141), .B(n138), .Y(n139) );
  OAI31X2M U229 ( .A0(n140), .A1(n157), .A2(n19), .B0(n18), .Y(n141) );
  OAI2BB2X4M U230 ( .B0(n143), .B1(n156), .A0N(n136), .A1N(n134), .Y(n140) );
  NAND2X2M U231 ( .A(n21), .B(n20), .Y(n90) );
  AOI2BB1X2M U232 ( .A0N(n115), .A1N(n92), .B0(n116), .Y(n114) );
  OAI21X4M U233 ( .A0(n12), .A1(n100), .B0(n117), .Y(n115) );
  INVX2M U234 ( .A(n97), .Y(n12) );
  CLKXOR2X2M U235 ( .A(n72), .B(n105), .Y(n79) );
  NOR2X2M U236 ( .A(n9), .B(n106), .Y(n105) );
  CLKXOR2X2M U237 ( .A(n107), .B(n156), .Y(n106) );
  CLKINVX3M U238 ( .A(n45), .Y(quotient[1]) );
  AO2B2X2M U239 ( .B0(n85), .B1(n82), .A0(n148), .A1N(n157), .Y(n89) );
  OAI21X4M U240 ( .A0(n152), .A1(n138), .B0(a[6]), .Y(n136) );
  OAI21X4M U241 ( .A0(n6), .A1(n79), .B0(n102), .Y(n85) );
  OAI21X4M U242 ( .A0(n55), .A1(n58), .B0(n71), .Y(n62) );
  OAI2BB1X2M U243 ( .A0N(n58), .A1N(n55), .B0(n157), .Y(n71) );
  NAND3BX2M U244 ( .AN(b[5]), .B(n21), .C(n20), .Y(n92) );
  OAI2BB1X2M U245 ( .A0N(n17), .A1N(n42), .B0(n73), .Y(n54) );
  OAI21X2M U246 ( .A0(n42), .A1(n17), .B0(n156), .Y(n73) );
  OAI2BB1X2M U247 ( .A0N(n16), .A1N(n123), .B0(n132), .Y(n128) );
  OAI21X2M U248 ( .A0(n123), .A1(n16), .B0(n156), .Y(n132) );
  OAI2BB2X2M U249 ( .B0(b[5]), .B1(n30), .A0N(n31), .A1N(n32), .Y(n28) );
  NOR2X2M U250 ( .A(n32), .B(n31), .Y(n30) );
  OAI21X2M U251 ( .A0(n33), .A1(n34), .B0(n35), .Y(n31) );
  CLKXOR2X2M U252 ( .A(n59), .B(n60), .Y(n32) );
  AOI2BB2X2M U253 ( .B0(quotient[1]), .B1(n17), .A0N(n156), .A1N(a[0]), .Y(n50) );
  OAI2B1X2M U254 ( .A1N(n100), .A0(n97), .B0(n157), .Y(n117) );
  INVX2M U255 ( .A(n103), .Y(n6) );
  OA21X2M U256 ( .A0(n46), .A1(n47), .B0(n48), .Y(n39) );
  OAI21X2M U257 ( .A0(a[0]), .A1(n152), .B0(n156), .Y(n48) );
  NOR2X2M U258 ( .A(n50), .B(n152), .Y(n46) );
  AO21XLM U259 ( .A0(n34), .A1(n33), .B0(b[4]), .Y(n35) );
  AND2X2M U260 ( .A(n40), .B(n39), .Y(n41) );
  XNOR2X4M U261 ( .A(n7), .B(n77), .Y(n51) );
  CLKXOR2X2M U262 ( .A(n74), .B(n156), .Y(n78) );
  CLKXOR2X2M U263 ( .A(n97), .B(n98), .Y(n86) );
  CLKXOR2X2M U264 ( .A(n135), .B(n136), .Y(n126) );
  NAND2XLM U265 ( .A(n137), .B(quotient[5]), .Y(n135) );
  CLKXOR2X2M U266 ( .A(n156), .B(n15), .Y(n137) );
  XNOR2X4M U267 ( .A(n122), .B(n123), .Y(n110) );
  NAND2XLM U268 ( .A(n124), .B(quotient[4]), .Y(n122) );
  CLKXOR2X2M U269 ( .A(n156), .B(n16), .Y(n124) );
  OR4X2M U270 ( .A(n13), .B(quotient[7]), .C(quotient[5]), .D(quotient[6]), 
        .Y(n95) );
  CLKXOR2X2M U271 ( .A(n125), .B(n126), .Y(n97) );
  NAND2XLM U272 ( .A(n127), .B(quotient[4]), .Y(n125) );
  CLKXOR2X2M U273 ( .A(n22), .B(n128), .Y(n127) );
  XNOR2X4M U274 ( .A(n79), .B(n80), .Y(n55) );
  CLKXOR2X2M U275 ( .A(n22), .B(n6), .Y(n81) );
  XNOR2X4M U276 ( .A(n55), .B(n56), .Y(n33) );
  NOR2X1M U277 ( .A(n57), .B(n10), .Y(n56) );
  BUFX4M U278 ( .A(n24), .Y(n151) );
  CLKXOR2X2M U279 ( .A(n63), .B(n64), .Y(n27) );
  NOR2X1M U280 ( .A(n65), .B(n10), .Y(n64) );
  CLKXOR2X2M U281 ( .A(n66), .B(b[5]), .Y(n65) );
  CLKINVX1M U282 ( .A(n138), .Y(quotient[6]) );
  AOI21X1M U283 ( .A0(quotient[5]), .A1(n134), .B0(a[5]), .Y(n133) );
  OAI32X2M U284 ( .A0(n25), .A1(quotient[2]), .A2(quotient[1]), .B0(b[7]), 
        .B1(n26), .Y(quotient[0]) );
  AO21XLM U285 ( .A0(n26), .A1(b[7]), .B0(n3), .Y(n25) );
  OAI21X2M U286 ( .A0(n27), .A1(n28), .B0(n29), .Y(n26) );
  AO21XLM U287 ( .A0(n28), .A1(n27), .B0(n21), .Y(n29) );
  AO2B2X2M U288 ( .B0(n113), .B1(n110), .A0(n149), .A1N(b[2]), .Y(n100) );
  OAI21X4M U289 ( .A0(n107), .A1(n72), .B0(n119), .Y(n113) );
  AO21XLM U290 ( .A0(n72), .A1(n107), .B0(b[1]), .Y(n119) );
  OAI2BB1X2M U291 ( .A0N(n37), .A1N(n36), .B0(n157), .Y(n38) );
  CLKXOR2X2M U292 ( .A(n51), .B(n52), .Y(n36) );
  OAI22X1M U293 ( .A0(quotient[2]), .A1(n3), .B0(b[6]), .B1(n67), .Y(n68) );
  OAI21X2M U294 ( .A0(n63), .A1(n66), .B0(n69), .Y(n67) );
  OAI2BB1X2M U295 ( .A0N(n66), .A1N(n63), .B0(b[5]), .Y(n69) );
  INVX2M U296 ( .A(b[7]), .Y(n20) );
  AO2B2X2M U297 ( .B0(n54), .B1(n51), .A0(n150), .A1N(b[2]), .Y(n58) );
  OR2X2M U298 ( .A(n51), .B(n54), .Y(n150) );
  INVXLM U299 ( .A(b[1]), .Y(n23) );
  AO21XLM U300 ( .A0(n7), .A1(n74), .B0(b[1]), .Y(n108) );
  XNOR2X4M U301 ( .A(n42), .B(n43), .Y(n40) );
  NOR2X1M U302 ( .A(n44), .B(n45), .Y(n43) );
  CLKXOR2X2M U303 ( .A(n17), .B(b[1]), .Y(n44) );
  CLKXOR2X2M U304 ( .A(n110), .B(n111), .Y(n82) );
  CLKXOR2X2M U305 ( .A(n113), .B(b[2]), .Y(n112) );
  NOR2X1M U306 ( .A(n53), .B(n10), .Y(n52) );
  CLKXOR2X2M U307 ( .A(n54), .B(b[2]), .Y(n53) );
  INVX2M U308 ( .A(a[7]), .Y(n13) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n8, n10, n12, n13, n14, n16, n7, n9, n11, n15
;

  AO2B2X2M U25 ( .B0(n10), .B1(A[4]), .A0(n7), .A1N(B[4]), .Y(n8) );
  OR2X2M U26 ( .A(A[4]), .B(n10), .Y(n7) );
  AO2B2X2M U27 ( .B0(n8), .B1(A[5]), .A0(n9), .A1N(B[5]), .Y(n5) );
  OR2X2M U28 ( .A(A[5]), .B(n8), .Y(n9) );
  INVX2M U29 ( .A(A[0]), .Y(n3) );
  XNOR3X2M U30 ( .A(B[4]), .B(A[4]), .C(n10), .Y(DIFF[4]) );
  XNOR3X2M U31 ( .A(B[5]), .B(A[5]), .C(n8), .Y(DIFF[5]) );
  INVX2M U32 ( .A(A[2]), .Y(n1) );
  AO2B2X2M U33 ( .B0(n12), .B1(A[3]), .A0(n11), .A1N(B[3]), .Y(n10) );
  OR2X2M U34 ( .A(A[3]), .B(n12), .Y(n11) );
  XNOR3X2M U35 ( .A(B[3]), .B(A[3]), .C(n12), .Y(DIFF[3]) );
  OAI21X4M U36 ( .A0(n2), .A1(n1), .B0(n13), .Y(n12) );
  AO21XLM U37 ( .A0(n1), .A1(n2), .B0(B[2]), .Y(n13) );
  INVX2M U38 ( .A(n14), .Y(n2) );
  NAND2X2M U39 ( .A(B[0]), .B(n3), .Y(n16) );
  AO2B2X2M U40 ( .B0(n16), .B1(A[1]), .A0(n15), .A1N(B[1]), .Y(n14) );
  OR2X2M U41 ( .A(A[1]), .B(n16), .Y(n15) );
  XOR3XLM U42 ( .A(B[7]), .B(A[7]), .C(n4), .Y(DIFF[7]) );
  OAI21X2M U43 ( .A0(A[6]), .A1(n5), .B0(n6), .Y(n4) );
  OAI2BB1X2M U44 ( .A0N(n5), .A1N(A[6]), .B0(B[6]), .Y(n6) );
  XNOR3X2M U45 ( .A(B[6]), .B(A[6]), .C(n5), .Y(DIFF[6]) );
  XOR3XLM U46 ( .A(B[2]), .B(n1), .C(n14), .Y(DIFF[2]) );
  OAI21X1M U47 ( .A0(B[0]), .A1(n3), .B0(n16), .Y(DIFF[0]) );
  XNOR3XLM U48 ( .A(B[1]), .B(A[1]), .C(n16), .Y(DIFF[1]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  AND2X2M U22 ( .A(B[0]), .B(A[0]), .Y(n12) );
  OAI2BB1X2M U23 ( .A0N(n4), .A1N(A[5]), .B0(n5), .Y(n2) );
  OAI21X2M U24 ( .A0(A[5]), .A1(n4), .B0(B[5]), .Y(n5) );
  AO22X2M U25 ( .A0(n6), .A1(A[4]), .B0(n7), .B1(B[4]), .Y(n4) );
  OR2X2M U26 ( .A(A[4]), .B(n6), .Y(n7) );
  XOR3XLM U27 ( .A(B[4]), .B(A[4]), .C(n6), .Y(SUM[4]) );
  XOR3XLM U28 ( .A(B[5]), .B(A[5]), .C(n4), .Y(SUM[5]) );
  BUFX2M U29 ( .A(B[3]), .Y(n14) );
  AO22X2M U30 ( .A0(n8), .A1(A[3]), .B0(n9), .B1(n14), .Y(n6) );
  OR2X2M U31 ( .A(A[3]), .B(n8), .Y(n9) );
  XOR3XLM U32 ( .A(n14), .B(A[3]), .C(n8), .Y(SUM[3]) );
  OAI2BB1X2M U33 ( .A0N(n10), .A1N(A[2]), .B0(n11), .Y(n8) );
  OAI21X1M U34 ( .A0(A[2]), .A1(n10), .B0(B[2]), .Y(n11) );
  OAI2BB1X2M U35 ( .A0N(n12), .A1N(A[1]), .B0(n13), .Y(n10) );
  OAI21X1M U36 ( .A0(n12), .A1(A[1]), .B0(B[1]), .Y(n13) );
  XOR3XLM U37 ( .A(B[7]), .B(A[7]), .C(n1), .Y(SUM[7]) );
  AO2B2X2M U38 ( .B0(n2), .B1(A[6]), .A0(B[6]), .A1N(n3), .Y(n1) );
  NOR2X2M U39 ( .A(A[6]), .B(n2), .Y(n3) );
  XOR3XLM U40 ( .A(B[6]), .B(A[6]), .C(n2), .Y(SUM[6]) );
  XOR3XLM U41 ( .A(B[2]), .B(A[2]), .C(n10), .Y(SUM[2]) );
  XOR2X1M U42 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR3XLM U43 ( .A(B[1]), .B(A[1]), .C(n12), .Y(SUM[1]) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n55, n76, n98, n99;

  AND2X2M U106 ( .A(A[0]), .B(B[2]), .Y(n80) );
  NAND2X2M U107 ( .A(A[3]), .B(B[1]), .Y(n73) );
  CLKINVX1M U108 ( .A(B[2]), .Y(n7) );
  CLKNAND2X2M U109 ( .A(B[2]), .B(A[3]), .Y(n57) );
  CLKNAND2X2M U110 ( .A(B[0]), .B(A[4]), .Y(n78) );
  CLKNAND2X2M U111 ( .A(B[0]), .B(A[6]), .Y(n47) );
  NOR2BX2M U112 ( .AN(B[4]), .B(n5), .Y(n53) );
  XNOR2X4M U113 ( .A(n52), .B(n53), .Y(n48) );
  XOR3X2M U114 ( .A(n51), .B(n48), .C(n49), .Y(n58) );
  XNOR2X4M U115 ( .A(n70), .B(n71), .Y(n67) );
  NOR2BX4M U116 ( .AN(n98), .B(n5), .Y(n71) );
  XOR3X2M U117 ( .A(n33), .B(n30), .C(n31), .Y(n34) );
  OA22X2M U118 ( .A0(n48), .A1(n49), .B0(n50), .B1(n51), .Y(n31) );
  AND2X2M U119 ( .A(n49), .B(n48), .Y(n50) );
  NAND2X2M U120 ( .A(n70), .B(n71), .Y(n49) );
  NAND2X2M U121 ( .A(n52), .B(n53), .Y(n23) );
  AOI21X2M U122 ( .A0(n30), .A1(n31), .B0(n33), .Y(n32) );
  INVX4M U123 ( .A(A[1]), .Y(n5) );
  INVX2M U124 ( .A(n81), .Y(n4) );
  XOR3X2M U125 ( .A(n25), .B(n22), .C(n23), .Y(n30) );
  INVX2M U126 ( .A(B[5]), .Y(n6) );
  NAND2X2M U127 ( .A(A[2]), .B(B[4]), .Y(n25) );
  NAND2X2M U128 ( .A(A[2]), .B(n98), .Y(n51) );
  AND2X2M U129 ( .A(A[0]), .B(B[4]), .Y(n70) );
  AND2X2M U130 ( .A(A[0]), .B(B[5]), .Y(n52) );
  INVX4M U131 ( .A(n99), .Y(n98) );
  INVX2M U132 ( .A(B[3]), .Y(n99) );
  OAI22X1M U133 ( .A0(n22), .A1(n23), .B0(n24), .B1(n25), .Y(n21) );
  AND2X2M U134 ( .A(n23), .B(n22), .Y(n24) );
  NAND2X2M U135 ( .A(n98), .B(A[3]), .Y(n33) );
  AOI31X2M U136 ( .A0(A[4]), .A1(n2), .A2(B[4]), .B0(n43), .Y(n38) );
  AOI22X1M U137 ( .A0(B[4]), .A1(A[3]), .B0(A[4]), .B1(n98), .Y(n43) );
  INVX2M U138 ( .A(n33), .Y(n2) );
  AO2B2X2M U139 ( .B0(n57), .B1(n58), .A0(n55), .A1N(n56), .Y(n35) );
  OR2X2M U140 ( .A(n58), .B(n57), .Y(n55) );
  AO2B2X2M U141 ( .B0(n78), .B1(n79), .A0(n76), .A1N(n77), .Y(n64) );
  OR2X2M U142 ( .A(n79), .B(n78), .Y(n76) );
  XNOR3X2M U143 ( .A(n75), .B(n73), .C(n72), .Y(n79) );
  OAI22X4M U144 ( .A0(n67), .A1(n68), .B0(n69), .B1(n41), .Y(n56) );
  AND2X2M U145 ( .A(n68), .B(n67), .Y(n69) );
  XOR3X2M U146 ( .A(n37), .B(n35), .C(n34), .Y(n19) );
  OAI22X4M U147 ( .A0(n81), .A1(n82), .B0(n83), .B1(n84), .Y(n75) );
  NOR2BX2M U148 ( .AN(n82), .B(n4), .Y(n83) );
  XNOR3X2M U149 ( .A(n57), .B(n58), .C(n56), .Y(n60) );
  XNOR3X2M U150 ( .A(n18), .B(n16), .C(n19), .Y(n46) );
  XOR3X2M U151 ( .A(n62), .B(n59), .C(n60), .Y(n63) );
  XOR3X2M U152 ( .A(n84), .B(n4), .C(n82), .Y(n86) );
  XOR3X2M U153 ( .A(n41), .B(n67), .C(n68), .Y(n72) );
  OAI2BB1X2M U154 ( .A0N(n85), .A1N(n86), .B0(n87), .Y(n77) );
  OAI21X2M U155 ( .A0(n86), .A1(n85), .B0(n88), .Y(n87) );
  NAND2X2M U156 ( .A(n71), .B(n80), .Y(n68) );
  NAND2X2M U157 ( .A(n80), .B(n93), .Y(n82) );
  CLKXOR2X2M U158 ( .A(n94), .B(n95), .Y(n81) );
  NAND2X2M U159 ( .A(A[0]), .B(n98), .Y(n94) );
  NOR2X2M U160 ( .A(n7), .B(n5), .Y(n95) );
  XNOR3X2M U161 ( .A(n44), .B(n47), .C(n46), .Y(PRODUCT[6]) );
  XOR3XLM U162 ( .A(n8), .B(n9), .C(n10), .Y(PRODUCT[7]) );
  XOR3XLM U163 ( .A(n38), .B(n39), .C(n40), .Y(n9) );
  CLKXOR2X2M U164 ( .A(n11), .B(n12), .Y(n10) );
  AOI22X1M U165 ( .A0(n44), .A1(n45), .B0(n46), .B1(n47), .Y(n8) );
  AOI21BX2M U166 ( .A0(n59), .A1(n60), .B0N(n61), .Y(n16) );
  OAI21X2M U167 ( .A0(n59), .A1(n60), .B0(n62), .Y(n61) );
  OA21X2M U168 ( .A0(n72), .A1(n73), .B0(n74), .Y(n62) );
  OAI2BB1X2M U169 ( .A0N(n73), .A1N(n72), .B0(n75), .Y(n74) );
  OA22X2M U170 ( .A0(n63), .A1(n64), .B0(n65), .B1(n66), .Y(n44) );
  AND2X2M U171 ( .A(n64), .B(n63), .Y(n65) );
  OR2X2M U172 ( .A(n46), .B(n47), .Y(n45) );
  CLKXOR2X2M U173 ( .A(n80), .B(n93), .Y(n91) );
  CLKXOR2X2M U174 ( .A(n26), .B(n54), .Y(n22) );
  NOR2X2M U175 ( .A(n6), .B(n5), .Y(n54) );
  OAI2BB2X4M U176 ( .B0(n89), .B1(n90), .A0N(n91), .A1N(n3), .Y(n85) );
  NOR2X2M U177 ( .A(n3), .B(n91), .Y(n89) );
  INVX2M U178 ( .A(n92), .Y(n3) );
  AOI21X2M U179 ( .A0(n34), .A1(n35), .B0(n37), .Y(n36) );
  NOR2X2M U180 ( .A(n18), .B(n19), .Y(n17) );
  NAND2X2M U181 ( .A(PRODUCT[0]), .B(n93), .Y(n92) );
  XNOR3X2M U182 ( .A(n66), .B(n64), .C(n63), .Y(PRODUCT[5]) );
  XOR3XLM U183 ( .A(n78), .B(n77), .C(n79), .Y(PRODUCT[4]) );
  OAI31X2M U184 ( .A0(n6), .A1(n41), .A2(n1), .B0(n42), .Y(n40) );
  OAI2BB2X1M U185 ( .B0(n7), .B1(n1), .A0N(A[2]), .A1N(B[5]), .Y(n42) );
  INVX2M U186 ( .A(A[5]), .Y(n1) );
  XOR3XLM U187 ( .A(n88), .B(n86), .C(n85), .Y(PRODUCT[3]) );
  XOR3XLM U188 ( .A(n90), .B(n92), .C(n91), .Y(PRODUCT[2]) );
  NAND2X2M U189 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NOR2BX4M U190 ( .AN(B[1]), .B(n5), .Y(n93) );
  NAND2X1M U191 ( .A(B[0]), .B(A[2]), .Y(n90) );
  NAND2X1M U192 ( .A(A[2]), .B(B[1]), .Y(n84) );
  NAND2X2M U193 ( .A(B[6]), .B(A[0]), .Y(n26) );
  XOR3XLM U194 ( .A(n13), .B(n14), .C(n15), .Y(n12) );
  NAND2XLM U195 ( .A(A[7]), .B(B[0]), .Y(n14) );
  CLKXOR2X2M U196 ( .A(n20), .B(n21), .Y(n13) );
  OAI2BB2X1M U197 ( .B0(n16), .B1(n17), .A0N(n18), .A1N(n19), .Y(n15) );
  XOR3XLM U198 ( .A(n27), .B(n28), .C(n29), .Y(n11) );
  NAND2X2M U199 ( .A(B[7]), .B(A[0]), .Y(n29) );
  AOI2BB1X2M U200 ( .A0N(n30), .A1N(n31), .B0(n32), .Y(n28) );
  AOI2BB1X2M U201 ( .A0N(n34), .A1N(n35), .B0(n36), .Y(n27) );
  AND2X1M U202 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
  NAND2X2M U203 ( .A(A[5]), .B(B[1]), .Y(n18) );
  NAND2X2M U204 ( .A(A[4]), .B(B[1]), .Y(n59) );
  NAND2X1M U205 ( .A(B[2]), .B(A[4]), .Y(n37) );
  AND2X1M U206 ( .A(B[0]), .B(A[3]), .Y(n88) );
  NAND2X1M U207 ( .A(B[0]), .B(A[5]), .Y(n66) );
  NAND2XLM U208 ( .A(B[1]), .B(A[6]), .Y(n39) );
  OAI211X2M U209 ( .A0(n6), .A1(n26), .B0(A[1]), .C0(B[6]), .Y(n20) );
  CLKXOR2X2M U210 ( .A(n96), .B(n97), .Y(PRODUCT[1]) );
  NAND2XLM U211 ( .A(A[1]), .B(B[0]), .Y(n96) );
  NAND2XLM U212 ( .A(A[0]), .B(B[1]), .Y(n97) );
endmodule


module ALU ( A, B, ALU_FUN, CLK, RST, Enable, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [7:0] ALU_OUT;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, n1, n2, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n3, n14, n15,
         n38, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [7:0] ALU_OUT_Comb;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  ALU_DW_div_uns_0 div_51 ( .a({A[7], n152, n149, n146, n143, n140, n138, n135}), .b({B[7:6], n131, n128, B[3:0]}), .quotient({N122, N121, N120, N119, N118, 
        N117, N116, N115}) );
  ALU_DW01_sub_0 sub_45 ( .A({A[7], n153, n149, n146, n143, n141, n137, n135}), 
        .B({B[7:6], n132, n129, n156, B[2:0]}), .CI(1'b0), .DIFF({N106, N105, 
        N104, N103, N102, N101, N100, N99}) );
  ALU_DW01_add_0 add_42 ( .A({A[7], n153, n150, n147, n144, n141, n138, n134}), 
        .B({B[7:6], n132, n129, B[3:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_48 ( .A({A[7], n152, n149, n146, n143, n140, n137, n134}), .B({B[7:6], n131, n128, B[3:0]}), .TC(1'b0), .PRODUCT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, N114, N113, N112, 
        N111, N110, N109, N108, N107}) );
  OAI32X4M U71 ( .A0(n8), .A1(n114), .A2(n115), .B0(B[2]), .B1(n9), .Y(n113)
         );
  DFFRQX2M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  INVX2M U134 ( .A(ALU_FUN[3]), .Y(n23) );
  NOR2X4M U135 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .Y(n125) );
  NAND3X2M U136 ( .A(n26), .B(n24), .C(ALU_FUN[0]), .Y(n99) );
  INVX4M U137 ( .A(n3), .Y(n154) );
  NOR2X8M U138 ( .A(n99), .B(ALU_FUN[3]), .Y(n45) );
  OR3X2M U139 ( .A(n101), .B(ALU_FUN[1]), .C(n27), .Y(n3) );
  INVX4M U140 ( .A(n151), .Y(n152) );
  INVX2M U141 ( .A(B[5]), .Y(n130) );
  INVX2M U142 ( .A(B[2]), .Y(n16) );
  INVX2M U143 ( .A(B[1]), .Y(n17) );
  BUFX4M U144 ( .A(n37), .Y(n14) );
  OAI22X1M U145 ( .A0(n23), .A1(n99), .B0(n100), .B1(n101), .Y(n37) );
  AOI31X1M U146 ( .A0(n138), .A1(n18), .A2(n135), .B0(n17), .Y(n114) );
  INVX2M U147 ( .A(B[0]), .Y(n18) );
  BUFX4M U148 ( .A(n41), .Y(n15) );
  OAI22X1M U149 ( .A0(n23), .A1(n99), .B0(n101), .B1(n26), .Y(n41) );
  BUFX4M U150 ( .A(n43), .Y(n38) );
  NOR3BX2M U151 ( .AN(n125), .B(n27), .C(n26), .Y(n43) );
  BUFX4M U152 ( .A(n42), .Y(n126) );
  AOI222X2M U153 ( .A0(N107), .A1(n126), .B0(N115), .B1(n38), .C0(n135), .C1(
        n154), .Y(n94) );
  AOI222X2M U154 ( .A0(N114), .A1(n126), .B0(N122), .B1(n38), .C0(n155), .C1(
        A[7]), .Y(n30) );
  AOI222X2M U155 ( .A0(N113), .A1(n126), .B0(N121), .B1(n38), .C0(n154), .C1(
        n152), .Y(n47) );
  AOI222X2M U156 ( .A0(N112), .A1(n126), .B0(N120), .B1(n38), .C0(n150), .C1(
        n155), .Y(n57) );
  AOI222X2M U157 ( .A0(N110), .A1(n126), .B0(N118), .B1(n38), .C0(n144), .C1(
        n155), .Y(n71) );
  AOI222X2M U158 ( .A0(N109), .A1(n126), .B0(N117), .B1(n38), .C0(n141), .C1(
        n154), .Y(n77) );
  AOI222X2M U159 ( .A0(N108), .A1(n126), .B0(N116), .B1(n38), .C0(n137), .C1(
        n155), .Y(n85) );
  AOI222X2M U160 ( .A0(N111), .A1(n126), .B0(N119), .B1(n38), .C0(n147), .C1(
        n154), .Y(n64) );
  NOR3BX2M U161 ( .AN(n125), .B(n26), .C(ALU_FUN[0]), .Y(n42) );
  INVX2M U162 ( .A(n157), .Y(n156) );
  AOI31X1M U163 ( .A0(n46), .A1(n47), .A2(n48), .B0(n28), .Y(ALU_OUT_Comb[6])
         );
  INVX4M U164 ( .A(n3), .Y(n155) );
  NAND2X2M U165 ( .A(n89), .B(n23), .Y(n55) );
  INVX6M U166 ( .A(n127), .Y(n128) );
  INVX4M U167 ( .A(n130), .Y(n131) );
  AOI31X1M U168 ( .A0(n84), .A1(n85), .A2(n86), .B0(n28), .Y(ALU_OUT_Comb[1])
         );
  AOI31X1M U169 ( .A0(n76), .A1(n77), .A2(n78), .B0(n28), .Y(ALU_OUT_Comb[2])
         );
  INVX4M U170 ( .A(n139), .Y(n140) );
  AOI31X1M U171 ( .A0(n70), .A1(n71), .A2(n72), .B0(n28), .Y(ALU_OUT_Comb[3])
         );
  INVX4M U172 ( .A(n136), .Y(n138) );
  AOI31X1M U173 ( .A0(n63), .A1(n64), .A2(n65), .B0(n28), .Y(ALU_OUT_Comb[4])
         );
  AOI31X1M U174 ( .A0(n56), .A1(n57), .A2(n58), .B0(n28), .Y(ALU_OUT_Comb[5])
         );
  NOR3X4M U175 ( .A(n24), .B(ALU_FUN[0]), .C(n26), .Y(n89) );
  INVX2M U176 ( .A(ALU_FUN[2]), .Y(n24) );
  NAND2X2M U177 ( .A(n89), .B(ALU_FUN[3]), .Y(n62) );
  NAND4X4M U178 ( .A(ALU_FUN[0]), .B(ALU_FUN[2]), .C(ALU_FUN[3]), .D(n26), .Y(
        n54) );
  INVX4M U179 ( .A(n139), .Y(n141) );
  OAI21BX2M U180 ( .A0(n39), .A1(n107), .B0N(n40), .Y(n106) );
  INVX4M U181 ( .A(n145), .Y(n147) );
  INVX4M U182 ( .A(n127), .Y(n129) );
  INVX4M U183 ( .A(n130), .Y(n132) );
  AOI31X1M U184 ( .A0(n29), .A1(n30), .A2(n31), .B0(n28), .Y(ALU_OUT_Comb[7])
         );
  OAI21BX2M U185 ( .A0(n40), .A1(n116), .B0N(n39), .Y(n104) );
  INVX2M U186 ( .A(A[7]), .Y(n2) );
  INVX2M U187 ( .A(n100), .Y(n25) );
  INVX6M U188 ( .A(n55), .Y(n22) );
  INVX2M U189 ( .A(n111), .Y(n6) );
  OAI222X1M U190 ( .A0(n60), .A1(n130), .B0(n132), .B1(n61), .C0(n62), .C1(n5), 
        .Y(n59) );
  AOI221X2M U191 ( .A0(n21), .A1(n4), .B0(n150), .B1(n14), .C0(n155), .Y(n60)
         );
  AOI221X2M U192 ( .A0(n15), .A1(n4), .B0(n150), .B1(n21), .C0(n22), .Y(n61)
         );
  INVX4M U193 ( .A(n35), .Y(n21) );
  NAND2X2M U194 ( .A(n27), .B(n26), .Y(n100) );
  OAI222X1M U195 ( .A0(n6), .A1(n35), .B0(n4), .B1(n54), .C0(n147), .C1(n55), 
        .Y(n66) );
  OAI222X1M U196 ( .A0(n83), .A1(n35), .B0(n54), .B1(n7), .C0(n141), .C1(n55), 
        .Y(n79) );
  OAI2B2X1M U197 ( .A1N(n129), .A0(n68), .B0(n129), .B1(n69), .Y(n67) );
  AOI21X1M U198 ( .A0(n147), .A1(n14), .B0(n155), .Y(n68) );
  AOI21X1M U199 ( .A0(n15), .A1(n5), .B0(n22), .Y(n69) );
  OAI22X1M U200 ( .A0(n54), .A1(n9), .B0(n62), .B1(n11), .Y(n88) );
  INVX2M U201 ( .A(n62), .Y(n19) );
  NOR2BX8M U202 ( .AN(n125), .B(n100), .Y(n44) );
  INVX2M U203 ( .A(n54), .Y(n20) );
  INVX2M U204 ( .A(n83), .Y(n8) );
  INVX2M U205 ( .A(n106), .Y(n1) );
  INVX4M U206 ( .A(n141), .Y(n9) );
  INVX4M U207 ( .A(n137), .Y(n10) );
  CLKXOR2X2M U208 ( .A(n129), .B(n147), .Y(n111) );
  INVX4M U209 ( .A(n150), .Y(n4) );
  INVX4M U210 ( .A(n144), .Y(n7) );
  INVX2M U211 ( .A(n147), .Y(n5) );
  NAND2X2M U212 ( .A(n131), .B(n4), .Y(n109) );
  INVX2M U213 ( .A(n135), .Y(n11) );
  AOI31X2M U214 ( .A0(n93), .A1(n94), .A2(n95), .B0(n28), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U215 ( .A0(N91), .A1(n44), .B0(N99), .B1(n45), .Y(n93) );
  AOI211X2M U216 ( .A0(n22), .A1(n11), .B0(n96), .C0(n97), .Y(n95) );
  INVX4M U217 ( .A(n148), .Y(n149) );
  AOI22X1M U218 ( .A0(N92), .A1(n44), .B0(N100), .B1(n45), .Y(n84) );
  AOI211X2M U219 ( .A0(n22), .A1(n10), .B0(n87), .C0(n88), .Y(n86) );
  INVX6M U220 ( .A(n145), .Y(n146) );
  INVX6M U221 ( .A(n142), .Y(n143) );
  AOI22X1M U222 ( .A0(N93), .A1(n44), .B0(N101), .B1(n45), .Y(n76) );
  AOI211X2M U223 ( .A0(n138), .A1(n19), .B0(n79), .C0(n80), .Y(n78) );
  AOI22X1M U224 ( .A0(N94), .A1(n44), .B0(N102), .B1(n45), .Y(n70) );
  AOI221X2M U225 ( .A0(n147), .A1(n20), .B0(n22), .B1(n7), .C0(n73), .Y(n72)
         );
  INVX4M U226 ( .A(ALU_FUN[1]), .Y(n26) );
  AOI22X1M U227 ( .A0(N95), .A1(n44), .B0(N103), .B1(n45), .Y(n63) );
  AOI211X2M U228 ( .A0(n144), .A1(n19), .B0(n66), .C0(n67), .Y(n65) );
  AOI22X1M U229 ( .A0(N96), .A1(n44), .B0(N104), .B1(n45), .Y(n56) );
  AOI221X2M U230 ( .A0(n20), .A1(n153), .B0(n22), .B1(n4), .C0(n59), .Y(n58)
         );
  AOI22X1M U231 ( .A0(N97), .A1(n44), .B0(N105), .B1(n45), .Y(n46) );
  AOI211X2M U232 ( .A0(n150), .A1(n19), .B0(n49), .C0(n50), .Y(n48) );
  INVX2M U233 ( .A(ALU_FUN[0]), .Y(n27) );
  OAI222X1M U234 ( .A0(n74), .A1(n157), .B0(n156), .B1(n75), .C0(n62), .C1(n9), 
        .Y(n73) );
  AOI221X2M U235 ( .A0(n21), .A1(n7), .B0(n144), .B1(n14), .C0(n154), .Y(n74)
         );
  AOI221X2M U236 ( .A0(n15), .A1(n7), .B0(n144), .B1(n21), .C0(n22), .Y(n75)
         );
  OAI22X1M U237 ( .A0(n54), .A1(n10), .B0(n98), .B1(n18), .Y(n97) );
  AOI221X2M U238 ( .A0(n21), .A1(n11), .B0(n135), .B1(n14), .C0(n154), .Y(n98)
         );
  NAND3X4M U239 ( .A(n25), .B(n24), .C(ALU_FUN[3]), .Y(n35) );
  NAND2X2M U240 ( .A(ALU_FUN[2]), .B(n23), .Y(n101) );
  OAI222X1M U241 ( .A0(n53), .A1(n35), .B0(n2), .B1(n54), .C0(n153), .C1(n55), 
        .Y(n49) );
  NAND4X2M U242 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .C(n25), .D(n104), .Y(n92)
         );
  XNOR2X4M U243 ( .A(n16), .B(n9), .Y(n83) );
  AOI32X1M U244 ( .A0(n108), .A1(n109), .A2(n53), .B0(n152), .B1(n13), .Y(n107) );
  OAI222X1M U245 ( .A0(n129), .A1(n5), .B0(n110), .B1(n111), .C0(n132), .C1(n4), .Y(n108) );
  AOI22X1M U246 ( .A0(n112), .A1(n157), .B0(n144), .B1(n113), .Y(n110) );
  INVX6M U247 ( .A(n136), .Y(n137) );
  OR2X2M U248 ( .A(n113), .B(n144), .Y(n112) );
  AOI22X1M U249 ( .A0(n6), .A1(n120), .B0(n129), .B1(n5), .Y(n118) );
  OAI2BB1X2M U250 ( .A0N(n7), .A1N(n121), .B0(n122), .Y(n120) );
  OAI21X2M U251 ( .A0(n7), .A1(n121), .B0(n156), .Y(n122) );
  OAI22X4M U252 ( .A0(n141), .A1(n16), .B0(n123), .B1(n8), .Y(n121) );
  INVX6M U253 ( .A(n133), .Y(n134) );
  INVX6M U254 ( .A(n133), .Y(n135) );
  CLKXOR2X2M U255 ( .A(n13), .B(n152), .Y(n53) );
  INVX6M U256 ( .A(n142), .Y(n144) );
  INVX4M U257 ( .A(n148), .Y(n150) );
  INVX6M U258 ( .A(n151), .Y(n153) );
  INVX2M U259 ( .A(B[4]), .Y(n127) );
  INVX2M U260 ( .A(A[6]), .Y(n151) );
  INVX2M U261 ( .A(B[3]), .Y(n157) );
  INVX2M U262 ( .A(A[5]), .Y(n148) );
  INVX2M U263 ( .A(A[4]), .Y(n145) );
  INVX2M U264 ( .A(A[3]), .Y(n142) );
  INVX2M U265 ( .A(A[2]), .Y(n139) );
  AOI22X1M U266 ( .A0(N98), .A1(n44), .B0(N106), .B1(n45), .Y(n29) );
  AOI221X2M U267 ( .A0(n153), .A1(n19), .B0(n22), .B1(n2), .C0(n32), .Y(n31)
         );
  OAI221X1M U268 ( .A0(B[1]), .A1(n90), .B0(n91), .B1(n17), .C0(n92), .Y(n87)
         );
  AOI221X2M U269 ( .A0(n15), .A1(n10), .B0(n138), .B1(n21), .C0(n22), .Y(n90)
         );
  AOI221X2M U270 ( .A0(n21), .A1(n10), .B0(n137), .B1(n14), .C0(n155), .Y(n91)
         );
  OAI211X1M U271 ( .A0(B[0]), .A1(n102), .B0(n103), .C0(n92), .Y(n96) );
  NAND4X2M U272 ( .A(ALU_FUN[1]), .B(ALU_FUN[3]), .C(n105), .D(n24), .Y(n103)
         );
  AOI221X2M U273 ( .A0(n15), .A1(n11), .B0(n135), .B1(n21), .C0(n22), .Y(n102)
         );
  OAI32X2M U274 ( .A0(n104), .A1(ALU_FUN[0]), .A2(n106), .B0(n1), .B1(n27), 
        .Y(n105) );
  OAI22X1M U275 ( .A0(n81), .A1(n16), .B0(B[2]), .B1(n82), .Y(n80) );
  AOI21X1M U276 ( .A0(n141), .A1(n14), .B0(n154), .Y(n81) );
  AOI21X1M U277 ( .A0(n15), .A1(n9), .B0(n22), .Y(n82) );
  OAI22X1M U278 ( .A0(n51), .A1(n13), .B0(B[6]), .B1(n52), .Y(n50) );
  AOI21X1M U279 ( .A0(n153), .A1(n14), .B0(n154), .Y(n51) );
  AOI21X1M U280 ( .A0(n15), .A1(n151), .B0(n22), .Y(n52) );
  OAI222X1M U281 ( .A0(B[7]), .A1(n33), .B0(n34), .B1(n35), .C0(n36), .C1(n12), 
        .Y(n32) );
  NOR2X2M U282 ( .A(n39), .B(n40), .Y(n34) );
  AOI21X1M U283 ( .A0(A[7]), .A1(n14), .B0(n155), .Y(n36) );
  AOI21X1M U284 ( .A0(n15), .A1(n2), .B0(n22), .Y(n33) );
  INVX4M U285 ( .A(Enable), .Y(n28) );
  INVX2M U286 ( .A(A[1]), .Y(n136) );
  AOI21X2M U287 ( .A0(n135), .A1(n18), .B0(n137), .Y(n115) );
  AOI22X1M U288 ( .A0(n124), .A1(B[0]), .B0(B[1]), .B1(n10), .Y(n123) );
  AOI21X2M U289 ( .A0(n138), .A1(n17), .B0(n135), .Y(n124) );
  AOI22X1M U290 ( .A0(n53), .A1(n117), .B0(B[6]), .B1(n151), .Y(n116) );
  OAI21X2M U291 ( .A0(n118), .A1(n119), .B0(n109), .Y(n117) );
  NOR2X2M U292 ( .A(n132), .B(n4), .Y(n119) );
  INVX2M U293 ( .A(A[0]), .Y(n133) );
  NOR2X4M U294 ( .A(n12), .B(A[7]), .Y(n39) );
  NOR2X4M U295 ( .A(n2), .B(B[7]), .Y(n40) );
  INVX2M U296 ( .A(B[6]), .Y(n13) );
  INVX2M U297 ( .A(B[7]), .Y(n12) );
endmodule


module ClkDiv_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;
  wire   n1, n3, n4, n5, n6, n7;

  NOR3BX4M U4 ( .AN(A[4]), .B(n1), .C(n5), .Y(n4) );
  NAND3X2M U14 ( .A(A[1]), .B(A[0]), .C(A[2]), .Y(n5) );
  XNOR2X2M U15 ( .A(A[3]), .B(n5), .Y(SUM[3]) );
  XNOR2X2M U16 ( .A(A[1]), .B(SUM[0]), .Y(SUM[1]) );
  CLKXOR2X2M U17 ( .A(A[5]), .B(n4), .Y(SUM[5]) );
  CLKXOR2X2M U18 ( .A(A[6]), .B(n3), .Y(SUM[6]) );
  AND2X2M U19 ( .A(n4), .B(A[5]), .Y(n3) );
  CLKXOR2X2M U20 ( .A(A[4]), .B(n6), .Y(SUM[4]) );
  NOR2X2M U21 ( .A(n5), .B(n1), .Y(n6) );
  XNOR2X2M U22 ( .A(A[2]), .B(n7), .Y(SUM[2]) );
  NAND2X2M U23 ( .A(A[1]), .B(A[0]), .Y(n7) );
  INVX2M U24 ( .A(A[3]), .Y(n1) );
  INVX2M U25 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n8, n7, n4, n5, n6, n9, n10, n11,
         n12, n13, n14, n15, n16, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n1;
  wire   [7:0] i_div_ratio_c;
  wire   [6:0] count;

  ClkDiv_DW01_inc_0 add_61 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  MX2X6M U27 ( .A(i_ref_clk), .B(div_clk), .S0(n4), .Y(o_div_clk) );
  OAI221X4M U14 ( .A0(odd_edge_tog), .A1(n26), .B0(n15), .B1(n9), .C0(
        i_div_ratio_c[0]), .Y(n13) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFRQX2M \i_div_ratio_c_reg[0]  ( .D(i_div_ratio[0]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[0]) );
  DFFRQX4M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX4M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX4M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRX2M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]), 
        .QN(n8) );
  DFFRX2M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]), 
        .QN(n7) );
  DFFRQX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \i_div_ratio_c_reg[7]  ( .D(i_div_ratio[7]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[7]) );
  DFFRQX2M \i_div_ratio_c_reg[5]  ( .D(i_div_ratio[5]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[5]) );
  DFFRQX2M \i_div_ratio_c_reg[6]  ( .D(i_div_ratio[6]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[6]) );
  DFFRQX2M \i_div_ratio_c_reg[3]  ( .D(i_div_ratio[3]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[3]) );
  DFFRQX2M \i_div_ratio_c_reg[1]  ( .D(i_div_ratio[1]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[1]) );
  DFFRQX2M \i_div_ratio_c_reg[4]  ( .D(i_div_ratio[4]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[4]) );
  DFFRQX2M \i_div_ratio_c_reg[2]  ( .D(i_div_ratio[2]), .CK(i_ref_clk), .RN(
        i_rst), .Q(i_div_ratio_c[2]) );
  DFFRQX2M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFSX1M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog), .QN(n9) );
  BUFX4M U48 ( .A(n10), .Y(n1) );
  OAI31X2M U49 ( .A0(n35), .A1(i_div_ratio_c[7]), .A2(i_div_ratio_c[6]), .B0(
        i_clk_en), .Y(n10) );
  CLKXOR2X2M U50 ( .A(count[6]), .B(i_div_ratio_c[7]), .Y(n29) );
  CLKINVX2M U51 ( .A(n1), .Y(n4) );
  AND3X4M U52 ( .A(n12), .B(n13), .C(n4), .Y(n11) );
  NAND2X2M U53 ( .A(n44), .B(n5), .Y(n35) );
  NAND2X2M U54 ( .A(n41), .B(n6), .Y(n43) );
  OAI2BB2X1M U55 ( .B0(n7), .B1(n4), .A0N(N19), .A1N(n11), .Y(n22) );
  OAI2BB2X1M U56 ( .B0(n8), .B1(n4), .A0N(N17), .A1N(n11), .Y(n24) );
  AO22XLM U57 ( .A0(n1), .A1(count[5]), .B0(N21), .B1(n11), .Y(n20) );
  AO22XLM U58 ( .A0(n1), .A1(count[6]), .B0(N22), .B1(n11), .Y(n19) );
  AO22XLM U59 ( .A0(n1), .A1(count[0]), .B0(N16), .B1(n11), .Y(n25) );
  AO22XLM U60 ( .A0(n1), .A1(count[4]), .B0(N20), .B1(n11), .Y(n21) );
  AO22XLM U61 ( .A0(n1), .A1(count[2]), .B0(N18), .B1(n11), .Y(n23) );
  CLKXOR2X2M U62 ( .A(div_clk), .B(n14), .Y(n18) );
  AOI21X1M U63 ( .A0(n13), .A1(n12), .B0(n1), .Y(n14) );
  CLKXOR2X2M U64 ( .A(odd_edge_tog), .B(n16), .Y(n17) );
  NOR2X1M U65 ( .A(n1), .B(n13), .Y(n16) );
  NOR2X4M U66 ( .A(i_div_ratio_c[1]), .B(i_div_ratio_c[2]), .Y(n41) );
  NOR2X4M U67 ( .A(n43), .B(i_div_ratio_c[4]), .Y(n44) );
  INVX2M U68 ( .A(i_div_ratio_c[3]), .Y(n6) );
  INVX2M U69 ( .A(i_div_ratio_c[5]), .Y(n5) );
  NOR4X2M U70 ( .A(n47), .B(n48), .C(n29), .D(n49), .Y(n26) );
  CLKXOR2X2M U71 ( .A(i_div_ratio_c[5]), .B(count[4]), .Y(n48) );
  CLKXOR2X2M U72 ( .A(n45), .B(count[4]), .Y(n37) );
  OAI21X2M U73 ( .A0(n44), .A1(n5), .B0(n35), .Y(n45) );
  OAI21X2M U74 ( .A0(n32), .A1(n33), .B0(n34), .Y(n30) );
  AOI2BB1X2M U75 ( .A0N(n29), .A1N(i_div_ratio_c[6]), .B0(n35), .Y(n32) );
  OAI2B1X2M U76 ( .A1N(n35), .A0(n29), .B0(n33), .Y(n34) );
  AND2X2M U77 ( .A(n27), .B(n28), .Y(n15) );
  NOR4X2M U78 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n27) );
  AOI211X2M U79 ( .A0(i_div_ratio_c[6]), .A1(n29), .B0(n30), .C0(n31), .Y(n28)
         );
  CLKXOR2X2M U80 ( .A(n8), .B(n40), .Y(n39) );
  XNOR2X4M U81 ( .A(count[5]), .B(i_div_ratio_c[6]), .Y(n33) );
  CLKXOR2X2M U82 ( .A(n7), .B(n42), .Y(n38) );
  AOI21X2M U83 ( .A0(i_div_ratio_c[4]), .A1(n43), .B0(n44), .Y(n42) );
  CLKXOR2X2M U84 ( .A(n46), .B(count[2]), .Y(n36) );
  OAI21X2M U85 ( .A0(n41), .A1(n6), .B0(n43), .Y(n46) );
  AOI21X2M U86 ( .A0(i_div_ratio_c[2]), .A1(i_div_ratio_c[1]), .B0(n41), .Y(
        n40) );
  NAND2BX2M U87 ( .AN(i_div_ratio_c[0]), .B(n15), .Y(n12) );
  XNOR2X4M U88 ( .A(count[0]), .B(i_div_ratio_c[1]), .Y(n31) );
  CLKXOR2X2M U89 ( .A(i_div_ratio_c[3]), .B(count[2]), .Y(n49) );
  NAND4X2M U90 ( .A(n33), .B(n31), .C(n50), .D(n51), .Y(n47) );
  CLKXOR2X2M U91 ( .A(n7), .B(i_div_ratio_c[4]), .Y(n50) );
  CLKXOR2X2M U92 ( .A(n8), .B(i_div_ratio_c[2]), .Y(n51) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   Latch_Out;

  CLKAND2X4M U2 ( .A(Latch_Out), .B(CLK), .Y(GATED_CLK) );
  TLATNX2M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .Q(Latch_Out) );
endmodule


module System_Top ( CLKDIV_EN, CLKG_EN, CLK, RST, ALU_FUN, ALU_Enable, WrEn, 
        RdEn, Address, WrData, RdData, ALU_VLD, ALU_OUT );
  input [3:0] ALU_FUN;
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] ALU_OUT;
  input CLKDIV_EN, CLKG_EN, CLK, RST, ALU_Enable, WrEn, RdEn;
  output ALU_VLD;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, REG_CLK, ALU_CLK, n1, n3, n5, n7, n9, n11, n13, n15,
         n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n36, n37, n38;
  wire   [7:0] ALU_A;
  wire   [7:0] ALU_B;
  wire   [7:0] CLKDIV_Config;

  RegFile U0_RegFile ( .CLK(REG_CLK), .RST(RST), .WrEn(WrEn), .RdEn(RdEn), 
        .Address(Address), .WrData(WrData), .RdData({n40, n41, n42, n43, n44, 
        n45, n46, n47}), .REG0(ALU_A), .REG1(ALU_B), .REG2(CLKDIV_Config) );
  ALU U0_ALU ( .A(ALU_A), .B({ALU_B[7:4], n38, ALU_B[2:0]}), .ALU_FUN({n37, 
        n36, ALU_FUN[1], n35}), .CLK(ALU_CLK), .RST(RST), .Enable(ALU_Enable), 
        .ALU_OUT({n49, n50, n51, n52, n53, n54, n55, n56}), .OUT_VALID(n48) );
  ClkDiv U0_ClkDiv ( .i_ref_clk(CLK), .i_rst(RST), .i_clk_en(CLKDIV_EN), 
        .i_div_ratio(CLKDIV_Config), .o_div_clk(REG_CLK) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLKG_EN), .CLK(CLK), .GATED_CLK(ALU_CLK) );
  BUFX2M U1 ( .A(ALU_B[3]), .Y(n38) );
  CLKBUFX6M U2 ( .A(ALU_FUN[3]), .Y(n37) );
  BUFX4M U3 ( .A(ALU_FUN[0]), .Y(n35) );
  BUFX4M U4 ( .A(ALU_FUN[2]), .Y(n36) );
  CLKINVX1M U5 ( .A(n47), .Y(n1) );
  CLKINVX40M U6 ( .A(n1), .Y(RdData[0]) );
  CLKINVX1M U7 ( .A(n46), .Y(n3) );
  CLKINVX40M U8 ( .A(n3), .Y(RdData[1]) );
  CLKINVX1M U9 ( .A(n45), .Y(n5) );
  CLKINVX40M U10 ( .A(n5), .Y(RdData[2]) );
  CLKINVX1M U11 ( .A(n44), .Y(n7) );
  CLKINVX40M U12 ( .A(n7), .Y(RdData[3]) );
  CLKINVX1M U13 ( .A(n43), .Y(n9) );
  CLKINVX40M U14 ( .A(n9), .Y(RdData[4]) );
  CLKINVX1M U15 ( .A(n42), .Y(n11) );
  CLKINVX40M U16 ( .A(n11), .Y(RdData[5]) );
  CLKINVX1M U17 ( .A(n41), .Y(n13) );
  CLKINVX40M U18 ( .A(n13), .Y(RdData[6]) );
  CLKINVX1M U19 ( .A(n40), .Y(n15) );
  CLKINVX40M U20 ( .A(n15), .Y(RdData[7]) );
  CLKINVX1M U21 ( .A(n56), .Y(n17) );
  CLKINVX40M U22 ( .A(n17), .Y(ALU_OUT[0]) );
  CLKINVX1M U23 ( .A(n55), .Y(n19) );
  CLKINVX40M U24 ( .A(n19), .Y(ALU_OUT[1]) );
  CLKINVX1M U25 ( .A(n54), .Y(n21) );
  CLKINVX40M U26 ( .A(n21), .Y(ALU_OUT[2]) );
  CLKINVX1M U27 ( .A(n53), .Y(n23) );
  CLKINVX40M U28 ( .A(n23), .Y(ALU_OUT[3]) );
  CLKINVX1M U29 ( .A(n52), .Y(n25) );
  CLKINVX40M U30 ( .A(n25), .Y(ALU_OUT[4]) );
  CLKINVX1M U31 ( .A(n51), .Y(n27) );
  CLKINVX40M U32 ( .A(n27), .Y(ALU_OUT[5]) );
  CLKINVX1M U33 ( .A(n50), .Y(n29) );
  CLKINVX40M U34 ( .A(n29), .Y(ALU_OUT[6]) );
  CLKINVX1M U35 ( .A(n49), .Y(n31) );
  CLKINVX40M U36 ( .A(n31), .Y(ALU_OUT[7]) );
  CLKINVX1M U37 ( .A(n48), .Y(n33) );
  CLKINVX40M U38 ( .A(n33), .Y(ALU_VLD) );
endmodule

