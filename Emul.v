module anyADC(
					 	
				    input trn_clk,
                input adc_clk_in_p,
                input adc_clk_in_n,
                input delay_clk,
                input adc_data_in_n,
                input adc_data_in_p,
                input adc_data_or_p,
                input adc_data_or_n,
                output bram_wr_din,
					 output bram_wr_addr,
					 input reg01_td,
					 input reg01_tv,
					 input reg02_td, 
					 input reg02_tv,
					 input reg03_td, 
					 input reg03_tv,			
					 input reg04_td, 
					 input reg04_tv,					 
					 input reg05_td, 
					 input reg05_tv,					 
					 input reg06_td, 
					 input reg06_tv,					 
					 input reg07_td, 
					 input reg07_tv,					 
					 input reg08_td, 
					 input reg08_tv,					 
					 input reg09_td, 
					 input reg09_tv,					 
					 input reg10_td, 
					 input reg10_tv,
					 input reg11_td, 
					 input reg11_tv,
					 input reg12_td, 
					 input reg12_tv,
					 input reg13_td, 
					 input reg13_tv,
					 input reg14_td, 
					 input reg14_tv,
					 output reg01_rd,
					 output reg01_rv,
					 output reg02_rd, 
					 output reg02_rv,
					 output reg03_rd, 
					 output reg03_rv,			
					 output reg04_rd, 
					 output reg04_rv,					 
					 output reg05_rd, 
					 output reg05_rv,					 
					 output reg06_rd, 
					 output reg06_rv,					 
					 output reg07_rd, 
					 output reg07_rv,					 
					 output reg08_rd, 
					 output reg08_rv,					 
					 output reg09_rd, 
					 output reg09_rv,					 
					 output reg10_rd, 
					 output reg10_rv,
					 output reg11_rd, 
					 output reg11_rv,
					 output reg12_rd, 
					 output reg12_rv,
					 output reg13_rd, 
					 output reg13_rv,
					 output reg14_rd, 
					 output reg14_rv,
					  
					 
                input reset,
                output strobe_adc,
					 output user_int_1o,
					 output user_int_2o,
					 output user_int_3o,
					 output adcclock,
					 
					 
					output fifowr_clk, 
					output fifowr_en ,  
					output fifodin  ,   
					input  fifofull ,   
					input  fifoprog_full,
					
					
					output real_strobe_signal,
					output real_soa_signal,
					output resetfifo
					
			
                );
//                               
/*Parametrs*/
//                   
parameter WIDTH=16;
//
/*Variable*/
//

	wire trn_clk;


