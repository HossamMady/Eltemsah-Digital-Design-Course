/* Design using 1 always block*/

module DigCt (

    input wire IN1,
    input wire IN2,
    input wire IN3,
    input wire IN4,
    input wire IN5,
    input wire clk,

    output reg OUT1,
    output reg OUT2,
    output reg OUT3
);

always @(*) 
begin
    OUT1 <= ~(~(IN1 | IN2) & IN3);
    OUT2 <= ~(IN2 & IN3);
    OUT3 <= ((~(IN4)| IN3) | IN5);
end
endmodule

/* Design using 4 always blocks 
 (Internal connection wires for the comb. circuits  
 best way for design) */

module DigCt(
    input wire IN1,
    input wire IN2,
    input wire IN3,
    input wire IN4,
    input wire IN5,
    input wire clk,

    output reg OUT1,
    output reg OUT2,
    output reg OUT3
);

reg x;
reg y;

reg D1;
reg D2;
reg D3;

always @(*) 
begin
    x = ~(IN1 | IN2);
    D1 = ~(x & IN3);    
end

always @(*) 
begin
    D2 = ~(IN2 & IN3);    
end

always @(*) 
begin
    y = ~IN4 | IN3;
    D3 = y | IN5;
end

always @(posedge clk ) 
begin
    OUT1 <= D1;
    OUT2 <= D2;
    OUT3 <= D3;    
end

endmodule

/* We can make the design in 3 always as well 
we will take each barnch on its own (each comb. circuit + its f.f)
in one always block*/ 