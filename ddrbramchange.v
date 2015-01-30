
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:52 08/28/2014 
// Design Name: 
// Module Name:    ddrbramchange 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module ddrbramchange(

							input strobe_adcd,

							input user_wr_clk  , 
							input trn_clk,
			
                		output user_wr_clk1  ,
							output   trn_clk1 , 
			
			
							output user_wr_clk2  ,
							output   trn_clk2 ,
							
							
						output [7:0]	user_wr_weA1  ,
         		output [63:0]	  user_wr_dinA1 ,
					output [63:0]	user_wr_doutA1 ,
					output 	[11:0]	user_wr_addrA1  ,
					
					
					
				output [7:0]	user_wr_dinA2,				
        		output [63:0]	    user_wr_weA2  ,
				output [63:0]		user_wr_doutA2  ,
					output [11:0]	user_wr_addrA2  ,
					
					
					
        		input	 [7:0]    user_wr_weA  ,
         		input	 [63:0]  user_wr_dinA  ,
					input [63:0]	user_wr_doutA  ,
					input [11:0]	user_wr_addrA  ,
					
					
					
					output [11:0]	pRAM_addrB1			 ,
       		output [7:0]	  pRAM_weB1             ,
      		output [63:0]	   pRAM_dinB1           ,
      		output [63:0]	  pRAM_doutB1         ,
		  
				output	[11:0]	pRAM_addrB2			 ,
       		output [7:0]	  pRAM_weB2             ,
        		output [63:0]	 pRAM_dinB2           ,
        		output [63:0]	pRAM_doutB2         ,
		  
				input	[11:0]	pRAM_addrB			 ,
       		input	[7:0]  pRAM_weB             ,
       		input	 [63:0]  pRAM_dinB           ,
       		input [63:0] pRAM_doutB     
		  
                
                //input up_dmode
                //output clk
                );
//                               
/*Parametrs*/
//                   
 
//
/*Variable*/
//

//Input Reg


		reg [7:0]		 user_wr_weA1       ;		  
		reg[63:0]	     user_wr_dinA1    ;
		reg[63:0]	      user_wr_doutA1  ;
		reg[11:0]	     user_wr_addrA1    ;
				  
		reg[7:0]	  		 user_wr_weA2       ;		  
		reg[63:0]	     user_wr_dinA2      ;
		reg[63:0]	      user_wr_doutA2 ;
		reg[11:0]	     user_wr_addrA2     ;
				  
				  
		wire[7:0]	  		 user_wr_weA   ;			  
		wire[63:0]	     user_wr_dinA     ;
		wire[63:0]	      user_wr_doutA     ;
		wire	[11:0]     user_wr_addrA       ;
				  
				  
				  
		reg[11:0]		   pRAM_addrB1    ;
		reg[7:0]	     pRAM_weB1      ;
		reg[63:0]	     pRAM_dinB1      ;
		reg[63:0]	     pRAM_doutB1     ;
			  
		reg[11:0]		   pRAM_addrB2      ;
		reg[7:0]	     pRAM_weB2        ;
		reg[63:0]	     pRAM_dinB2       ;
		reg[63:0]	     pRAM_doutB2     ;
		
	//	reg[63:0]	     pRAM_doutB2reg     ;
				  
		wire[11:0]		  pRAM_addrB         ;
		wire[7:0]	     pRAM_weB        ;
		wire[63:0]	     pRAM_dinB            ;
		wire[63:0]	     pRAM_doutB      ;
	 reg user_wr_clk1;
	 reg trn_clk1;
	 reg user_wr_clk2;
	 reg trn_clk2;
/*
	wire strobe_adcd;
	 wire user_wr_clk;
	 wire trn_clk;
	 reg user_wr_clk1;
	 reg trn_clk1;
	 reg user_wr_clk2;
	 reg trn_clk2;
	  
	 
	  	reg [7:0]		 user_wr_weA1       ;		  
		reg[63:0]	     user_wr_dinA1    ;
		reg[63:0]	      user_wr_doutA1  ;
		reg[11:0]	     user_wr_addrA1    ;
				  
		reg[7:0]	  		 user_wr_weA2       ;		  
		reg[63:0]	     user_wr_dinA2      ;
		reg[63:0]	      user_wr_doutA2 ;
		reg[11:0]	     user_wr_addrA2     ;
				  
				  
		wire[7:0]	  		 user_wr_weA   ;			  
		wire[63:0]	     user_wr_dinA     ;
		wire[63:0]	      user_wr_doutA     ;
		wire	[11:0]     user_wr_addrA       ;
				  
				  
				  
		reg[11:0]		   pRAM_addrB1    ;
		reg[7:0]	     pRAM_weB1      ;
		reg[63:0]	     pRAM_dinB1      ;
		reg[63:0]	     pRAM_doutB1     ;
			  
		reg[11:0]		   pRAM_addrB2      ;
		reg[7:0]	     pRAM_weB2        ;
		reg[63:0]	     pRAM_dinB2       ;
		reg[63:0]	     pRAM_doutB2     ;
				  
		wire[11:0]		  pRAM_addrB         ;
		wire[7:0]	     pRAM_weB        ;
		wire[63:0]	     pRAM_dinB            ;
		wire[63:0]	     pRAM_doutB      ;
				  
				  */
	 
	 	 
	 
	 
	 reg  state_buf; // State clk 0 1
	   
//
/*Gluing data ADC*/
// 

//posedge clk
 //always @* begin
  always @ (posedge user_wr_clk) begin
    
	 /// if (strobe_adcd == 1) 
	//  begin
	//		state_buf <= state_buf + 1;
	//	end
	 
    case (state_buf)
		0:
		begin
		  user_wr_clk1 <= user_wr_clk;
		  user_wr_clk2 <= 0;
		  
 		 user_wr_weA1 <=		 user_wr_weA      ;		  
		  user_wr_dinA1 <=user_wr_dinA   ;
		 	      user_wr_doutA1 <=user_wr_doutA  ;
	 	     user_wr_addrA1 <=user_wr_addrA   ;
		  
		 
		end
	   1:
		begin
		  user_wr_clk2 <= user_wr_clk;
		  user_wr_clk1 <= 0;
		  
		 user_wr_weA2 <=		 user_wr_weA      ;		  
		 user_wr_dinA2 <=user_wr_dinA   ;
		 user_wr_doutA2 <=user_wr_doutA  ;
	 	 user_wr_addrA2 <=user_wr_addrA   ;
		
		end
	 endcase
  end
	
//always @* begin
 always @ (posedge trn_clk) begin
    
    case (state_buf)
		0:
		begin
		
		  trn_clk2 <= trn_clk;
		  trn_clk1 <= 0; 
		  
		  	 		   pRAM_addrB1 <= pRAM_addrB     ;
		 	     pRAM_weB1 <= pRAM_weB      ;
		 	     pRAM_dinB1  <=pRAM_dinB     ;
		 	     pRAM_doutB1  <=pRAM_doutB   ;
			  
		  
		end
	   1:
		begin
	
		  trn_clk1 <= trn_clk;
		  trn_clk2 <= 0; 
		  
		   	 		   pRAM_addrB2 <= pRAM_addrB     ;
		 	     pRAM_weB2 <= pRAM_weB      ;
		 	     pRAM_dinB2  <=pRAM_dinB     ;
				  
		 	      pRAM_doutB2  <=pRAM_doutB   ;
		end
	 endcase
  end
  

 
endmodule

 

 