//Input Reg
	 wire [31:0] reg01_td;
	 wire reg01_tv;
	 wire [31:0] reg02_td;
	 wire reg02_tv;	 
	 wire [31:0] reg03_td;
	 wire reg03_tv;	 
	 wire [31:0] reg04_td;
	 wire reg04_tv;	 
    wire [31:0] reg05_td;
	 wire reg05_tv;	 
	 wire [31:0] reg06_td;
	 wire reg06_tv;
	 wire [31:0] reg07_td;
	 wire reg07_tv;	 
	 wire [31:0] reg08_td;
	 wire reg08_tv;	 
	 wire [31:0] reg09_td;
	 wire reg09_tv;	 
    wire [31:0] reg10_td;
	 wire reg10_tv;	 
	 wire [31:0] reg11_td;
	 wire reg11_tv;	 
	 wire [31:0] reg12_td;
	 wire reg12_tv;	 
	 wire [31:0] reg13_td;
	 wire reg13_tv;	 	 
	 wire [31:0] reg14_td;
	 wire reg14_tv;	   	
	 wire strobe_adc;  
	 reg [31:0] strobe_counter;
	 //   SOA
	 reg [31:0]	soa_counter;
  
	 reg [31:0] reflength_counter;
	 reg [31:0] reg01_rd_current_reflength;
	 reg [31:0] reg01_rd;
	 reg reg01_rv;
	 
	 // ---      (  !)
	 reg [31:0] fifowasoverflowonvalue;
	 reg fifowasoverflow;
	 
	 //  workstatus = 1    FIFO,     
	 reg reg02_rd_work_status;
	
	 reg [31:0] reg02_rd;
	 reg reg02_rv;
	 
	 //  
	 reg [31:0] reg03_strobe_length_cur;
	 reg [31:0] reg03_rd;
	 reg reg03_rv;
	 
	 //  soa 
	 reg [31:0] reg04_soa_length_cur;
	 reg [31:0] reg04_rd;
	 reg reg04_rv;
	 
	 //   FIFO
	 //       fifo  
	 reg [31:0] reg05_rd;
	 reg reg05_rv;
	 
	 //        ( 4   )
	 reg reg06_rd_testbandwith_speed;
	 reg [31:0] reg06_rd;
	 reg reg06_rv;
	 
	 reg [31:0] reg07_rd;
	 reg reg07_rv;
	 reg [31:0] reg08_rd;
	 reg reg08_rv;
	 reg [31:0] reg09_rd;
	 reg reg09_rv;
	 reg [31:0] reg10_rd;
	 reg reg10_rv;
	 reg [31:0] reg11_rd;
	 reg reg11_rv;
	 reg [31:0] reg12_rd;
	 reg reg12_rv;
	 reg [31:0] reg13_rd;
	 reg reg13_rv;
	 reg [31:0] reg14_rdCur = 'd0;
	 reg [31:0] reg14_rd;
	 reg reg14_rv; 
   // wire up_dmode;
    //
    /*Input port clk*/
    //
    wire                adc_clk_in_p;
    wire                adc_clk_in_n;
    wire    [7:0]       adc_data_in_p;
    wire    [7:0]       adc_data_in_n;
    wire                delay_clk;//200 MHz
    wire                adc_data_or_p;
    wire                adc_data_or_n;
	 wire		[11:0]		bram_wr_addr;
	 
	// reg	 	[7:0]			bram_wr_en;
	 reg 		[11:0]		bram_addr;
    //
    /*Default signal*/
    //
    wire                reset;
    //wire                valid;
    wire                ready;
    //wire    [WIDTH-1:0] r;      //Laser period 
    reg     [WIDTH-1:0] r_acc;  //Laser counter
    reg                 r_out;
    wire    [63:0] bram_wr_din;
   // wire                strobe; //Strobe signal
    //
    /*Buffer variables*/
    //
    wire                clk_buf;
    wire    [7:0]       data_buf;
    wire                clk;
    wire                adc_or_ibuf_s;
    //
    /*Delay variables*/
    //
	wire    [7:0]       data_delay;
	reg     [8:0]       delay_ld = 'd0;
	reg     [4:0]       delay_wdata = 'd0;
	reg                 delay_locked = 'd10;
	reg                 adc_or_p = 'd0;
	reg                 adc_or_n = 'd0;
	reg     [4:0]       adc_or_count = 'd0;
	wire    [4:0]       delay_rdata [8:0];
	wire                delay_rst_s;
   wire                adc_or_idelay;
    
   wire            delay_preset_s;

    
	//
	/*Synchro variables*/
	//
	wire    [7:0]       adc_data_p_s;
	wire    [7:0]       adc_data_n_s;
	wire                adc_or_p_s;
   wire                adc_or_n_s;
	//
	/*Output real data*/
	//
	
	reg                 adc_dmode_m1 = 'd0;
   reg                 adc_dmode = 'd1;
   reg     [7:0]       adc_data_n_d = 'd0;
   reg     [7:0]       adc_dmux_a = 'd0;
   reg     [7:0]       adc_dmux_b = 'd0;
    
	reg     [7:0]       delay_rst_cnt = 'd0;
	
   reg     [7:0]       adc_data_p = 'd0;
   reg     [7:0]       adc_data_n = 'd0;
	reg     [15:0]      real_data;
	
	reg                 adc_or ='d0;
	genvar              l_inst;
	
	reg curstrobe  = 0;
				
	reg adcclock;
	
	
	wire	 fifowr_clk;
	reg    fifowr_en ;
	
//	reg fifo_re;
	
	reg[71:0]  fifodin ;
	wire  fifofull;
	wire  fifoprog_full;
					
	
	reg real_strobe_signal;
	reg real_soa_signal;	
	reg resetfifo;
	
	reg[31:0] wasfifoerror;
 
	
