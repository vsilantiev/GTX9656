 

 
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

module ddrfifochange(

									
							output   trn_clk1 , 
			
			
							output   trn_clk2 ,
							
							
					
					
				input [11:0]	pRAM_addrB1			 ,
       		input [7:0]	  pRAM_weB1             ,
      		input [63:0]	   pRAM_dinB1           ,
      		input [63:0]	  pRAM_doutB1         ,
		  
				input	[11:0]	pRAM_addrB2			 ,
       		input [7:0]	  pRAM_weB2             ,
        		input [63:0]	 pRAM_dinB2           ,
        		input [63:0]	pRAM_doutB2         ,
		  
				output[11:0]  pRAM_addrB			 ,
       		output	[7:0]  pRAM_weB             ,
       		output	 [63:0]  pRAM_dinB           ,
       		output [63:0] pRAM_doutB     
		  
                
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

  
				  
				  
				  
		wire[11:0]		   pRAM_addrB1    ;
		wire[7:0]	     pRAM_weB1      ;
		wire[63:0]	     pRAM_dinB1      ;
		wire[63:0]	     pRAM_doutB1     ;
			  
		wire[11:0]		   pRAM_addrB2      ;
		wire[7:0]	     pRAM_weB2        ;
		wire[63:0]	     pRAM_dinB2       ;
		wire[63:0]	     pRAM_doutB2     ;
		
	//	reg[63:0]	     pRAM_doutB2reg     ;
				  
		reg[11:0]		  pRAM_addrB         ;
		reg[7:0]	     pRAM_weB        ;
		reg[63:0]	     pRAM_dinB            ;
		reg[63:0]	     pRAM_doutB      ;
 
	 wire trn_clk1;
	 
	 wire trn_clk2;
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
	 
	 	 
	  
//
/*Gluing data ADC*/
// 

//posedge clk
 //always @* begin
  always @* begin
     		  if  (trn_clk2==0 )
			   begin
		  	 		   pRAM_addrB <= pRAM_addrB1     ;
		 	     pRAM_weB <= pRAM_weB1      ;
		 	     pRAM_dinB  <=pRAM_dinB1     ;
		 	     pRAM_doutB  <=pRAM_doutB1   ;
				end
				else
				 begin
					 		   pRAM_addrB <= pRAM_addrB2     ;
		 	     pRAM_weB <= pRAM_weB2      ;
		 	     pRAM_dinB  <=pRAM_dinB2     ;
		 	     pRAM_doutB  <=pRAM_doutB2   ;
				end
  end
  
endmodule

 

 

