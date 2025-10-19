module Register_File (
    input wire clk,
    input wire rst,          // Asynchronous active-low reset
    input wire WrEn,         // Write Enable
    input wire RdEn,         // Read Enable
    input wire [2:0] Address, // 3-bit address (8 registers)
    input wire [15:0] WrData, // Data to write
    output reg [15:0] RdData  // Data to read
);

// Declare the 8 registers, each 16-bit wide
reg [15:0] Reg_File [7:0];

// Asynchronous Reset and Synchronous Read/Write Logic
always @(posedge clk or negedge rst) 
	begin
	    if (!rst) 
	    	begin
	    	    // Clear all registers on active-low reset
	    	    Reg_File[0] <= 16'b0;
	    	    Reg_File[1] <= 16'b0;
	    	    Reg_File[2] <= 16'b0;
	    	    Reg_File[3] <= 16'b0;
	    	    Reg_File[4] <= 16'b0;
	    	    Reg_File[5] <= 16'b0;
	    	    Reg_File[6] <= 16'b0;
	    	    Reg_File[7] <= 16'b0;
	    	    RdData <= 16'b0; // corrected
	    	end 
	    	// corrected
	    else if (WrEn && !RdEn)
	    	begin
	    	    if (WrEn) // Write
	    	    	begin
	    	    	    Reg_File[Address] <= WrData;
	    	    	end
	    	end
	    else if (!WrEn && RdEn) 
	    	begin
	    		RdData <= Reg_File[Address];
	    	end
end

/*
// Read Operation (synchronous on clk)
always @(posedge clk or negedge rst) 
	begin
	    if (!rst) 
	    	begin
	    	    RdData <= 16'b0;
	    	end 
	    else if (RdEn) // Read
	    	begin
	    	    RdData <= Reg_File[Address];
			end
	end

el ahsan el read w el write ykono fe nafs el always block*/


endmodule