//
/*Gluing data ADC*/
//
always @ (posedge clk)
    begin
        //adc_dmode_m1 <= up_dmode;
        //adc_dmode <= adc_dmode_m1;
        
        adc_data_p <= adc_data_p_s;
        adc_data_n <= adc_data_n_s;
        
        adc_data_n_d <= adc_data_n;
        
        adc_dmux_a <= (adc_dmode == 1'b1) ? adc_data_n : adc_data_p;
        adc_dmux_b <= (adc_dmode == 1'b1) ? adc_data_p : adc_data_n_d;
        
        real_data[15]<= adc_dmux_b[7];
        real_data[14]<= adc_dmux_a[7];
        real_data[13]<= adc_dmux_b[6];
        real_data[12]<= adc_dmux_a[6];
        real_data[11]<= adc_dmux_b[5];
        real_data[10]<= adc_dmux_a[5];
        real_data[9]<= adc_dmux_b[4];
        real_data[8]<= adc_dmux_a[4];
        real_data[7]<= adc_dmux_b[3];
        real_data[6]<= adc_dmux_a[3];
        real_data[5]<= adc_dmux_b[2];
        real_data[4]<= adc_dmux_a[2];
        real_data[3]<= adc_dmux_b[1];
        real_data[2]<= adc_dmux_a[1];
        real_data[1]<= adc_dmux_b[0];
        real_data[0]<= adc_dmux_a[0];
        
        
        adc_or_p <= adc_or_p_s;
        adc_or_n <= adc_or_n_s;
        
        
        if ((adc_or_p == 1'b1) || (adc_or_n == 1'b1)) begin
            adc_or_count <= 5'h10;
            end else if (adc_or_count[4] == 1'b1) begin
                adc_or_count <= adc_or_count + 1'b1;
            end
            adc_or <= adc_or_count[4];
    end
	 reg [1:0] count;
	 reg [11:0] count_ref; 
	 reg [63:0] real_data_out;
	
	reg [63:0] count_irq;



 //  always @(posedge clk) begin 
always @(posedge trn_clk) begin
  if (!reset) begin    
		reg01_rd_current_reflength <= 'd60000; // 60 km
		reg02_rd_work_status <= 0;	// 0 not work
		reg03_strobe_length_cur <= 'd630;	// 7500 ns
		reg04_soa_length_cur <= 'd8;	// 80 ns		
		reg06_rd_testbandwith_speed<=0;
  end 
  else begin
	 if ( reg01_tv == 1) begin
		reg01_rd_current_reflength <= reg01_td;
	 end	 
      reg01_rd <= reg01_rd_current_reflength; // 44
      reg01_rv <=  1;//reg01_tv;//1; // Reg 44	
	 if ( reg02_tv == 1) begin
	   if (reg02_td > 'd0)		 
		  reg02_rd_work_status <=1;
		else
		  reg02_rd_work_status <= 0;		
		end 		
    reg02_rd <= reg02_rd_work_status; // state IRQ to reg 
    reg02_rv <= 1; //45	
	 if ( reg03_tv == 1) begin
		reg03_strobe_length_cur <= reg03_td;
	 end		
    reg03_rd <= reg03_strobe_length_cur;//count_irq; // 
    reg03_rv <= 1;	//46		
	 if ( reg04_tv == 1) begin
	  	reg04_soa_length_cur <= reg04_td; //
	 end	
    reg04_rd <= reg04_soa_length_cur;//count_irq; // 
	 reg04_rv <= 1;	//47		
	 if (reg05_tv == 1) begin
	   resetfifo <=  1;	
	 end
		else begin
			resetfifo <=  0;
		end
      reg05_rd <= wasfifoerror;  //48
	   reg05_rv <= 1;//1;
		
		
		if ( reg06_tv == 1)
	 begin
	   if (reg06_td > 'd0)
		 
			reg06_rd_testbandwith_speed <=1;
		 else
			reg06_rd_testbandwith_speed <= 0;
		
		end 
		
		reg06_rd <= reg06_rd_testbandwith_speed; // state IRQ to reg 
	   reg06_rv <= 1; //49
		
		
		
		
		reg07_rd <= real_data_out; //50
	   reg07_rv <= 1;		
	

		
      reg13_rd <= 'd1000;
	   reg13_rv <= 1;//1;
		
		  
     end
  end

//  always @(posedge clk) begin
always @(posedge clk) begin 
    if (!reset) begin
      bram_addr <= 0;
	   count <= 0;
		fifowr_en<=0;
		
		strobe_counter <= 'd0;
	   soa_counter <= 'd0;
		reflength_counter <= 'd0;
		
		real_strobe_signal <= 0;
	   real_soa_signal <= 0;
		wasfifoerror <= 'd0;
		
		
		fifowasoverflowonvalue <= 'd0;
		fifowasoverflow <=0;
	 
	 
    end else 
	 
	 begin 
	    
		if ( reg02_rd_work_status == 0 )
			begin 
				count <= 0;
				strobe_counter <=0;
				soa_counter <=0;
				reflength_counter <=0;
				
				real_strobe_signal <= 0;
				real_soa_signal <= 0;
				
				
				fifowasoverflowonvalue <= 'd0;
				fifowasoverflow <=0;
		
			end 
		else
	 
		begin 
			
			if (reflength_counter == reg01_rd_current_reflength  )
			begin 
				reflength_counter <= 0;
				strobe_counter <=0;
				soa_counter <=0; 
				real_strobe_signal <= 1;
				real_soa_signal <= 1;
				fifowr_en <= 0;
				count<=0;
			//	if ( fifofull == 1)
			//	begin
			//		resetfifo <= 1;
			//	end
				
				
				
			end 
			else
			begin 
			
				if ( strobe_counter <= reg03_strobe_length_cur )
				begin 
						strobe_counter <= strobe_counter + 1;
						real_strobe_signal <= 1;
				end 
				else
				begin 
					real_strobe_signal <= 0; 
				end 
				
				
				if ( soa_counter <= reg04_soa_length_cur )
				begin 
						soa_counter <= soa_counter + 1;
						real_soa_signal <= 1;
				end 
				else
				begin 
						real_soa_signal <= 0; 
				end 
				
				
				
				
					case (count)
				  0: 
					begin
						 real_data_out[63:48] <= real_data[15:0];
					 	fifowr_en <= 0;				
					end
				  1:
						begin
					 	real_data_out[15:0] <=  real_data[15:0];	
						 fifowr_en <= 0;
						 end
				  2: 
						begin
					 	real_data_out[31:16] <= real_data[15:0];
						 fifowr_en <= 0;
						 end
				  3: begin
						 real_data_out[47:32] <= real_data[15:0]; 
					 
						
						 if (fifofull == 1)
						 begin
						   fifowr_en <= 0;
							if (fifowasoverflow == 0)
							begin
								fifowasoverflow <= 1;
								fifowasoverflowonvalue<=reflength_counter;
							end
							
						 end
						 else
						 begin
							if (fifowasoverflow==0)
							begin
								fifowr_en <= 1;
							end
							else
							begin
								if (fifowasoverflowonvalue == reflength_counter)
								begin
								   fifowr_en <= 1;
									fifowasoverflow <= 0;
									fifowasoverflowonvalue<='d0;
								end
								else
								begin
									fifowr_en <= 0;
								end
							end
						 end
						 
						 if (fifofull == 1)
						 begin
						  wasfifoerror <= wasfifoerror + 1;
						 end
							
							
							
					  end
					endcase
					
					
					reflength_counter <= reflength_counter +1;
					count <= count + 1;  
				
			end
			
			
			
			
		if (reg06_rd_testbandwith_speed==1)
		begin
		  fifowr_en<=1;
		end
				
			
		end
    end	 
  end
    
  always @(posedge clk) 
  begin
    if (count_ref == 0)
	 begin
		curstrobe  <= ~curstrobe;
	 end 
  end

  reg user_int_1o;
  reg user_int_2o;
  reg user_int_3o;

  // The delay elements need calibration from a delay controller and it needs a
  // reset (it also asserts locked after the controller is up and running).

always @(posedge delay_clk) begin
    if (delay_rst_cnt[7] == 1'b0) begin
      delay_rst_cnt <= delay_rst_cnt + 1'b1;
    end
end

  assign delay_preset_s = ~delay_rst_cnt[7];

  FDPE #(.INIT(1'b1)) i_delayctrl_rst_reg (
    .CE (1'b1),
    .D (1'b0),
    .PRE (delay_preset_s),
    .C (delay_clk),
    .Q (delay_rst_s));


//
/*Buffering differencial clock*/
//
//generate   
IBUFGDS i_clk_ibuf (
                    .I (adc_clk_in_p),
                    .IB (adc_clk_in_n),
                    .O (clk_buf));
//endgenerate
  
generate
BUFG i_clk_gbuf (
                    .I (clk_buf),
                    .O (clk));
endgenerate	


generate
  for (l_inst = 0; l_inst <= 7; l_inst = l_inst + 1) begin : g_adc_if

IBUFDS i_data_ibuf (
                    .I (adc_data_in_p[l_inst]),
                    .IB (adc_data_in_n[l_inst]),
                    .O (data_buf[l_inst]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

 IDELAYE2 #(
    .CINVCTRL_SEL ("FALSE"),
    .DELAY_SRC ("IDATAIN"),
    .HIGH_PERFORMANCE_MODE ("FALSE"),
    .IDELAY_TYPE ("VAR_LOAD"),
    .IDELAY_VALUE (0),
    .REFCLK_FREQUENCY (200.0),
    .PIPE_SEL ("FALSE"),
    .SIGNAL_PATTERN ("DATA"))
  i_data_idelay (
    .CE (1'b0),
    .INC (1'b0),
    .DATAIN (1'b0),
    .LDPIPEEN (1'b0),
    .CINVCTRL (1'b0),
    .REGRST (1'b0),
    .C (delay_clk),
    .IDATAIN (data_buf[l_inst]),
    .DATAOUT (data_delay[l_inst]),
    .LD (delay_ld[l_inst]),
    .CNTVALUEIN (delay_wdata),
    .CNTVALUEOUT (delay_rdata[l_inst]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[l_inst]),
                    .Q1 (adc_data_p_s[l_inst]),
                    .Q2 (adc_data_n_s[l_inst]));
    end
endgenerate


//
/*Over-range interface*/
//
IBUFDS i_or_ibuf (
    .I (adc_data_or_p),
    .IB (adc_data_or_n),
    .O (adc_or_ibuf_s));
    
    
generate
     (* IODELAY_GROUP = "adc_if_delay_group" *)
IDELAYE2 #(
    .CINVCTRL_SEL ("FALSE"),
    .DELAY_SRC ("IDATAIN"),
    .HIGH_PERFORMANCE_MODE ("FALSE"),
    .IDELAY_TYPE ("VAR_LOAD"),
    .IDELAY_VALUE (0),
    .REFCLK_FREQUENCY (200.0),
    .PIPE_SEL ("FALSE"),
    .SIGNAL_PATTERN ("DATA"))
  i_or_idelay (
    .CE (1'b0),
    .INC (1'b0),
    .DATAIN (1'b0),
    .LDPIPEEN (1'b0),
    .CINVCTRL (1'b0),
    .REGRST (1'b0),
    .C (delay_clk),
    .IDATAIN (adc_or_ibuf_s),
    .DATAOUT (adc_or_idelay),
    .LD (delay_ld[8]),
    .CNTVALUEIN (delay_wdata),
    .CNTVALUEOUT (delay_rdata[8]));
     endgenerate

IDDR #(
    .INIT_Q1 (1'b0),
    .INIT_Q2 (1'b0),
    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
    .SRTYPE ("ASYNC"))
  i_or_ddr (
    .CE (1'b1),
    .R (1'b0),
    .S (1'b0),
    .C (clk),
    .D (adc_or_idelay),
    .Q1 (adc_or_p_s),
    .Q2 (adc_or_n_s));




(* IODELAY_GROUP = "adc_if_delay_group" *)
  IDELAYCTRL i_delay_ctrl (
    .RST (delay_rst_s),
    .REFCLK (delay_clk),
    .RDY ());


assign bram_wr_addr=bram_addr;
 
assign fifowr_clk = clk;
assign bram_wr_din = real_data_out;
//assign strobe_adc = strobe_adccur;


endmodule
