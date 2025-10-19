module ALU_16B (

input wire [15:0] A,
input wire [15:0] B,
input wire [3:0]  ALU_FUN,
input wire        CLK,

output reg [15:0] ALU_OUT,
output reg        Carry_Flag,
output reg        Arith_flag,
output reg        Logic_flag,
output reg        CMP_flag,
output reg        Shift_flag );

//Internal connection
reg [15:0] ALU_OUT_Comb;

always @(posedge CLK ) 
    begin
        ALU_OUT <= ALU_OUT_Comb ; 
    end

always @(*) 
    begin
        // Ativating all the flags "LOW"
        Carry_Flag = 1'b0 ;
        Arith_flag = 1'b0 ;
        Logic_flag = 1'b0 ;
        CMP_flag = 1'b0 ;
        Shift_flag = 1'b0 ;
        
        case (ALU_FUN)
            4'b0000: //Arithmatic : unsigned Addition
                begin
                    {Carry_Flag,ALU_OUT_Comb} = A + B ;
                    Arith_flag = 1'b1;
                end

             4'b0001: //Arithmatic : unsigned Subtraction
                begin
                    ALU_OUT_Comb = A - B;
                    Carry_Flag = (A < B); // indicates borrow
                    Arith_flag = 1'b1;
                end 

             4'b0010: //Arithmatic : unsigned Multiplication
                begin
                    ALU_OUT_Comb = A * B ;
                    Arith_flag = 1'b1;
                end

             4'b0011: //Arithmatic : unsigned Division
                begin
                    Arith_flag = 1'b1;
                    if (B != 0) // check to avoid dividing by zero 
                        begin
                            ALU_OUT_Comb = A / B ;
                        end
                    else 
                        begin
                           ALU_OUT_Comb = 16'hFFFF; // ERROR 
                        end
                end 

            4'b0100: //Logic : AND
                begin
                    ALU_OUT_Comb = A & B ;
                    Logic_flag = 1'b1;
                end 

            4'b0101: //Logic : OR
                begin
                    ALU_OUT_Comb = A | B ;
                    Logic_flag = 1'b1;
                end 

            4'b0110: //Logic : NAND
                begin
                    ALU_OUT_Comb = ~(A & B) ;
                    Logic_flag = 1'b1;
                end 

            4'b0111: //Logic : NOR
                begin
                    ALU_OUT_Comb = ~(A | B) ;
                    Logic_flag = 1'b1;
                end 

            4'b1000: //Logic : XOR
                begin
                    ALU_OUT_Comb = A ^ B ;
                    Logic_flag = 1'b1;
                end 

            4'b1001: //Logic : XNOR
                begin
                    ALU_OUT_Comb = ~(A ^ B) ;
                    Logic_flag = 1'b1;
                end 

            4'b1010: //CMP: A = B
                begin
                    CMP_flag =1'b1;
                    if (A == B) 
                        begin
                            ALU_OUT_Comb = 16'h1;
                        end
                    else
                        begin
                            ALU_OUT_Comb = 16'h0;    
                        end
                end

            4'b1011: //CMP: A > B
                begin
                    CMP_flag =1'b1;
                    if (A > B) 
                        begin
                            ALU_OUT_Comb = 16'h2;
                        end
                    else
                        begin
                            ALU_OUT_Comb = 16'h0;    
                        end
                end
            
             4'b1100: //CMP: A < B
                begin
                    CMP_flag =1'b1;
                    if (A < B) 
                        begin
                            ALU_OUT_Comb = 16'h3;
                        end
                    else
                        begin
                            ALU_OUT_Comb = 16'h0;    
                        end
                end
            
            4'b1101: //SHIFT: A >> 1
                begin
                    ALU_OUT_Comb = A >> 1;
                    Shift_flag = 1'b1;
                end
            
            4'b1110: //SHIFT: A << 1
                begin
                    ALU_OUT_Comb = A << 1;
                    Shift_flag = 1'b1;
                end

            default: //For the case 1111 (the result is zero)
                begin
                    ALU_OUT_Comb = 16'b0;
                    Shift_flag = 1'b1;
                end 
        endcase    

    end

endmodule