
-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
entity xland2 is
  port (
    a : in std_logic;
    b : in std_logic;
    dout : out std_logic
    );
end xland2;
architecture behavior of xland2 is
begin
    dout <= a and b;
end behavior;

-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
entity xlaxi_rst_gen is
  generic (
    has_aresetn: integer := -1
  );
  port (
    aclk: in std_logic;
    i_aresetn : in std_logic;
    ce : in std_logic;
    o_aresetn : out std_logic
    );
end xlaxi_rst_gen;
architecture behavior of xlaxi_rst_gen is
  signal reset_gen1: std_logic  := '0';
  signal reset_gen_d1: std_logic        := '0';
  signal reset_gen_d2: std_logic := '0';
begin
        o_aresetn <= reset_gen_d2 when (has_aresetn = 0)
                else not ( (not i_aresetn) and ce );
 process(aclk)
 begin
         if(aclk'event AND aclk = '1') then
                         reset_gen1 <= '1';
                         reset_gen_d1 <= reset_gen1;
                         reset_gen_d2 <= reset_gen_d1;
        end if;
 end process;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity PCIe_UserLogic_00 is
  port (
    bram_rd_dout: in std_logic_vector(63 downto 0); 
    debug_in_1i: in std_logic_vector(31 downto 0); 
    debug_in_2i: in std_logic_vector(31 downto 0); 
    debug_in_3i: in std_logic_vector(31 downto 0); 
    debug_in_4i: in std_logic_vector(31 downto 0); 
    dma_host2board_busy: in std_logic; 
    dma_host2board_done: in std_logic; 
    fifo_rd_count: in std_logic_vector(14 downto 0); 
    fifo_rd_dout: in std_logic_vector(71 downto 0); 
    fifo_rd_empty: in std_logic; 
    fifo_rd_pempty: in std_logic; 
    fifo_rd_valid: in std_logic; 
    fifo_wr_count: in std_logic_vector(14 downto 0); 
    fifo_wr_full: in std_logic; 
    fifo_wr_pfull: in std_logic; 
    inout_logic_cw_ce: in std_logic := '1'; 
    inout_logic_cw_clk: in std_logic; 
 ---   reg01_td: in std_logic_vector(31 downto 0); 
 ---   reg01_tv: in std_logic; 
--    reg02_td: in std_logic_vector(31 downto 0); 
 --   reg02_tv: in std_logic; 
  --   reg03_td: in std_logic_vector(31 downto 0); 
  --   reg03_tv: in std_logic; 
  --   reg04_td: in std_logic_vector(31 downto 0); 
  --   reg04_tv: in std_logic; 
  --   reg05_td: in std_logic_vector(31 downto 0); 
  --   reg05_tv: in std_logic; 
  --   reg06_td: in std_logic_vector(31 downto 0); 
   --  reg06_tv: in std_logic; 
  --   reg07_td: in std_logic_vector(31 downto 0); 
   --  reg07_tv: in std_logic; 
  --   reg08_td: in std_logic_vector(31 downto 0); 
  --   reg08_tv: in std_logic; 
   --  reg09_td: in std_logic_vector(31 downto 0); 
   --  reg09_tv: in std_logic; 
   --  reg10_td: in std_logic_vector(31 downto 0); 
   --  reg10_tv: in std_logic; 
   --  reg11_td: in std_logic_vector(31 downto 0); 
   --  reg11_tv: in std_logic; 
   --  reg12_td: in std_logic_vector(31 downto 0); 
   --  reg12_tv: in std_logic; 
   --  reg13_td: in std_logic_vector(31 downto 0); 
   --  reg13_tv: in std_logic; 
   --  reg14_td: in std_logic_vector(31 downto 0); 
  --  reg14_tv: in std_logic; 
--    rst_i: in std_logic; 
    user_logic_cw_ce: in std_logic := '1'; 
    user_logic_cw_clk: in std_logic; 
    bram_rd_addr: out std_logic_vector(11 downto 0); 
    bram_wr_addr: out std_logic_vector(11 downto 0); 
    bram_wr_din: out std_logic_vector(63 downto 0); 
    bram_wr_en: out std_logic_vector(7 downto 0); 
    fifo_rd_en: out std_logic; 
    fifo_wr_din: out std_logic_vector(71 downto 0); 
    fifo_wr_en: out std_logic; 
--    reg01_rd: out std_logic_vector(31 downto 0); 
 --   reg01_rv: out std_logic; 
   --  reg02_rd: out std_logic_vector(31 downto 0); 
   --  reg02_rv: out std_logic; 
   --  reg03_rd: out std_logic_vector(31 downto 0); 
   --  reg03_rv: out std_logic; 
   --  reg04_rd: out std_logic_vector(31 downto 0); 
   --  reg04_rv: out std_logic; 
   --  reg05_rd: out std_logic_vector(31 downto 0); 
   --  reg05_rv: out std_logic; 
   --  reg06_rd: out std_logic_vector(31 downto 0); 
   --  reg06_rv: out std_logic; 
   --  reg07_rd: out std_logic_vector(31 downto 0); 
  --   reg07_rv: out std_logic; 
  --   reg08_rd: out std_logic_vector(31 downto 0); 
   --  reg08_rv: out std_logic; 
  --   reg09_rd: out std_logic_vector(31 downto 0); 
   --  reg09_rv: out std_logic; 
  --   reg10_rd: out std_logic_vector(31 downto 0); 
   --  reg10_rv: out std_logic; 
   --  reg11_rd: out std_logic_vector(31 downto 0); 
   --  reg11_rv: out std_logic; 
  --   reg12_rd: out std_logic_vector(31 downto 0); 
   --  reg12_rv: out std_logic; 
   --  reg13_rd: out std_logic_vector(31 downto 0); 
   --  reg13_rv: out std_logic; 
  --   reg14_rd: out std_logic_vector(31 downto 0); 
   --  reg14_rv: out std_logic; 
    rst_o: out std_logic --;
   -- user_int_1o: out std_logic; 
   -- user_int_2o: out std_logic; 
   -- user_int_3o: out std_logic
  );
end PCIe_UserLogic_00;

architecture structural of PCIe_UserLogic_00 is
  component inout_logic_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; 
      debug_in_1i: in std_logic_vector(31 downto 0); 
      debug_in_2i: in std_logic_vector(31 downto 0); 
      debug_in_3i: in std_logic_vector(31 downto 0); 
      debug_in_4i: in std_logic_vector(31 downto 0); 
      dma_host2board_busy: in std_logic; 
      dma_host2board_done: in std_logic; 
      from_register10_data_out: in std_logic_vector(31 downto 0); 
      from_register11_data_out: in std_logic_vector(31 downto 0); 
      from_register12_data_out: in std_logic_vector(0 downto 0); 
      from_register13_data_out: in std_logic_vector(31 downto 0); 
      from_register14_data_out: in std_logic_vector(0 downto 0); 
      from_register15_data_out: in std_logic_vector(31 downto 0); 
      from_register16_data_out: in std_logic_vector(0 downto 0); 
      from_register17_data_out: in std_logic_vector(31 downto 0); 
      from_register18_data_out: in std_logic_vector(0 downto 0); 
      from_register19_data_out: in std_logic_vector(31 downto 0); 
      from_register1_data_out: in std_logic_vector(0 downto 0); 
      from_register20_data_out: in std_logic_vector(0 downto 0); 
      from_register21_data_out: in std_logic_vector(31 downto 0); 
      from_register22_data_out: in std_logic_vector(0 downto 0); 
      from_register23_data_out: in std_logic_vector(31 downto 0); 
      from_register24_data_out: in std_logic_vector(0 downto 0); 
      from_register25_data_out: in std_logic_vector(31 downto 0); 
      from_register26_data_out: in std_logic_vector(0 downto 0); 
      from_register27_data_out: in std_logic_vector(31 downto 0); 
      from_register28_data_out: in std_logic_vector(0 downto 0); 
      from_register2_data_out: in std_logic_vector(0 downto 0); 
      from_register3_data_out: in std_logic_vector(31 downto 0); 
      from_register4_data_out: in std_logic_vector(0 downto 0); 
      from_register5_data_out: in std_logic_vector(31 downto 0); 
      from_register6_data_out: in std_logic_vector(0 downto 0); 
      from_register7_data_out: in std_logic_vector(31 downto 0); 
      from_register8_data_out: in std_logic_vector(31 downto 0); 
      from_register9_data_out: in std_logic_vector(0 downto 0); 
      reg01_td: in std_logic_vector(31 downto 0); 
      reg01_tv: in std_logic; 
      reg02_td: in std_logic_vector(31 downto 0); 
      reg02_tv: in std_logic; 
      reg03_td: in std_logic_vector(31 downto 0); 
      reg03_tv: in std_logic; 
      reg04_td: in std_logic_vector(31 downto 0); 
      reg04_tv: in std_logic; 
      reg05_td: in std_logic_vector(31 downto 0); 
      reg05_tv: in std_logic; 
      reg06_td: in std_logic_vector(31 downto 0); 
      reg06_tv: in std_logic; 
      reg07_td: in std_logic_vector(31 downto 0); 
      reg07_tv: in std_logic; 
      reg08_td: in std_logic_vector(31 downto 0); 
      reg08_tv: in std_logic; 
      reg09_td: in std_logic_vector(31 downto 0); 
      reg09_tv: in std_logic; 
      reg10_td: in std_logic_vector(31 downto 0); 
      reg10_tv: in std_logic; 
      reg11_td: in std_logic_vector(31 downto 0); 
      reg11_tv: in std_logic; 
      reg12_td: in std_logic_vector(31 downto 0); 
      reg12_tv: in std_logic; 
      reg13_td: in std_logic_vector(31 downto 0); 
      reg13_tv: in std_logic; 
      reg14_td: in std_logic_vector(31 downto 0); 
      reg14_tv: in std_logic; 
      to_register10_dout: in std_logic_vector(0 downto 0); 
      to_register11_dout: in std_logic_vector(31 downto 0); 
      to_register12_dout: in std_logic_vector(0 downto 0); 
      to_register13_dout: in std_logic_vector(31 downto 0); 
      to_register14_dout: in std_logic_vector(0 downto 0); 
      to_register15_dout: in std_logic_vector(31 downto 0); 
      to_register16_dout: in std_logic_vector(0 downto 0); 
      to_register17_dout: in std_logic_vector(31 downto 0); 
      to_register18_dout: in std_logic_vector(0 downto 0); 
      to_register19_dout: in std_logic_vector(0 downto 0); 
      to_register1_dout: in std_logic_vector(31 downto 0); 
      to_register20_dout: in std_logic_vector(31 downto 0); 
      to_register21_dout: in std_logic_vector(0 downto 0); 
      to_register22_dout: in std_logic_vector(31 downto 0); 
      to_register23_dout: in std_logic_vector(0 downto 0); 
      to_register24_dout: in std_logic_vector(31 downto 0); 
      to_register25_dout: in std_logic_vector(0 downto 0); 
      to_register26_dout: in std_logic_vector(31 downto 0); 
      to_register27_dout: in std_logic_vector(0 downto 0); 
      to_register28_dout: in std_logic_vector(31 downto 0); 
      to_register29_dout: in std_logic_vector(0 downto 0); 
      to_register2_dout: in std_logic_vector(31 downto 0); 
      to_register30_dout: in std_logic_vector(31 downto 0); 
      to_register31_dout: in std_logic_vector(0 downto 0); 
      to_register32_dout: in std_logic_vector(31 downto 0); 
      to_register33_dout: in std_logic_vector(0 downto 0); 
      to_register34_dout: in std_logic_vector(31 downto 0); 
      to_register3_dout: in std_logic_vector(0 downto 0); 
      to_register4_dout: in std_logic_vector(0 downto 0); 
      to_register5_dout: in std_logic_vector(31 downto 0); 
      to_register6_dout: in std_logic_vector(31 downto 0); 
      to_register7_dout: in std_logic_vector(31 downto 0); 
      to_register8_dout: in std_logic_vector(0 downto 0); 
      to_register9_dout: in std_logic_vector(31 downto 0); 
      reg01_rd: out std_logic_vector(31 downto 0); 
      reg01_rv: out std_logic; 
      reg02_rd: out std_logic_vector(31 downto 0); 
      reg02_rv: out std_logic; 
      reg03_rd: out std_logic_vector(31 downto 0); 
      reg03_rv: out std_logic; 
      reg04_rd: out std_logic_vector(31 downto 0); 
      reg04_rv: out std_logic; 
      reg05_rd: out std_logic_vector(31 downto 0); 
      reg05_rv: out std_logic; 
      reg06_rd: out std_logic_vector(31 downto 0); 
      reg06_rv: out std_logic; 
      reg07_rd: out std_logic_vector(31 downto 0); 
      reg07_rv: out std_logic; 
      reg08_rd: out std_logic_vector(31 downto 0); 
      reg08_rv: out std_logic; 
      reg09_rd: out std_logic_vector(31 downto 0); 
      reg09_rv: out std_logic; 
      reg10_rd: out std_logic_vector(31 downto 0); 
      reg10_rv: out std_logic; 
      reg11_rd: out std_logic_vector(31 downto 0); 
      reg11_rv: out std_logic; 
      reg12_rd: out std_logic_vector(31 downto 0); 
      reg12_rv: out std_logic; 
      reg13_rd: out std_logic_vector(31 downto 0); 
      reg13_rv: out std_logic; 
      reg14_rd: out std_logic_vector(31 downto 0); 
      reg14_rv: out std_logic; 
      to_register10_ce: out std_logic; 
      to_register10_clk: out std_logic; 
      to_register10_clr: out std_logic; 
      to_register10_data_in: out std_logic_vector(0 downto 0); 
      to_register10_en: out std_logic_vector(0 downto 0); 
      to_register11_ce: out std_logic; 
      to_register11_clk: out std_logic; 
      to_register11_clr: out std_logic; 
      to_register11_data_in: out std_logic_vector(31 downto 0); 
      to_register11_en: out std_logic_vector(0 downto 0); 
      to_register12_ce: out std_logic; 
      to_register12_clk: out std_logic; 
      to_register12_clr: out std_logic; 
      to_register12_data_in: out std_logic_vector(0 downto 0); 
      to_register12_en: out std_logic_vector(0 downto 0); 
      to_register13_ce: out std_logic; 
      to_register13_clk: out std_logic; 
      to_register13_clr: out std_logic; 
      to_register13_data_in: out std_logic_vector(31 downto 0); 
      to_register13_en: out std_logic_vector(0 downto 0); 
      to_register14_ce: out std_logic; 
      to_register14_clk: out std_logic; 
      to_register14_clr: out std_logic; 
      to_register14_data_in: out std_logic_vector(0 downto 0); 
      to_register14_en: out std_logic_vector(0 downto 0); 
      to_register15_ce: out std_logic; 
      to_register15_clk: out std_logic; 
      to_register15_clr: out std_logic; 
      to_register15_data_in: out std_logic_vector(31 downto 0); 
      to_register15_en: out std_logic_vector(0 downto 0); 
      to_register16_ce: out std_logic; 
      to_register16_clk: out std_logic; 
      to_register16_clr: out std_logic; 
      to_register16_data_in: out std_logic_vector(0 downto 0); 
      to_register16_en: out std_logic_vector(0 downto 0); 
      to_register17_ce: out std_logic; 
      to_register17_clk: out std_logic; 
      to_register17_clr: out std_logic; 
      to_register17_data_in: out std_logic_vector(31 downto 0); 
      to_register17_en: out std_logic_vector(0 downto 0); 
      to_register18_ce: out std_logic; 
      to_register18_clk: out std_logic; 
      to_register18_clr: out std_logic; 
      to_register18_data_in: out std_logic_vector(0 downto 0); 
      to_register18_en: out std_logic_vector(0 downto 0); 
      to_register19_ce: out std_logic; 
      to_register19_clk: out std_logic; 
      to_register19_clr: out std_logic; 
      to_register19_data_in: out std_logic_vector(0 downto 0); 
      to_register19_en: out std_logic_vector(0 downto 0); 
      to_register1_ce: out std_logic; 
      to_register1_clk: out std_logic; 
      to_register1_clr: out std_logic; 
      to_register1_data_in: out std_logic_vector(31 downto 0); 
      to_register1_en: out std_logic_vector(0 downto 0); 
      to_register20_ce: out std_logic; 
      to_register20_clk: out std_logic; 
      to_register20_clr: out std_logic; 
      to_register20_data_in: out std_logic_vector(31 downto 0); 
      to_register20_en: out std_logic_vector(0 downto 0); 
      to_register21_ce: out std_logic; 
      to_register21_clk: out std_logic; 
      to_register21_clr: out std_logic; 
      to_register21_data_in: out std_logic_vector(0 downto 0); 
      to_register21_en: out std_logic_vector(0 downto 0); 
      to_register22_ce: out std_logic; 
      to_register22_clk: out std_logic; 
      to_register22_clr: out std_logic; 
      to_register22_data_in: out std_logic_vector(31 downto 0); 
      to_register22_en: out std_logic_vector(0 downto 0); 
      to_register23_ce: out std_logic; 
      to_register23_clk: out std_logic; 
      to_register23_clr: out std_logic; 
      to_register23_data_in: out std_logic_vector(0 downto 0); 
      to_register23_en: out std_logic_vector(0 downto 0); 
      to_register24_ce: out std_logic; 
      to_register24_clk: out std_logic; 
      to_register24_clr: out std_logic; 
      to_register24_data_in: out std_logic_vector(31 downto 0); 
      to_register24_en: out std_logic_vector(0 downto 0); 
      to_register25_ce: out std_logic; 
      to_register25_clk: out std_logic; 
      to_register25_clr: out std_logic; 
      to_register25_data_in: out std_logic_vector(0 downto 0); 
      to_register25_en: out std_logic_vector(0 downto 0); 
      to_register26_ce: out std_logic; 
      to_register26_clk: out std_logic; 
      to_register26_clr: out std_logic; 
      to_register26_data_in: out std_logic_vector(31 downto 0); 
      to_register26_en: out std_logic_vector(0 downto 0); 
      to_register27_ce: out std_logic; 
      to_register27_clk: out std_logic; 
      to_register27_clr: out std_logic; 
      to_register27_data_in: out std_logic_vector(0 downto 0); 
      to_register27_en: out std_logic_vector(0 downto 0); 
      to_register28_ce: out std_logic; 
      to_register28_clk: out std_logic; 
      to_register28_clr: out std_logic; 
      to_register28_data_in: out std_logic_vector(31 downto 0); 
      to_register28_en: out std_logic_vector(0 downto 0); 
      to_register29_ce: out std_logic; 
      to_register29_clk: out std_logic; 
      to_register29_clr: out std_logic; 
      to_register29_data_in: out std_logic_vector(0 downto 0); 
      to_register29_en: out std_logic_vector(0 downto 0); 
      to_register2_ce: out std_logic; 
      to_register2_clk: out std_logic; 
      to_register2_clr: out std_logic; 
      to_register2_data_in: out std_logic_vector(31 downto 0); 
      to_register2_en: out std_logic_vector(0 downto 0); 
      to_register30_ce: out std_logic; 
      to_register30_clk: out std_logic; 
      to_register30_clr: out std_logic; 
      to_register30_data_in: out std_logic_vector(31 downto 0); 
      to_register30_en: out std_logic_vector(0 downto 0); 
      to_register31_ce: out std_logic; 
      to_register31_clk: out std_logic; 
      to_register31_clr: out std_logic; 
      to_register31_data_in: out std_logic_vector(0 downto 0); 
      to_register31_en: out std_logic_vector(0 downto 0); 
      to_register32_ce: out std_logic; 
      to_register32_clk: out std_logic; 
      to_register32_clr: out std_logic; 
      to_register32_data_in: out std_logic_vector(31 downto 0); 
      to_register32_en: out std_logic_vector(0 downto 0); 
      to_register33_ce: out std_logic; 
      to_register33_clk: out std_logic; 
      to_register33_clr: out std_logic; 
      to_register33_data_in: out std_logic_vector(0 downto 0); 
      to_register33_en: out std_logic_vector(0 downto 0); 
      to_register34_ce: out std_logic; 
      to_register34_clk: out std_logic; 
      to_register34_clr: out std_logic; 
      to_register34_data_in: out std_logic_vector(31 downto 0); 
      to_register34_en: out std_logic_vector(0 downto 0); 
      to_register3_ce: out std_logic; 
      to_register3_clk: out std_logic; 
      to_register3_clr: out std_logic; 
      to_register3_data_in: out std_logic_vector(0 downto 0); 
      to_register3_en: out std_logic_vector(0 downto 0); 
      to_register4_ce: out std_logic; 
      to_register4_clk: out std_logic; 
      to_register4_clr: out std_logic; 
      to_register4_data_in: out std_logic_vector(0 downto 0); 
      to_register4_en: out std_logic_vector(0 downto 0); 
      to_register5_ce: out std_logic; 
      to_register5_clk: out std_logic; 
      to_register5_clr: out std_logic; 
      to_register5_data_in: out std_logic_vector(31 downto 0); 
      to_register5_en: out std_logic_vector(0 downto 0); 
      to_register6_ce: out std_logic; 
      to_register6_clk: out std_logic; 
      to_register6_clr: out std_logic; 
      to_register6_data_in: out std_logic_vector(31 downto 0); 
      to_register6_en: out std_logic_vector(0 downto 0); 
      to_register7_ce: out std_logic; 
      to_register7_clk: out std_logic; 
      to_register7_clr: out std_logic; 
      to_register7_data_in: out std_logic_vector(31 downto 0); 
      to_register7_en: out std_logic_vector(0 downto 0); 
      to_register8_ce: out std_logic; 
      to_register8_clk: out std_logic; 
      to_register8_clr: out std_logic; 
      to_register8_data_in: out std_logic_vector(0 downto 0); 
      to_register8_en: out std_logic_vector(0 downto 0); 
      to_register9_ce: out std_logic; 
      to_register9_clk: out std_logic; 
      to_register9_clr: out std_logic; 
      to_register9_data_in: out std_logic_vector(31 downto 0); 
      to_register9_en: out std_logic_vector(0 downto 0)
    );
  end component;
  attribute syn_black_box: boolean;
  attribute syn_black_box of inout_logic_cw: component is true;
  attribute box_type: string;
  attribute box_type of inout_logic_cw: component is "black_box";
  attribute syn_noprune: boolean;
  attribute optimize_primitives: boolean;
  attribute dont_touch: boolean;
  attribute syn_noprune of inout_logic_cw: component is true;
  attribute optimize_primitives of inout_logic_cw: component is false;
  attribute dont_touch of inout_logic_cw: component is true;

  component user_logic_cw
    port (
      bram_rd_dout: in std_logic_vector(63 downto 0); 
      ce: in std_logic := '1'; 
      clk: in std_logic; 
      fifo_rd_count: in std_logic_vector(14 downto 0); 
      fifo_rd_dout: in std_logic_vector(71 downto 0); 
      fifo_rd_empty: in std_logic; 
      fifo_rd_pempty: in std_logic; 
      fifo_rd_valid: in std_logic; 
      fifo_wr_count: in std_logic_vector(14 downto 0); 
      fifo_wr_full: in std_logic; 
      fifo_wr_pfull: in std_logic; 
      from_register10_data_out: in std_logic_vector(0 downto 0); 
      from_register11_data_out: in std_logic_vector(31 downto 0); 
      from_register12_data_out: in std_logic_vector(0 downto 0); 
      from_register13_data_out: in std_logic_vector(31 downto 0); 
      from_register14_data_out: in std_logic_vector(0 downto 0); 
      from_register15_data_out: in std_logic_vector(0 downto 0); 
      from_register16_data_out: in std_logic_vector(0 downto 0); 
      from_register17_data_out: in std_logic_vector(31 downto 0); 
      from_register18_data_out: in std_logic_vector(0 downto 0); 
      from_register19_data_out: in std_logic_vector(31 downto 0); 
      from_register1_data_out: in std_logic_vector(31 downto 0); 
      from_register20_data_out: in std_logic_vector(31 downto 0); 
      from_register21_data_out: in std_logic_vector(0 downto 0); 
      from_register22_data_out: in std_logic_vector(31 downto 0); 
      from_register23_data_out: in std_logic_vector(0 downto 0); 
      from_register24_data_out: in std_logic_vector(31 downto 0); 
      from_register25_data_out: in std_logic_vector(0 downto 0); 
      from_register26_data_out: in std_logic_vector(31 downto 0); 
      from_register27_data_out: in std_logic_vector(0 downto 0); 
      from_register28_data_out: in std_logic_vector(31 downto 0); 
      from_register29_data_out: in std_logic_vector(0 downto 0); 
      from_register2_data_out: in std_logic_vector(31 downto 0); 
      from_register30_data_out: in std_logic_vector(31 downto 0); 
      from_register31_data_out: in std_logic_vector(0 downto 0); 
      from_register32_data_out: in std_logic_vector(31 downto 0); 
      from_register33_data_out: in std_logic_vector(0 downto 0); 
      from_register3_data_out: in std_logic_vector(31 downto 0); 
      from_register4_data_out: in std_logic_vector(0 downto 0); 
      from_register5_data_out: in std_logic_vector(31 downto 0); 
      from_register6_data_out: in std_logic_vector(0 downto 0); 
      from_register7_data_out: in std_logic_vector(31 downto 0); 
      from_register8_data_out: in std_logic_vector(0 downto 0); 
      from_register9_data_out: in std_logic_vector(31 downto 0); 
      from_register_data_out: in std_logic_vector(31 downto 0); 
      rst_i: in std_logic; 
      to_register10_dout: in std_logic_vector(0 downto 0); 
      to_register11_dout: in std_logic_vector(0 downto 0); 
      to_register12_dout: in std_logic_vector(0 downto 0); 
      to_register13_dout: in std_logic_vector(31 downto 0); 
      to_register14_dout: in std_logic_vector(0 downto 0); 
      to_register15_dout: in std_logic_vector(31 downto 0); 
      to_register16_dout: in std_logic_vector(0 downto 0); 
      to_register17_dout: in std_logic_vector(31 downto 0); 
      to_register18_dout: in std_logic_vector(0 downto 0); 
      to_register19_dout: in std_logic_vector(31 downto 0); 
      to_register1_dout: in std_logic_vector(0 downto 0); 
      to_register20_dout: in std_logic_vector(0 downto 0); 
      to_register21_dout: in std_logic_vector(31 downto 0); 
      to_register22_dout: in std_logic_vector(0 downto 0); 
      to_register23_dout: in std_logic_vector(31 downto 0); 
      to_register24_dout: in std_logic_vector(0 downto 0); 
      to_register25_dout: in std_logic_vector(31 downto 0); 
      to_register26_dout: in std_logic_vector(0 downto 0); 
      to_register27_dout: in std_logic_vector(31 downto 0); 
      to_register2_dout: in std_logic_vector(31 downto 0); 
      to_register3_dout: in std_logic_vector(31 downto 0); 
      to_register4_dout: in std_logic_vector(0 downto 0); 
      to_register5_dout: in std_logic_vector(0 downto 0); 
      to_register6_dout: in std_logic_vector(31 downto 0); 
      to_register7_dout: in std_logic_vector(0 downto 0); 
      to_register8_dout: in std_logic_vector(31 downto 0); 
      to_register9_dout: in std_logic_vector(31 downto 0); 
      to_register_dout: in std_logic_vector(31 downto 0); 
      bram_rd_addr: out std_logic_vector(11 downto 0); 
      bram_wr_addr: out std_logic_vector(11 downto 0); 
      bram_wr_din: out std_logic_vector(63 downto 0); 
      bram_wr_en: out std_logic_vector(7 downto 0); 
      fifo_rd_en: out std_logic; 
      fifo_wr_din: out std_logic_vector(71 downto 0); 
      fifo_wr_en: out std_logic; 
      rst_o: out std_logic; 
      to_register10_ce: out std_logic; 
      to_register10_clk: out std_logic; 
      to_register10_clr: out std_logic; 
      to_register10_data_in: out std_logic_vector(0 downto 0); 
      to_register10_en: out std_logic_vector(0 downto 0); 
      to_register11_ce: out std_logic; 
      to_register11_clk: out std_logic; 
      to_register11_clr: out std_logic; 
      to_register11_data_in: out std_logic_vector(0 downto 0); 
      to_register11_en: out std_logic_vector(0 downto 0); 
      to_register12_ce: out std_logic; 
      to_register12_clk: out std_logic; 
      to_register12_clr: out std_logic; 
      to_register12_data_in: out std_logic_vector(0 downto 0); 
      to_register12_en: out std_logic_vector(0 downto 0); 
      to_register13_ce: out std_logic; 
      to_register13_clk: out std_logic; 
      to_register13_clr: out std_logic; 
      to_register13_data_in: out std_logic_vector(31 downto 0); 
      to_register13_en: out std_logic_vector(0 downto 0); 
      to_register14_ce: out std_logic; 
      to_register14_clk: out std_logic; 
      to_register14_clr: out std_logic; 
      to_register14_data_in: out std_logic_vector(0 downto 0); 
      to_register14_en: out std_logic_vector(0 downto 0); 
      to_register15_ce: out std_logic; 
      to_register15_clk: out std_logic; 
      to_register15_clr: out std_logic; 
      to_register15_data_in: out std_logic_vector(31 downto 0); 
      to_register15_en: out std_logic_vector(0 downto 0); 
      to_register16_ce: out std_logic; 
      to_register16_clk: out std_logic; 
      to_register16_clr: out std_logic; 
      to_register16_data_in: out std_logic_vector(0 downto 0); 
      to_register16_en: out std_logic_vector(0 downto 0); 
      to_register17_ce: out std_logic; 
      to_register17_clk: out std_logic; 
      to_register17_clr: out std_logic; 
      to_register17_data_in: out std_logic_vector(31 downto 0); 
      to_register17_en: out std_logic_vector(0 downto 0); 
      to_register18_ce: out std_logic; 
      to_register18_clk: out std_logic; 
      to_register18_clr: out std_logic; 
      to_register18_data_in: out std_logic_vector(0 downto 0); 
      to_register18_en: out std_logic_vector(0 downto 0); 
      to_register19_ce: out std_logic; 
      to_register19_clk: out std_logic; 
      to_register19_clr: out std_logic; 
      to_register19_data_in: out std_logic_vector(31 downto 0); 
      to_register19_en: out std_logic_vector(0 downto 0); 
      to_register1_ce: out std_logic; 
      to_register1_clk: out std_logic; 
      to_register1_clr: out std_logic; 
      to_register1_data_in: out std_logic_vector(0 downto 0); 
      to_register1_en: out std_logic_vector(0 downto 0); 
      to_register20_ce: out std_logic; 
      to_register20_clk: out std_logic; 
      to_register20_clr: out std_logic; 
      to_register20_data_in: out std_logic_vector(0 downto 0); 
      to_register20_en: out std_logic_vector(0 downto 0); 
      to_register21_ce: out std_logic; 
      to_register21_clk: out std_logic; 
      to_register21_clr: out std_logic; 
      to_register21_data_in: out std_logic_vector(31 downto 0); 
      to_register21_en: out std_logic_vector(0 downto 0); 
      to_register22_ce: out std_logic; 
      to_register22_clk: out std_logic; 
      to_register22_clr: out std_logic; 
      to_register22_data_in: out std_logic_vector(0 downto 0); 
      to_register22_en: out std_logic_vector(0 downto 0); 
      to_register23_ce: out std_logic; 
      to_register23_clk: out std_logic; 
      to_register23_clr: out std_logic; 
      to_register23_data_in: out std_logic_vector(31 downto 0); 
      to_register23_en: out std_logic_vector(0 downto 0); 
      to_register24_ce: out std_logic; 
      to_register24_clk: out std_logic; 
      to_register24_clr: out std_logic; 
      to_register24_data_in: out std_logic_vector(0 downto 0); 
      to_register24_en: out std_logic_vector(0 downto 0); 
      to_register25_ce: out std_logic; 
      to_register25_clk: out std_logic; 
      to_register25_clr: out std_logic; 
      to_register25_data_in: out std_logic_vector(31 downto 0); 
      to_register25_en: out std_logic_vector(0 downto 0); 
      to_register26_ce: out std_logic; 
      to_register26_clk: out std_logic; 
      to_register26_clr: out std_logic; 
      to_register26_data_in: out std_logic_vector(0 downto 0); 
      to_register26_en: out std_logic_vector(0 downto 0); 
      to_register27_ce: out std_logic; 
      to_register27_clk: out std_logic; 
      to_register27_clr: out std_logic; 
      to_register27_data_in: out std_logic_vector(31 downto 0); 
      to_register27_en: out std_logic_vector(0 downto 0); 
      to_register2_ce: out std_logic; 
      to_register2_clk: out std_logic; 
      to_register2_clr: out std_logic; 
      to_register2_data_in: out std_logic_vector(31 downto 0); 
      to_register2_en: out std_logic_vector(0 downto 0); 
      to_register3_ce: out std_logic; 
      to_register3_clk: out std_logic; 
      to_register3_clr: out std_logic; 
      to_register3_data_in: out std_logic_vector(31 downto 0); 
      to_register3_en: out std_logic_vector(0 downto 0); 
      to_register4_ce: out std_logic; 
      to_register4_clk: out std_logic; 
      to_register4_clr: out std_logic; 
      to_register4_data_in: out std_logic_vector(0 downto 0); 
      to_register4_en: out std_logic_vector(0 downto 0); 
      to_register5_ce: out std_logic; 
      to_register5_clk: out std_logic; 
      to_register5_clr: out std_logic; 
      to_register5_data_in: out std_logic_vector(0 downto 0); 
      to_register5_en: out std_logic_vector(0 downto 0); 
      to_register6_ce: out std_logic; 
      to_register6_clk: out std_logic; 
      to_register6_clr: out std_logic; 
      to_register6_data_in: out std_logic_vector(31 downto 0); 
      to_register6_en: out std_logic_vector(0 downto 0); 
      to_register7_ce: out std_logic; 
      to_register7_clk: out std_logic; 
      to_register7_clr: out std_logic; 
      to_register7_data_in: out std_logic_vector(0 downto 0); 
      to_register7_en: out std_logic_vector(0 downto 0); 
      to_register8_ce: out std_logic; 
      to_register8_clk: out std_logic; 
      to_register8_clr: out std_logic; 
      to_register8_data_in: out std_logic_vector(31 downto 0); 
      to_register8_en: out std_logic_vector(0 downto 0); 
      to_register9_ce: out std_logic; 
      to_register9_clk: out std_logic; 
      to_register9_clr: out std_logic; 
      to_register9_data_in: out std_logic_vector(31 downto 0); 
      to_register9_en: out std_logic_vector(0 downto 0); 
      to_register_ce: out std_logic; 
      to_register_clk: out std_logic; 
      to_register_clr: out std_logic; 
      to_register_data_in: out std_logic_vector(31 downto 0); 
      to_register_en: out std_logic_vector(0 downto 0)-- ;
    --  user_int_1o: out std_logic; 
    --  user_int_2o: out std_logic; 
     -- user_int_3o: out std_logic
    );
  end component;
  attribute syn_black_box of user_logic_cw: component is true;
  attribute box_type of user_logic_cw: component is "black_box";
  attribute syn_noprune of user_logic_cw: component is true;
  attribute optimize_primitives of user_logic_cw: component is false;
  attribute dont_touch of user_logic_cw: component is true;

  signal DMA_Host2Board_Busy_reg_ce: std_logic;
  signal DMA_Host2Board_Done_reg_ce: std_logic;
  signal clk: std_logic;
  signal clk_x0: std_logic;
  signal debug1i_reg_ce: std_logic;
  signal debug2i_reg_ce: std_logic;
  signal debug3i_reg_ce: std_logic;
  signal debug4i_reg_ce: std_logic;
  signal from_register10_data_out: std_logic_vector(31 downto 0);
  signal from_register10_data_out_x0: std_logic;
  signal from_register11_data_out: std_logic_vector(31 downto 0);
  signal from_register11_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register12_data_out: std_logic;
  signal from_register12_data_out_x0: std_logic;
  signal from_register13_data_out: std_logic_vector(31 downto 0);
  signal from_register13_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register14_data_out: std_logic;
  signal from_register14_data_out_x0: std_logic;
  signal from_register15_data_out: std_logic_vector(31 downto 0);
  signal from_register15_data_out_x0: std_logic;
  signal from_register16_data_out: std_logic;
  signal from_register16_data_out_x0: std_logic;
  signal from_register17_data_out: std_logic_vector(31 downto 0);
  signal from_register17_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register18_data_out: std_logic;
  signal from_register18_data_out_x0: std_logic;
  signal from_register19_data_out: std_logic_vector(31 downto 0);
  signal from_register19_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register1_data_out: std_logic;
  signal from_register1_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register20_data_out: std_logic;
  signal from_register20_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register21_data_out: std_logic_vector(31 downto 0);
  signal from_register21_data_out_x0: std_logic;
  signal from_register22_data_out: std_logic;
  signal from_register22_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register23_data_out: std_logic_vector(31 downto 0);
  signal from_register23_data_out_x0: std_logic;
  signal from_register24_data_out: std_logic;
  signal from_register24_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register25_data_out: std_logic_vector(31 downto 0);
  signal from_register25_data_out_x0: std_logic;
  signal from_register26_data_out: std_logic;
  signal from_register26_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register27_data_out: std_logic_vector(31 downto 0);
  signal from_register27_data_out_x0: std_logic;
  signal from_register28_data_out: std_logic;
  signal from_register28_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register29_data_out: std_logic;
  signal from_register2_data_out: std_logic;
  signal from_register2_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register30_data_out: std_logic_vector(31 downto 0);
  signal from_register31_data_out: std_logic;
  signal from_register32_data_out: std_logic_vector(31 downto 0);
  signal from_register33_data_out: std_logic;
  signal from_register3_data_out: std_logic_vector(31 downto 0);
  signal from_register3_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register4_data_out: std_logic;
  signal from_register4_data_out_x0: std_logic;
  signal from_register5_data_out: std_logic_vector(31 downto 0);
  signal from_register5_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register6_data_out: std_logic;
  signal from_register6_data_out_x0: std_logic;
  signal from_register7_data_out: std_logic_vector(31 downto 0);
  signal from_register7_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register8_data_out: std_logic_vector(31 downto 0);
  signal from_register8_data_out_x0: std_logic;
  signal from_register9_data_out: std_logic;
  signal from_register9_data_out_x0: std_logic_vector(31 downto 0);
  signal from_register_data_out: std_logic_vector(31 downto 0);
  signal register01rd_reg_ce: std_logic;
  signal register01rv_reg_ce: std_logic;
  signal register01td_reg_ce: std_logic;
  signal register01tv_reg_ce: std_logic;
  signal register02rd_reg_ce: std_logic;
  signal register02rv_reg_ce: std_logic;
  signal register02td_reg_ce: std_logic;
  signal register02tv_reg_ce: std_logic;
  signal register03rd_reg_ce: std_logic;
  signal register03rv_reg_ce: std_logic;
  signal register03td_reg_ce: std_logic;
  signal register03tv_reg_ce: std_logic;
  signal register04rd_reg_ce: std_logic;
  signal register04rv_reg_ce: std_logic;
  signal register04td_reg_ce: std_logic;
  signal register04tv_reg_ce: std_logic;
  signal register05rd_reg_ce: std_logic;
  signal register05rv_reg_ce: std_logic;
  signal register05td_reg_ce: std_logic;
  signal register05tv_reg_ce: std_logic;
  signal register06rd_reg_ce: std_logic;
  signal register06rv_reg_ce: std_logic;
  signal register06td_reg_ce: std_logic;
  signal register06tv_reg_ce: std_logic;
  signal register07rd_reg_ce: std_logic;
  signal register07rv_reg_ce: std_logic;
  signal register07td_reg_ce: std_logic;
  signal register07tv_reg_ce: std_logic;
  signal register08rd_reg_ce: std_logic;
  signal register08rv_reg_ce: std_logic;
  signal register08td_reg_ce: std_logic;
  signal register08tv_reg_ce: std_logic;
  signal register09rd_reg_ce: std_logic;
  signal register09rv_reg_ce: std_logic;
  signal register09td_reg_ce: std_logic;
  signal register09tv_reg_ce: std_logic;
  signal register10rd_reg_ce: std_logic;
  signal register10rv_reg_ce: std_logic;
  signal register10td_reg_ce: std_logic;
  signal register10tv_reg_ce: std_logic;
  signal register11rd_reg_ce: std_logic;
  signal register11rv_reg_ce: std_logic;
  signal register11td_reg_ce: std_logic;
  signal register11tv_reg_ce: std_logic;
  signal register12rd_reg_ce: std_logic;
  signal register12rv_reg_ce: std_logic;
  signal register12td_reg_ce: std_logic;
  signal register12tv_reg_ce: std_logic;
  signal register13rd_reg_ce: std_logic;
  signal register13rv_reg_ce: std_logic;
  signal register13td_reg_ce: std_logic;
  signal register13tv_reg_ce: std_logic;
  signal register14rd_reg_ce: std_logic;
  signal register14rv_reg_ce: std_logic;
  signal register14td_reg_ce: std_logic;
  signal register14tv_reg_ce: std_logic;
  signal sysgen_dut_to_register10_ce: std_logic;
  signal sysgen_dut_to_register10_ce_x0: std_logic;
  signal sysgen_dut_to_register10_clk: std_logic;
  signal sysgen_dut_to_register10_clk_x0: std_logic;
  signal sysgen_dut_to_register10_clr: std_logic;
  signal sysgen_dut_to_register10_clr_x0: std_logic;
  signal sysgen_dut_to_register10_data_in: std_logic;
  signal sysgen_dut_to_register10_data_in_x0: std_logic;
  signal sysgen_dut_to_register10_en: std_logic;
  signal sysgen_dut_to_register10_en_x0: std_logic;
  signal sysgen_dut_to_register11_ce: std_logic;
  signal sysgen_dut_to_register11_ce_x0: std_logic;
  signal sysgen_dut_to_register11_clk: std_logic;
  signal sysgen_dut_to_register11_clk_x0: std_logic;
  signal sysgen_dut_to_register11_clr: std_logic;
  signal sysgen_dut_to_register11_clr_x0: std_logic;
  signal sysgen_dut_to_register11_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register11_data_in_x0: std_logic;
  signal sysgen_dut_to_register11_en: std_logic;
  signal sysgen_dut_to_register11_en_x0: std_logic;
  signal sysgen_dut_to_register12_ce: std_logic;
  signal sysgen_dut_to_register12_ce_x0: std_logic;
  signal sysgen_dut_to_register12_clk: std_logic;
  signal sysgen_dut_to_register12_clk_x0: std_logic;
  signal sysgen_dut_to_register12_clr: std_logic;
  signal sysgen_dut_to_register12_clr_x0: std_logic;
  signal sysgen_dut_to_register12_data_in: std_logic;
  signal sysgen_dut_to_register12_data_in_x0: std_logic;
  signal sysgen_dut_to_register12_en: std_logic;
  signal sysgen_dut_to_register12_en_x0: std_logic;
  signal sysgen_dut_to_register13_ce: std_logic;
  signal sysgen_dut_to_register13_ce_x0: std_logic;
  signal sysgen_dut_to_register13_clk: std_logic;
  signal sysgen_dut_to_register13_clk_x0: std_logic;
  signal sysgen_dut_to_register13_clr: std_logic;
  signal sysgen_dut_to_register13_clr_x0: std_logic;
  signal sysgen_dut_to_register13_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register13_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register13_en: std_logic;
  signal sysgen_dut_to_register13_en_x0: std_logic;
  signal sysgen_dut_to_register14_ce: std_logic;
  signal sysgen_dut_to_register14_ce_x0: std_logic;
  signal sysgen_dut_to_register14_clk: std_logic;
  signal sysgen_dut_to_register14_clk_x0: std_logic;
  signal sysgen_dut_to_register14_clr: std_logic;
  signal sysgen_dut_to_register14_clr_x0: std_logic;
  signal sysgen_dut_to_register14_data_in: std_logic;
  signal sysgen_dut_to_register14_data_in_x0: std_logic;
  signal sysgen_dut_to_register14_en: std_logic;
  signal sysgen_dut_to_register14_en_x0: std_logic;
  signal sysgen_dut_to_register15_ce: std_logic;
  signal sysgen_dut_to_register15_ce_x0: std_logic;
  signal sysgen_dut_to_register15_clk: std_logic;
  signal sysgen_dut_to_register15_clk_x0: std_logic;
  signal sysgen_dut_to_register15_clr: std_logic;
  signal sysgen_dut_to_register15_clr_x0: std_logic;
  signal sysgen_dut_to_register15_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register15_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register15_en: std_logic;
  signal sysgen_dut_to_register15_en_x0: std_logic;
  signal sysgen_dut_to_register16_ce: std_logic;
  signal sysgen_dut_to_register16_ce_x0: std_logic;
  signal sysgen_dut_to_register16_clk: std_logic;
  signal sysgen_dut_to_register16_clk_x0: std_logic;
  signal sysgen_dut_to_register16_clr: std_logic;
  signal sysgen_dut_to_register16_clr_x0: std_logic;
  signal sysgen_dut_to_register16_data_in: std_logic;
  signal sysgen_dut_to_register16_data_in_x0: std_logic;
  signal sysgen_dut_to_register16_en: std_logic;
  signal sysgen_dut_to_register16_en_x0: std_logic;
  signal sysgen_dut_to_register17_ce: std_logic;
  signal sysgen_dut_to_register17_ce_x0: std_logic;
  signal sysgen_dut_to_register17_clk: std_logic;
  signal sysgen_dut_to_register17_clk_x0: std_logic;
  signal sysgen_dut_to_register17_clr: std_logic;
  signal sysgen_dut_to_register17_clr_x0: std_logic;
  signal sysgen_dut_to_register17_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register17_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register17_en: std_logic;
  signal sysgen_dut_to_register17_en_x0: std_logic;
  signal sysgen_dut_to_register18_ce: std_logic;
  signal sysgen_dut_to_register18_ce_x0: std_logic;
  signal sysgen_dut_to_register18_clk: std_logic;
  signal sysgen_dut_to_register18_clk_x0: std_logic;
  signal sysgen_dut_to_register18_clr: std_logic;
  signal sysgen_dut_to_register18_clr_x0: std_logic;
  signal sysgen_dut_to_register18_data_in: std_logic;
  signal sysgen_dut_to_register18_data_in_x0: std_logic;
  signal sysgen_dut_to_register18_en: std_logic;
  signal sysgen_dut_to_register18_en_x0: std_logic;
  signal sysgen_dut_to_register19_ce: std_logic;
  signal sysgen_dut_to_register19_ce_x0: std_logic;
  signal sysgen_dut_to_register19_clk: std_logic;
  signal sysgen_dut_to_register19_clk_x0: std_logic;
  signal sysgen_dut_to_register19_clr: std_logic;
  signal sysgen_dut_to_register19_clr_x0: std_logic;
  signal sysgen_dut_to_register19_data_in: std_logic;
  signal sysgen_dut_to_register19_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register19_en: std_logic;
  signal sysgen_dut_to_register19_en_x0: std_logic;
  signal sysgen_dut_to_register1_ce: std_logic;
  signal sysgen_dut_to_register1_ce_x0: std_logic;
  signal sysgen_dut_to_register1_clk: std_logic;
  signal sysgen_dut_to_register1_clk_x0: std_logic;
  signal sysgen_dut_to_register1_clr: std_logic;
  signal sysgen_dut_to_register1_clr_x0: std_logic;
  signal sysgen_dut_to_register1_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register1_data_in_x0: std_logic;
  signal sysgen_dut_to_register1_en: std_logic;
  signal sysgen_dut_to_register1_en_x0: std_logic;
  signal sysgen_dut_to_register20_ce: std_logic;
  signal sysgen_dut_to_register20_ce_x0: std_logic;
  signal sysgen_dut_to_register20_clk: std_logic;
  signal sysgen_dut_to_register20_clk_x0: std_logic;
  signal sysgen_dut_to_register20_clr: std_logic;
  signal sysgen_dut_to_register20_clr_x0: std_logic;
  signal sysgen_dut_to_register20_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register20_data_in_x0: std_logic;
  signal sysgen_dut_to_register20_en: std_logic;
  signal sysgen_dut_to_register20_en_x0: std_logic;
  signal sysgen_dut_to_register21_ce: std_logic;
  signal sysgen_dut_to_register21_ce_x0: std_logic;
  signal sysgen_dut_to_register21_clk: std_logic;
  signal sysgen_dut_to_register21_clk_x0: std_logic;
  signal sysgen_dut_to_register21_clr: std_logic;
  signal sysgen_dut_to_register21_clr_x0: std_logic;
  signal sysgen_dut_to_register21_data_in: std_logic;
  signal sysgen_dut_to_register21_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register21_en: std_logic;
  signal sysgen_dut_to_register21_en_x0: std_logic;
  signal sysgen_dut_to_register22_ce: std_logic;
  signal sysgen_dut_to_register22_ce_x0: std_logic;
  signal sysgen_dut_to_register22_clk: std_logic;
  signal sysgen_dut_to_register22_clk_x0: std_logic;
  signal sysgen_dut_to_register22_clr: std_logic;
  signal sysgen_dut_to_register22_clr_x0: std_logic;
  signal sysgen_dut_to_register22_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register22_data_in_x0: std_logic;
  signal sysgen_dut_to_register22_en: std_logic;
  signal sysgen_dut_to_register22_en_x0: std_logic;
  signal sysgen_dut_to_register23_ce: std_logic;
  signal sysgen_dut_to_register23_ce_x0: std_logic;
  signal sysgen_dut_to_register23_clk: std_logic;
  signal sysgen_dut_to_register23_clk_x0: std_logic;
  signal sysgen_dut_to_register23_clr: std_logic;
  signal sysgen_dut_to_register23_clr_x0: std_logic;
  signal sysgen_dut_to_register23_data_in: std_logic;
  signal sysgen_dut_to_register23_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register23_en: std_logic;
  signal sysgen_dut_to_register23_en_x0: std_logic;
  signal sysgen_dut_to_register24_ce: std_logic;
  signal sysgen_dut_to_register24_ce_x0: std_logic;
  signal sysgen_dut_to_register24_clk: std_logic;
  signal sysgen_dut_to_register24_clk_x0: std_logic;
  signal sysgen_dut_to_register24_clr: std_logic;
  signal sysgen_dut_to_register24_clr_x0: std_logic;
  signal sysgen_dut_to_register24_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register24_data_in_x0: std_logic;
  signal sysgen_dut_to_register24_en: std_logic;
  signal sysgen_dut_to_register24_en_x0: std_logic;
  signal sysgen_dut_to_register25_ce: std_logic;
  signal sysgen_dut_to_register25_ce_x0: std_logic;
  signal sysgen_dut_to_register25_clk: std_logic;
  signal sysgen_dut_to_register25_clk_x0: std_logic;
  signal sysgen_dut_to_register25_clr: std_logic;
  signal sysgen_dut_to_register25_clr_x0: std_logic;
  signal sysgen_dut_to_register25_data_in: std_logic;
  signal sysgen_dut_to_register25_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register25_en: std_logic;
  signal sysgen_dut_to_register25_en_x0: std_logic;
  signal sysgen_dut_to_register26_ce: std_logic;
  signal sysgen_dut_to_register26_ce_x0: std_logic;
  signal sysgen_dut_to_register26_clk: std_logic;
  signal sysgen_dut_to_register26_clk_x0: std_logic;
  signal sysgen_dut_to_register26_clr: std_logic;
  signal sysgen_dut_to_register26_clr_x0: std_logic;
  signal sysgen_dut_to_register26_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register26_data_in_x0: std_logic;
  signal sysgen_dut_to_register26_en: std_logic;
  signal sysgen_dut_to_register26_en_x0: std_logic;
  signal sysgen_dut_to_register27_ce: std_logic;
  signal sysgen_dut_to_register27_ce_x0: std_logic;
  signal sysgen_dut_to_register27_clk: std_logic;
  signal sysgen_dut_to_register27_clk_x0: std_logic;
  signal sysgen_dut_to_register27_clr: std_logic;
  signal sysgen_dut_to_register27_clr_x0: std_logic;
  signal sysgen_dut_to_register27_data_in: std_logic;
  signal sysgen_dut_to_register27_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register27_en: std_logic;
  signal sysgen_dut_to_register27_en_x0: std_logic;
  signal sysgen_dut_to_register28_ce: std_logic;
  signal sysgen_dut_to_register28_clk: std_logic;
  signal sysgen_dut_to_register28_clr: std_logic;
  signal sysgen_dut_to_register28_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register28_en: std_logic;
  signal sysgen_dut_to_register29_ce: std_logic;
  signal sysgen_dut_to_register29_clk: std_logic;
  signal sysgen_dut_to_register29_clr: std_logic;
  signal sysgen_dut_to_register29_data_in: std_logic;
  signal sysgen_dut_to_register29_en: std_logic;
  signal sysgen_dut_to_register2_ce: std_logic;
  signal sysgen_dut_to_register2_ce_x0: std_logic;
  signal sysgen_dut_to_register2_clk: std_logic;
  signal sysgen_dut_to_register2_clk_x0: std_logic;
  signal sysgen_dut_to_register2_clr: std_logic;
  signal sysgen_dut_to_register2_clr_x0: std_logic;
  signal sysgen_dut_to_register2_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register2_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register2_en: std_logic;
  signal sysgen_dut_to_register2_en_x0: std_logic;
  signal sysgen_dut_to_register30_ce: std_logic;
  signal sysgen_dut_to_register30_clk: std_logic;
  signal sysgen_dut_to_register30_clr: std_logic;
  signal sysgen_dut_to_register30_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register30_en: std_logic;
  signal sysgen_dut_to_register31_ce: std_logic;
  signal sysgen_dut_to_register31_clk: std_logic;
  signal sysgen_dut_to_register31_clr: std_logic;
  signal sysgen_dut_to_register31_data_in: std_logic;
  signal sysgen_dut_to_register31_en: std_logic;
  signal sysgen_dut_to_register32_ce: std_logic;
  signal sysgen_dut_to_register32_clk: std_logic;
  signal sysgen_dut_to_register32_clr: std_logic;
  signal sysgen_dut_to_register32_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register32_en: std_logic;
  signal sysgen_dut_to_register33_ce: std_logic;
  signal sysgen_dut_to_register33_clk: std_logic;
  signal sysgen_dut_to_register33_clr: std_logic;
  signal sysgen_dut_to_register33_data_in: std_logic;
  signal sysgen_dut_to_register33_en: std_logic;
  signal sysgen_dut_to_register34_ce: std_logic;
  signal sysgen_dut_to_register34_clk: std_logic;
  signal sysgen_dut_to_register34_clr: std_logic;
  signal sysgen_dut_to_register34_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register34_en: std_logic;
  signal sysgen_dut_to_register3_ce: std_logic;
  signal sysgen_dut_to_register3_ce_x0: std_logic;
  signal sysgen_dut_to_register3_clk: std_logic;
  signal sysgen_dut_to_register3_clk_x0: std_logic;
  signal sysgen_dut_to_register3_clr: std_logic;
  signal sysgen_dut_to_register3_clr_x0: std_logic;
  signal sysgen_dut_to_register3_data_in: std_logic;
  signal sysgen_dut_to_register3_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register3_en: std_logic;
  signal sysgen_dut_to_register3_en_x0: std_logic;
  signal sysgen_dut_to_register4_ce: std_logic;
  signal sysgen_dut_to_register4_ce_x0: std_logic;
  signal sysgen_dut_to_register4_clk: std_logic;
  signal sysgen_dut_to_register4_clk_x0: std_logic;
  signal sysgen_dut_to_register4_clr: std_logic;
  signal sysgen_dut_to_register4_clr_x0: std_logic;
  signal sysgen_dut_to_register4_data_in: std_logic;
  signal sysgen_dut_to_register4_data_in_x0: std_logic;
  signal sysgen_dut_to_register4_en: std_logic;
  signal sysgen_dut_to_register4_en_x0: std_logic;
  signal sysgen_dut_to_register5_ce: std_logic;
  signal sysgen_dut_to_register5_ce_x0: std_logic;
  signal sysgen_dut_to_register5_clk: std_logic;
  signal sysgen_dut_to_register5_clk_x0: std_logic;
  signal sysgen_dut_to_register5_clr: std_logic;
  signal sysgen_dut_to_register5_clr_x0: std_logic;
  signal sysgen_dut_to_register5_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register5_data_in_x0: std_logic;
  signal sysgen_dut_to_register5_en: std_logic;
  signal sysgen_dut_to_register5_en_x0: std_logic;
  signal sysgen_dut_to_register6_ce: std_logic;
  signal sysgen_dut_to_register6_ce_x0: std_logic;
  signal sysgen_dut_to_register6_clk: std_logic;
  signal sysgen_dut_to_register6_clk_x0: std_logic;
  signal sysgen_dut_to_register6_clr: std_logic;
  signal sysgen_dut_to_register6_clr_x0: std_logic;
  signal sysgen_dut_to_register6_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register6_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register6_en: std_logic;
  signal sysgen_dut_to_register6_en_x0: std_logic;
  signal sysgen_dut_to_register7_ce: std_logic;
  signal sysgen_dut_to_register7_ce_x0: std_logic;
  signal sysgen_dut_to_register7_clk: std_logic;
  signal sysgen_dut_to_register7_clk_x0: std_logic;
  signal sysgen_dut_to_register7_clr: std_logic;
  signal sysgen_dut_to_register7_clr_x0: std_logic;
  signal sysgen_dut_to_register7_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register7_data_in_x0: std_logic;
  signal sysgen_dut_to_register7_en: std_logic;
  signal sysgen_dut_to_register7_en_x0: std_logic;
  signal sysgen_dut_to_register8_ce: std_logic;
  signal sysgen_dut_to_register8_ce_x0: std_logic;
  signal sysgen_dut_to_register8_clk: std_logic;
  signal sysgen_dut_to_register8_clk_x0: std_logic;
  signal sysgen_dut_to_register8_clr: std_logic;
  signal sysgen_dut_to_register8_clr_x0: std_logic;
  signal sysgen_dut_to_register8_data_in: std_logic;
  signal sysgen_dut_to_register8_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register8_en: std_logic;
  signal sysgen_dut_to_register8_en_x0: std_logic;
  signal sysgen_dut_to_register9_ce: std_logic;
  signal sysgen_dut_to_register9_ce_x0: std_logic;
  signal sysgen_dut_to_register9_clk: std_logic;
  signal sysgen_dut_to_register9_clk_x0: std_logic;
  signal sysgen_dut_to_register9_clr: std_logic;
  signal sysgen_dut_to_register9_clr_x0: std_logic;
  signal sysgen_dut_to_register9_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register9_data_in_x0: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register9_en: std_logic;
  signal sysgen_dut_to_register9_en_x0: std_logic;
  signal sysgen_dut_to_register_ce: std_logic;
  signal sysgen_dut_to_register_clk: std_logic;
  signal sysgen_dut_to_register_clr: std_logic;
  signal sysgen_dut_to_register_data_in: std_logic_vector(31 downto 0);
  signal sysgen_dut_to_register_en: std_logic;
  signal x: std_logic;
  signal x_x0: std_logic;
  signal x_x1: std_logic_vector(31 downto 0);
  signal x_x10: std_logic;
  signal x_x11: std_logic_vector(31 downto 0);
  signal x_x12: std_logic;
  signal x_x13: std_logic_vector(31 downto 0);
  signal x_x14: std_logic;
  signal x_x15: std_logic_vector(31 downto 0);
  signal x_x16: std_logic;
  signal x_x17: std_logic_vector(31 downto 0);
  signal x_x18: std_logic;
  signal x_x19: std_logic_vector(31 downto 0);
  signal x_x2: std_logic_vector(31 downto 0);
  signal x_x20: std_logic;
  signal x_x21: std_logic_vector(31 downto 0);
  signal x_x22: std_logic;
  signal x_x23: std_logic_vector(31 downto 0);
  signal x_x24: std_logic;
  signal x_x25: std_logic_vector(31 downto 0);
  signal x_x26: std_logic;
  signal x_x27: std_logic_vector(31 downto 0);
  signal x_x28: std_logic;
  signal x_x29: std_logic_vector(31 downto 0);
  signal x_x3: std_logic_vector(31 downto 0);
  signal x_x30: std_logic;
  signal x_x31: std_logic_vector(31 downto 0);
  signal x_x32: std_logic;
  signal x_x33: std_logic_vector(31 downto 0);
  signal x_x34: std_logic;
  signal x_x35: std_logic_vector(31 downto 0);
  signal x_x36: std_logic;
  signal x_x37: std_logic_vector(31 downto 0);
  signal x_x38: std_logic;
  signal x_x39: std_logic_vector(31 downto 0);
  signal x_x4: std_logic_vector(31 downto 0);
  signal x_x40: std_logic;
  signal x_x41: std_logic_vector(31 downto 0);
  signal x_x42: std_logic;
  signal x_x43: std_logic_vector(31 downto 0);
  signal x_x44: std_logic;
  signal x_x45: std_logic_vector(31 downto 0);
  signal x_x46: std_logic;
  signal x_x47: std_logic_vector(31 downto 0);
  signal x_x48: std_logic;
  signal x_x49: std_logic_vector(31 downto 0);
  signal x_x5: std_logic;
  signal x_x50: std_logic;
  signal x_x51: std_logic_vector(31 downto 0);
  signal x_x52: std_logic;
  signal x_x53: std_logic_vector(31 downto 0);
  signal x_x54: std_logic;
  signal x_x55: std_logic_vector(31 downto 0);
  signal x_x56: std_logic;
  signal x_x57: std_logic_vector(31 downto 0);
  signal x_x58: std_logic;
  signal x_x59: std_logic_vector(31 downto 0);
  signal x_x6: std_logic;
  signal x_x60: std_logic;
  signal x_x61: std_logic_vector(31 downto 0);
  signal x_x62: std_logic;
  signal x_x63: std_logic_vector(11 downto 0);
  signal x_x64: std_logic_vector(63 downto 0);
  signal x_x65: std_logic_vector(11 downto 0);
  signal x_x66: std_logic_vector(63 downto 0);
  signal x_x67: std_logic_vector(7 downto 0);
  signal x_x68: std_logic;
  signal x_x69: std_logic;
  signal x_x7: std_logic_vector(31 downto 0);
  signal x_x70: std_logic_vector(14 downto 0);
  signal x_x71: std_logic_vector(71 downto 0);
  signal x_x72: std_logic;
  signal x_x73: std_logic;
  signal x_x74: std_logic;
  signal x_x75: std_logic;
  signal x_x76: std_logic_vector(14 downto 0);
  signal x_x77: std_logic_vector(71 downto 0);
  signal x_x78: std_logic;
  signal x_x79: std_logic;
  signal x_x8: std_logic;
  signal x_x80: std_logic;
  signal x_x81: std_logic;
  signal x_x82: std_logic;
  signal x_x83: std_logic;
  signal x_x84: std_logic;
  signal x_x85: std_logic;
  signal x_x9: std_logic_vector(31 downto 0);

begin
  x_x64 <= bram_rd_dout;
  x_x1 <= debug_in_1i;
  x_x2 <= debug_in_2i;
  x_x3 <= debug_in_3i;
  x_x4 <= debug_in_4i;
   x_x5 <= dma_host2board_busy;
   x_x6 <= dma_host2board_done;
  x_x70 <= fifo_rd_count;
  x_x71 <= fifo_rd_dout;
  x_x72 <= fifo_rd_empty;
  x_x74 <= fifo_rd_pempty;
  x_x75 <= fifo_rd_valid;
  x_x76 <= fifo_wr_count;
  x_x79 <= fifo_wr_full;
  x_x80 <= fifo_wr_pfull;
  x <= inout_logic_cw_ce;
  x_x0 <= inout_logic_cw_clk;
 -- x_x9 <= reg01_td;
 -- x_x10 <= reg01_tv;
  -- x_x13 <= reg02_td;
  -- x_x14 <= reg02_tv;
 --  x_x17 <= reg03_td;
 --  x_x18 <= reg03_tv;
  -- x_x21 <= reg04_td;
  -- x_x22 <= reg04_tv;
  -- x_x25 <= reg05_td;
  -- x_x26 <= reg05_tv;
  -- x_x29 <= reg06_td;
  -- x_x30 <= reg06_tv;
  -- x_x33 <= reg07_td;
  -- x_x34 <= reg07_tv;
  -- x_x37 <= reg08_td;
  -- x_x38 <= reg08_tv;
  -- x_x41 <= reg09_td;
  -- x_x42 <= reg09_tv;
  -- x_x45 <= reg10_td;
  -- x_x46 <= reg10_tv;
  -- x_x49 <= reg11_td;
  -- x_x50 <= reg11_tv;
  -- x_x53 <= reg12_td;
  -- x_x54 <= reg12_tv;
  -- x_x57 <= reg13_td;
  -- x_x58 <= reg13_tv;
  -- x_x61 <= reg14_td;
  -- x_x62 <= reg14_tv;
--  x_x81 <= rst_i;
  x_x68 <= user_logic_cw_ce;
  x_x69 <= user_logic_cw_clk;
  bram_rd_addr <= x_x63;
  bram_wr_addr <= x_x65;--"000000000000"; --x_x65;
  bram_wr_din <=  x_x66;--"0000000000000000000000000000000000000000000000000000000000001001"; --x_x66;
  bram_wr_en <= x_x67;
  fifo_rd_en <= x_x73;
  fifo_wr_din <= x_x77;
  fifo_wr_en <= x_x78;
--  reg01_rd <= x_x7;
 -- reg01_rv <= x_x8;
--  reg02_rd <= x_x11;
 -- reg02_rv <= x_x12;
 -- reg03_rd <= x_x15;
 -- reg03_rv <= x_x16;
 -- reg04_rd <= x_x19;
 -- reg04_rv <= x_x20;
 -- reg05_rd <= x_x23;
--  reg05_rv <= x_x24;
 -- reg06_rd <= x_x27;
 -- reg06_rv <= x_x28;
--  reg07_rd <= x_x31;
--  reg07_rv <= x_x32;
 -- reg08_rd <= x_x35;
 -- reg08_rv <= x_x36;
 -- reg09_rd <= x_x39;
 -- reg09_rv <= x_x40;
 -- reg10_rd <= x_x43;
--  reg10_rv <= x_x44;
--  reg11_rd <= x_x47;
--  reg11_rv <= x_x48;
--  reg12_rd <= x_x51;
--  reg12_rv <= x_x52;
 -- reg13_rd <= x_x55;
 -- reg13_rv <= x_x56;
 -- reg14_rd <= x_x59;
 -- reg14_rv <= x_x60;
  rst_o <= x_x82;
  --user_int_1o <= x_x83;
 --user_int_2o <= x_x84;
  --user_int_3o <= x_x85;

  DMA_Host2Board_Busy_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register18_ce,
      b => sysgen_dut_to_register18_en,
      dout => DMA_Host2Board_Busy_reg_ce
    );

  DMA_Host2Board_Busy_x0: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => DMA_Host2Board_Busy_reg_ce,
      clk => sysgen_dut_to_register18_clk,
      clr => sysgen_dut_to_register18_clr,
      i(0) => sysgen_dut_to_register18_data_in,
      o(0) => from_register16_data_out_x0
    );

  DMA_Host2Board_Done_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register19_ce,
      b => sysgen_dut_to_register19_en,
      dout => DMA_Host2Board_Done_reg_ce
    );

  DMA_Host2Board_Done_x0: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => DMA_Host2Board_Done_reg_ce,
      clk => sysgen_dut_to_register19_clk,
      clr => sysgen_dut_to_register19_clr,
      i(0) => sysgen_dut_to_register19_data_in,
      o(0) => from_register15_data_out_x0
    );

  debug1i: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => debug1i_reg_ce,
      clk => sysgen_dut_to_register6_clk,
      clr => sysgen_dut_to_register6_clr,
      i => sysgen_dut_to_register6_data_in,
      o => from_register_data_out
    );

  debug1i_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register6_ce,
      b => sysgen_dut_to_register6_en,
      dout => debug1i_reg_ce
    );

  debug2i: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => debug2i_reg_ce,
      clk => sysgen_dut_to_register1_clk,
      clr => sysgen_dut_to_register1_clr,
      i => sysgen_dut_to_register1_data_in,
      o => from_register1_data_out_x0
    );

  debug2i_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register1_ce,
      b => sysgen_dut_to_register1_en,
      dout => debug2i_reg_ce
    );

  debug3i: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => debug3i_reg_ce,
      clk => sysgen_dut_to_register2_clk,
      clr => sysgen_dut_to_register2_clr,
      i => sysgen_dut_to_register2_data_in,
      o => from_register2_data_out_x0
    );

  debug3i_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register2_ce,
      b => sysgen_dut_to_register2_en,
      dout => debug3i_reg_ce
    );

  debug4i: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => debug4i_reg_ce,
      clk => sysgen_dut_to_register20_clk,
      clr => sysgen_dut_to_register20_clr,
      i => sysgen_dut_to_register20_data_in,
      o => from_register19_data_out_x0
    );

  debug4i_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register20_ce,
      b => sysgen_dut_to_register20_en,
      dout => debug4i_reg_ce
    );

  register01rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register01rd_reg_ce,
      clk => sysgen_dut_to_register_clk,
      clr => sysgen_dut_to_register_clr,
      i => sysgen_dut_to_register_data_in,
      o => from_register3_data_out
    );

  register01rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register_ce,
      b => sysgen_dut_to_register_en,
      dout => register01rd_reg_ce
    );

  register01rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register01rv_reg_ce,
      clk => sysgen_dut_to_register1_clk_x0,
      clr => sysgen_dut_to_register1_clr_x0,
      i(0) => sysgen_dut_to_register1_data_in_x0,
      o(0) => from_register1_data_out
    );

  register01rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register1_ce_x0,
      b => sysgen_dut_to_register1_en_x0,
      dout => register01rv_reg_ce
    );

  register01td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register01td_reg_ce,
      clk => sysgen_dut_to_register7_clk,
      clr => sysgen_dut_to_register7_clr,
      i => sysgen_dut_to_register7_data_in,
      o => from_register3_data_out_x0
    );

  register01td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register7_ce,
      b => sysgen_dut_to_register7_en,
      dout => register01td_reg_ce
    );

  register01tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register01tv_reg_ce,
      clk => sysgen_dut_to_register3_clk,
      clr => sysgen_dut_to_register3_clr,
      i(0) => sysgen_dut_to_register3_data_in,
      o(0) => from_register4_data_out_x0
    );

  register01tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register3_ce,
      b => sysgen_dut_to_register3_en,
      dout => register01tv_reg_ce
    );

  register02rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register02rd_reg_ce,
      clk => sysgen_dut_to_register2_clk_x0,
      clr => sysgen_dut_to_register2_clr_x0,
      i => sysgen_dut_to_register2_data_in_x0,
      o => from_register5_data_out
    );

  register02rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register2_ce_x0,
      b => sysgen_dut_to_register2_en_x0,
      dout => register02rd_reg_ce
    );

  register02rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register02rv_reg_ce,
      clk => sysgen_dut_to_register4_clk_x0,
      clr => sysgen_dut_to_register4_clr_x0,
      i(0) => sysgen_dut_to_register4_data_in_x0,
      o(0) => from_register2_data_out
    );

  register02rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register4_ce_x0,
      b => sysgen_dut_to_register4_en_x0,
      dout => register02rv_reg_ce
    );

  register02td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register02td_reg_ce,
      clk => sysgen_dut_to_register5_clk,
      clr => sysgen_dut_to_register5_clr,
      i => sysgen_dut_to_register5_data_in,
      o => from_register5_data_out_x0
    );

  register02td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register5_ce,
      b => sysgen_dut_to_register5_en,
      dout => register02td_reg_ce
    );

  register02tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register02tv_reg_ce,
      clk => sysgen_dut_to_register4_clk,
      clr => sysgen_dut_to_register4_clr,
      i(0) => sysgen_dut_to_register4_data_in,
      o(0) => from_register6_data_out_x0
    );

  register02tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register4_ce,
      b => sysgen_dut_to_register4_en,
      dout => register02tv_reg_ce
    );

  register03rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register03rd_reg_ce,
      clk => sysgen_dut_to_register3_clk_x0,
      clr => sysgen_dut_to_register3_clr_x0,
      i => sysgen_dut_to_register3_data_in_x0,
      o => from_register7_data_out
    );

  register03rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register3_ce_x0,
      b => sysgen_dut_to_register3_en_x0,
      dout => register03rd_reg_ce
    );

  register03rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register03rv_reg_ce,
      clk => sysgen_dut_to_register5_clk_x0,
      clr => sysgen_dut_to_register5_clr_x0,
      i(0) => sysgen_dut_to_register5_data_in_x0,
      o(0) => from_register6_data_out
    );

  register03rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register5_ce_x0,
      b => sysgen_dut_to_register5_en_x0,
      dout => register03rv_reg_ce
    );

  register03td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register03td_reg_ce,
      clk => sysgen_dut_to_register9_clk,
      clr => sysgen_dut_to_register9_clr,
      i => sysgen_dut_to_register9_data_in,
      o => from_register7_data_out_x0
    );

  register03td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register9_ce,
      b => sysgen_dut_to_register9_en,
      dout => register03td_reg_ce
    );

  register03tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register03tv_reg_ce,
      clk => sysgen_dut_to_register8_clk,
      clr => sysgen_dut_to_register8_clr,
      i(0) => sysgen_dut_to_register8_data_in,
      o(0) => from_register8_data_out_x0
    );

  register03tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register8_ce,
      b => sysgen_dut_to_register8_en,
      dout => register03tv_reg_ce
    );

  register04rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register04rd_reg_ce,
      clk => sysgen_dut_to_register6_clk_x0,
      clr => sysgen_dut_to_register6_clr_x0,
      i => sysgen_dut_to_register6_data_in_x0,
      o => from_register8_data_out
    );

  register04rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register6_ce_x0,
      b => sysgen_dut_to_register6_en_x0,
      dout => register04rd_reg_ce
    );

  register04rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register04rv_reg_ce,
      clk => sysgen_dut_to_register7_clk_x0,
      clr => sysgen_dut_to_register7_clr_x0,
      i(0) => sysgen_dut_to_register7_data_in_x0,
      o(0) => from_register4_data_out
    );

  register04rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register7_ce_x0,
      b => sysgen_dut_to_register7_en_x0,
      dout => register04rv_reg_ce
    );

  register04td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register04td_reg_ce,
      clk => sysgen_dut_to_register11_clk,
      clr => sysgen_dut_to_register11_clr,
      i => sysgen_dut_to_register11_data_in,
      o => from_register9_data_out_x0
    );

  register04td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register11_ce,
      b => sysgen_dut_to_register11_en,
      dout => register04td_reg_ce
    );

  register04tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register04tv_reg_ce,
      clk => sysgen_dut_to_register10_clk,
      clr => sysgen_dut_to_register10_clr,
      i(0) => sysgen_dut_to_register10_data_in,
      o(0) => from_register10_data_out_x0
    );

  register04tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register10_ce,
      b => sysgen_dut_to_register10_en,
      dout => register04tv_reg_ce
    );

  register05rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register05rd_reg_ce,
      clk => sysgen_dut_to_register8_clk_x0,
      clr => sysgen_dut_to_register8_clr_x0,
      i => sysgen_dut_to_register8_data_in_x0,
      o => from_register10_data_out
    );

  register05rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register8_ce_x0,
      b => sysgen_dut_to_register8_en_x0,
      dout => register05rd_reg_ce
    );

  register05rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register05rv_reg_ce,
      clk => sysgen_dut_to_register10_clk_x0,
      clr => sysgen_dut_to_register10_clr_x0,
      i(0) => sysgen_dut_to_register10_data_in_x0,
      o(0) => from_register9_data_out
    );

  register05rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register10_ce_x0,
      b => sysgen_dut_to_register10_en_x0,
      dout => register05rv_reg_ce
    );

  register05td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register05td_reg_ce,
      clk => sysgen_dut_to_register13_clk,
      clr => sysgen_dut_to_register13_clr,
      i => sysgen_dut_to_register13_data_in,
      o => from_register11_data_out_x0
    );

  register05td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register13_ce,
      b => sysgen_dut_to_register13_en,
      dout => register05td_reg_ce
    );

  register05tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register05tv_reg_ce,
      clk => sysgen_dut_to_register12_clk,
      clr => sysgen_dut_to_register12_clr,
      i(0) => sysgen_dut_to_register12_data_in,
      o(0) => from_register12_data_out_x0
    );

  register05tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register12_ce,
      b => sysgen_dut_to_register12_en,
      dout => register05tv_reg_ce
    );

  register06rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register06rd_reg_ce,
      clk => sysgen_dut_to_register9_clk_x0,
      clr => sysgen_dut_to_register9_clr_x0,
      i => sysgen_dut_to_register9_data_in_x0,
      o => from_register11_data_out
    );

  register06rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register9_ce_x0,
      b => sysgen_dut_to_register9_en_x0,
      dout => register06rd_reg_ce
    );

  register06rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register06rv_reg_ce,
      clk => sysgen_dut_to_register11_clk_x0,
      clr => sysgen_dut_to_register11_clr_x0,
      i(0) => sysgen_dut_to_register11_data_in_x0,
      o(0) => from_register12_data_out
    );

  register06rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register11_ce_x0,
      b => sysgen_dut_to_register11_en_x0,
      dout => register06rv_reg_ce
    );

  register06td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register06td_reg_ce,
      clk => sysgen_dut_to_register15_clk,
      clr => sysgen_dut_to_register15_clr,
      i => sysgen_dut_to_register15_data_in,
      o => from_register13_data_out_x0
    );

  register06td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register15_ce,
      b => sysgen_dut_to_register15_en,
      dout => register06td_reg_ce
    );

  register06tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register06tv_reg_ce,
      clk => sysgen_dut_to_register14_clk,
      clr => sysgen_dut_to_register14_clr,
      i(0) => sysgen_dut_to_register14_data_in,
      o(0) => from_register14_data_out_x0
    );

  register06tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register14_ce,
      b => sysgen_dut_to_register14_en,
      dout => register06tv_reg_ce
    );

  register07rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register07rd_reg_ce,
      clk => sysgen_dut_to_register13_clk_x0,
      clr => sysgen_dut_to_register13_clr_x0,
      i => sysgen_dut_to_register13_data_in_x0,
      o => from_register13_data_out
    );

  register07rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register13_ce_x0,
      b => sysgen_dut_to_register13_en_x0,
      dout => register07rd_reg_ce
    );

  register07rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register07rv_reg_ce,
      clk => sysgen_dut_to_register12_clk_x0,
      clr => sysgen_dut_to_register12_clr_x0,
      i(0) => sysgen_dut_to_register12_data_in_x0,
      o(0) => from_register14_data_out
    );

  register07rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register12_ce_x0,
      b => sysgen_dut_to_register12_en_x0,
      dout => register07rv_reg_ce
    );

  register07td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register07td_reg_ce,
      clk => sysgen_dut_to_register17_clk,
      clr => sysgen_dut_to_register17_clr,
      i => sysgen_dut_to_register17_data_in,
      o => from_register17_data_out_x0
    );

  register07td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register17_ce,
      b => sysgen_dut_to_register17_en,
      dout => register07td_reg_ce
    );

  register07tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register07tv_reg_ce,
      clk => sysgen_dut_to_register16_clk,
      clr => sysgen_dut_to_register16_clr,
      i(0) => sysgen_dut_to_register16_data_in,
      o(0) => from_register18_data_out_x0
    );

  register07tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register16_ce,
      b => sysgen_dut_to_register16_en,
      dout => register07tv_reg_ce
    );

  register08rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register08rd_reg_ce,
      clk => sysgen_dut_to_register15_clk_x0,
      clr => sysgen_dut_to_register15_clr_x0,
      i => sysgen_dut_to_register15_data_in_x0,
      o => from_register15_data_out
    );

  register08rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register15_ce_x0,
      b => sysgen_dut_to_register15_en_x0,
      dout => register08rd_reg_ce
    );

  register08rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register08rv_reg_ce,
      clk => sysgen_dut_to_register14_clk_x0,
      clr => sysgen_dut_to_register14_clr_x0,
      i(0) => sysgen_dut_to_register14_data_in_x0,
      o(0) => from_register16_data_out
    );

  register08rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register14_ce_x0,
      b => sysgen_dut_to_register14_en_x0,
      dout => register08rv_reg_ce
    );

  register08td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register08td_reg_ce,
      clk => sysgen_dut_to_register26_clk,
      clr => sysgen_dut_to_register26_clr,
      i => sysgen_dut_to_register26_data_in,
      o => from_register20_data_out_x0
    );

  register08td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register26_ce,
      b => sysgen_dut_to_register26_en,
      dout => register08td_reg_ce
    );

  register08tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register08tv_reg_ce,
      clk => sysgen_dut_to_register25_clk,
      clr => sysgen_dut_to_register25_clr,
      i(0) => sysgen_dut_to_register25_data_in,
      o(0) => from_register21_data_out_x0
    );

  register08tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register25_ce,
      b => sysgen_dut_to_register25_en,
      dout => register08tv_reg_ce
    );

  register09rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register09rd_reg_ce,
      clk => sysgen_dut_to_register17_clk_x0,
      clr => sysgen_dut_to_register17_clr_x0,
      i => sysgen_dut_to_register17_data_in_x0,
      o => from_register17_data_out
    );

  register09rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register17_ce_x0,
      b => sysgen_dut_to_register17_en_x0,
      dout => register09rd_reg_ce
    );

  register09rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register09rv_reg_ce,
      clk => sysgen_dut_to_register16_clk_x0,
      clr => sysgen_dut_to_register16_clr_x0,
      i(0) => sysgen_dut_to_register16_data_in_x0,
      o(0) => from_register18_data_out
    );

  register09rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register16_ce_x0,
      b => sysgen_dut_to_register16_en_x0,
      dout => register09rv_reg_ce
    );

  register09td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register09td_reg_ce,
      clk => sysgen_dut_to_register22_clk,
      clr => sysgen_dut_to_register22_clr,
      i => sysgen_dut_to_register22_data_in,
      o => from_register22_data_out_x0
    );

  register09td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register22_ce,
      b => sysgen_dut_to_register22_en,
      dout => register09td_reg_ce
    );

  register09tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register09tv_reg_ce,
      clk => sysgen_dut_to_register21_clk,
      clr => sysgen_dut_to_register21_clr,
      i(0) => sysgen_dut_to_register21_data_in,
      o(0) => from_register23_data_out_x0
    );

  register09tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register21_ce,
      b => sysgen_dut_to_register21_en,
      dout => register09tv_reg_ce
    );

  register10rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register10rd_reg_ce,
      clk => sysgen_dut_to_register19_clk_x0,
      clr => sysgen_dut_to_register19_clr_x0,
      i => sysgen_dut_to_register19_data_in_x0,
      o => from_register19_data_out
    );

  register10rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register19_ce_x0,
      b => sysgen_dut_to_register19_en_x0,
      dout => register10rd_reg_ce
    );

  register10rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register10rv_reg_ce,
      clk => sysgen_dut_to_register18_clk_x0,
      clr => sysgen_dut_to_register18_clr_x0,
      i(0) => sysgen_dut_to_register18_data_in_x0,
      o(0) => from_register20_data_out
    );

  register10rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register18_ce_x0,
      b => sysgen_dut_to_register18_en_x0,
      dout => register10rv_reg_ce
    );

  register10td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register10td_reg_ce,
      clk => sysgen_dut_to_register24_clk,
      clr => sysgen_dut_to_register24_clr,
      i => sysgen_dut_to_register24_data_in,
      o => from_register24_data_out_x0
    );

  register10td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register24_ce,
      b => sysgen_dut_to_register24_en,
      dout => register10td_reg_ce
    );

  register10tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register10tv_reg_ce,
      clk => sysgen_dut_to_register23_clk,
      clr => sysgen_dut_to_register23_clr,
      i(0) => sysgen_dut_to_register23_data_in,
      o(0) => from_register25_data_out_x0
    );

  register10tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register23_ce,
      b => sysgen_dut_to_register23_en,
      dout => register10tv_reg_ce
    );

  register11rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register11rd_reg_ce,
      clk => sysgen_dut_to_register21_clk_x0,
      clr => sysgen_dut_to_register21_clr_x0,
      i => sysgen_dut_to_register21_data_in_x0,
      o => from_register21_data_out
    );

  register11rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register21_ce_x0,
      b => sysgen_dut_to_register21_en_x0,
      dout => register11rd_reg_ce
    );

  register11rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register11rv_reg_ce,
      clk => sysgen_dut_to_register20_clk_x0,
      clr => sysgen_dut_to_register20_clr_x0,
      i(0) => sysgen_dut_to_register20_data_in_x0,
      o(0) => from_register22_data_out
    );

  register11rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register20_ce_x0,
      b => sysgen_dut_to_register20_en_x0,
      dout => register11rv_reg_ce
    );

  register11td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register11td_reg_ce,
      clk => sysgen_dut_to_register28_clk,
      clr => sysgen_dut_to_register28_clr,
      i => sysgen_dut_to_register28_data_in,
      o => from_register26_data_out_x0
    );

  register11td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register28_ce,
      b => sysgen_dut_to_register28_en,
      dout => register11td_reg_ce
    );

  register11tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register11tv_reg_ce,
      clk => sysgen_dut_to_register27_clk,
      clr => sysgen_dut_to_register27_clr,
      i(0) => sysgen_dut_to_register27_data_in,
      o(0) => from_register27_data_out_x0
    );

  register11tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register27_ce,
      b => sysgen_dut_to_register27_en,
      dout => register11tv_reg_ce
    );

  register12rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register12rd_reg_ce,
      clk => sysgen_dut_to_register23_clk_x0,
      clr => sysgen_dut_to_register23_clr_x0,
      i => sysgen_dut_to_register23_data_in_x0,
      o => from_register23_data_out
    );

  register12rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register23_ce_x0,
      b => sysgen_dut_to_register23_en_x0,
      dout => register12rd_reg_ce
    );

  register12rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register12rv_reg_ce,
      clk => sysgen_dut_to_register22_clk_x0,
      clr => sysgen_dut_to_register22_clr_x0,
      i(0) => sysgen_dut_to_register22_data_in_x0,
      o(0) => from_register24_data_out
    );

  register12rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register22_ce_x0,
      b => sysgen_dut_to_register22_en_x0,
      dout => register12rv_reg_ce
    );

  register12td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register12td_reg_ce,
      clk => sysgen_dut_to_register30_clk,
      clr => sysgen_dut_to_register30_clr,
      i => sysgen_dut_to_register30_data_in,
      o => from_register28_data_out_x0
    );

  register12td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register30_ce,
      b => sysgen_dut_to_register30_en,
      dout => register12td_reg_ce
    );

  register12tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register12tv_reg_ce,
      clk => sysgen_dut_to_register29_clk,
      clr => sysgen_dut_to_register29_clr,
      i(0) => sysgen_dut_to_register29_data_in,
      o(0) => from_register29_data_out
    );

  register12tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register29_ce,
      b => sysgen_dut_to_register29_en,
      dout => register12tv_reg_ce
    );

  register13rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register13rd_reg_ce,
      clk => sysgen_dut_to_register25_clk_x0,
      clr => sysgen_dut_to_register25_clr_x0,
      i => sysgen_dut_to_register25_data_in_x0,
      o => from_register25_data_out
    );

  register13rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register25_ce_x0,
      b => sysgen_dut_to_register25_en_x0,
      dout => register13rd_reg_ce
    );

  register13rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register13rv_reg_ce,
      clk => sysgen_dut_to_register24_clk_x0,
      clr => sysgen_dut_to_register24_clr_x0,
      i(0) => sysgen_dut_to_register24_data_in_x0,
      o(0) => from_register26_data_out
    );

  register13rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register24_ce_x0,
      b => sysgen_dut_to_register24_en_x0,
      dout => register13rv_reg_ce
    );

  register13td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register13td_reg_ce,
      clk => sysgen_dut_to_register32_clk,
      clr => sysgen_dut_to_register32_clr,
      i => sysgen_dut_to_register32_data_in,
      o => from_register30_data_out
    );

  register13td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register32_ce,
      b => sysgen_dut_to_register32_en,
      dout => register13td_reg_ce
    );

  register13tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register13tv_reg_ce,
      clk => sysgen_dut_to_register31_clk,
      clr => sysgen_dut_to_register31_clr,
      i(0) => sysgen_dut_to_register31_data_in,
      o(0) => from_register31_data_out
    );

  register13tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register31_ce,
      b => sysgen_dut_to_register31_en,
      dout => register13tv_reg_ce
    );

  register14rd: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register14rd_reg_ce,
      clk => sysgen_dut_to_register27_clk_x0,
      clr => sysgen_dut_to_register27_clr_x0,
      i => sysgen_dut_to_register27_data_in_x0,
      o => from_register27_data_out
    );

  register14rd_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register27_ce_x0,
      b => sysgen_dut_to_register27_en_x0,
      dout => register14rd_reg_ce
    );

  register14rv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register14rv_reg_ce,
      clk => sysgen_dut_to_register26_clk_x0,
      clr => sysgen_dut_to_register26_clr_x0,
      i(0) => sysgen_dut_to_register26_data_in_x0,
      o(0) => from_register28_data_out
    );

  register14rv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register26_ce_x0,
      b => sysgen_dut_to_register26_en_x0,
      dout => register14rv_reg_ce
    );

  register14td: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => register14td_reg_ce,
      clk => sysgen_dut_to_register34_clk,
      clr => sysgen_dut_to_register34_clr,
      i => sysgen_dut_to_register34_data_in,
      o => from_register32_data_out
    );

  register14td_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register34_ce,
      b => sysgen_dut_to_register34_en,
      dout => register14td_reg_ce
    );

  register14tv: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => register14tv_reg_ce,
      clk => sysgen_dut_to_register33_clk,
      clr => sysgen_dut_to_register33_clr,
      i(0) => sysgen_dut_to_register33_data_in,
      o(0) => from_register33_data_out
    );

  register14tv_ce_and2_comp: entity work.xland2
    port map (
      a => sysgen_dut_to_register33_ce,
      b => sysgen_dut_to_register33_en,
      dout => register14tv_reg_ce
    );

  top_level_0: inout_logic_cw
    port map (
      ce => x,
      clk => x_x0,
      debug_in_1i => x_x1,
      debug_in_2i => x_x2,
      debug_in_3i => x_x3,
      debug_in_4i => x_x4,
      dma_host2board_busy => x_x5,
      dma_host2board_done => x_x6,
      from_register10_data_out => from_register10_data_out,
      from_register11_data_out => from_register11_data_out,
      from_register12_data_out(0) => from_register12_data_out,
      from_register13_data_out => from_register13_data_out,
      from_register14_data_out(0) => from_register14_data_out,
      from_register15_data_out => from_register15_data_out,
      from_register16_data_out(0) => from_register16_data_out,
      from_register17_data_out => from_register17_data_out,
      from_register18_data_out(0) => from_register18_data_out,
      from_register19_data_out => from_register19_data_out,
      from_register1_data_out(0) => from_register1_data_out,
      from_register20_data_out(0) => from_register20_data_out,
      from_register21_data_out => from_register21_data_out,
      from_register22_data_out(0) => from_register22_data_out,
      from_register23_data_out => from_register23_data_out,
      from_register24_data_out(0) => from_register24_data_out,
      from_register25_data_out => from_register25_data_out,
      from_register26_data_out(0) => from_register26_data_out,
      from_register27_data_out => from_register27_data_out,
      from_register28_data_out(0) => from_register28_data_out,
      from_register2_data_out(0) => from_register2_data_out,
      from_register3_data_out => from_register3_data_out,
      from_register4_data_out(0) => from_register4_data_out,
      from_register5_data_out => from_register5_data_out,
      from_register6_data_out(0) => from_register6_data_out,
      from_register7_data_out => from_register7_data_out,
      from_register8_data_out => from_register8_data_out,
      from_register9_data_out(0) => from_register9_data_out,
      reg01_td => x_x9,
      reg01_tv => x_x10,
      reg02_td => x_x13,
      reg02_tv => x_x14,
      reg03_td => x_x17,
      reg03_tv => x_x18,
      reg04_td => x_x21,
      reg04_tv => x_x22,
      reg05_td => x_x25,
      reg05_tv => x_x26,
      reg06_td => x_x29,
      reg06_tv => x_x30,
      reg07_td => x_x33,
      reg07_tv => x_x34,
      reg08_td => x_x37,
      reg08_tv => x_x38,
      reg09_td => x_x41,
      reg09_tv => x_x42,
      reg10_td => x_x45,
      reg10_tv => x_x46,
      reg11_td => x_x49,
      reg11_tv => x_x50,
      reg12_td => x_x53,
      reg12_tv => x_x54,
      reg13_td => x_x57,
      reg13_tv => x_x58,
      reg14_td => x_x61,
      reg14_tv => x_x62,
      to_register10_dout(0) => from_register10_data_out_x0,
      to_register11_dout => from_register9_data_out_x0,
      to_register12_dout(0) => from_register12_data_out_x0,
      to_register13_dout => from_register11_data_out_x0,
      to_register14_dout(0) => from_register14_data_out_x0,
      to_register15_dout => from_register13_data_out_x0,
      to_register16_dout(0) => from_register18_data_out_x0,
      to_register17_dout => from_register17_data_out_x0,
      to_register18_dout(0) => from_register16_data_out_x0,
      to_register19_dout(0) => from_register15_data_out_x0,
      to_register1_dout => from_register1_data_out_x0,
      to_register20_dout => from_register19_data_out_x0,
      to_register21_dout(0) => from_register23_data_out_x0,
      to_register22_dout => from_register22_data_out_x0,
      to_register23_dout(0) => from_register25_data_out_x0,
      to_register24_dout => from_register24_data_out_x0,
      to_register25_dout(0) => from_register21_data_out_x0,
      to_register26_dout => from_register20_data_out_x0,
      to_register27_dout(0) => from_register27_data_out_x0,
      to_register28_dout => from_register26_data_out_x0,
      to_register29_dout(0) => from_register29_data_out,
      to_register2_dout => from_register2_data_out_x0,
      to_register30_dout => from_register28_data_out_x0,
      to_register31_dout(0) => from_register31_data_out,
      to_register32_dout => from_register30_data_out,
      to_register33_dout(0) => from_register33_data_out,
      to_register34_dout => from_register32_data_out,
      to_register3_dout(0) => from_register4_data_out_x0,
      to_register4_dout(0) => from_register6_data_out_x0,
      to_register5_dout => from_register5_data_out_x0,
      to_register6_dout => from_register_data_out,
      to_register7_dout => from_register3_data_out_x0,
      to_register8_dout(0) => from_register8_data_out_x0,
      to_register9_dout => from_register7_data_out_x0,
    --  reg01_rd => x_x7,
    --  reg01_rv => x_x8,
      reg02_rd => x_x11,
      reg02_rv => x_x12,
      reg03_rd => x_x15,
      reg03_rv => x_x16,
      reg04_rd => x_x19,
      reg04_rv => x_x20,
      reg05_rd => x_x23,
      reg05_rv => x_x24,
      reg06_rd => x_x27,
      reg06_rv => x_x28,
      reg07_rd => x_x31,
      reg07_rv => x_x32,
      reg08_rd => x_x35,
      reg08_rv => x_x36,
      reg09_rd => x_x39,
      reg09_rv => x_x40,
      reg10_rd => x_x43,
      reg10_rv => x_x44,
      reg11_rd => x_x47,
      reg11_rv => x_x48,
      reg12_rd => x_x51,
      reg12_rv => x_x52,
      reg13_rd => x_x55,
      reg13_rv => x_x56,
      reg14_rd => x_x59,
      reg14_rv => x_x60,
      to_register10_ce => sysgen_dut_to_register10_ce,
      to_register10_clk => sysgen_dut_to_register10_clk,
      to_register10_clr => sysgen_dut_to_register10_clr,
      to_register10_data_in(0) => sysgen_dut_to_register10_data_in,
      to_register10_en(0) => sysgen_dut_to_register10_en,
      to_register11_ce => sysgen_dut_to_register11_ce,
      to_register11_clk => sysgen_dut_to_register11_clk,
      to_register11_clr => sysgen_dut_to_register11_clr,
      to_register11_data_in => sysgen_dut_to_register11_data_in,
      to_register11_en(0) => sysgen_dut_to_register11_en,
      to_register12_ce => sysgen_dut_to_register12_ce,
      to_register12_clk => sysgen_dut_to_register12_clk,
      to_register12_clr => sysgen_dut_to_register12_clr,
      to_register12_data_in(0) => sysgen_dut_to_register12_data_in,
      to_register12_en(0) => sysgen_dut_to_register12_en,
      to_register13_ce => sysgen_dut_to_register13_ce,
      to_register13_clk => sysgen_dut_to_register13_clk,
      to_register13_clr => sysgen_dut_to_register13_clr,
      to_register13_data_in => sysgen_dut_to_register13_data_in,
      to_register13_en(0) => sysgen_dut_to_register13_en,
      to_register14_ce => sysgen_dut_to_register14_ce,
      to_register14_clk => sysgen_dut_to_register14_clk,
      to_register14_clr => sysgen_dut_to_register14_clr,
      to_register14_data_in(0) => sysgen_dut_to_register14_data_in,
      to_register14_en(0) => sysgen_dut_to_register14_en,
      to_register15_ce => sysgen_dut_to_register15_ce,
      to_register15_clk => sysgen_dut_to_register15_clk,
      to_register15_clr => sysgen_dut_to_register15_clr,
      to_register15_data_in => sysgen_dut_to_register15_data_in,
      to_register15_en(0) => sysgen_dut_to_register15_en,
      to_register16_ce => sysgen_dut_to_register16_ce,
      to_register16_clk => sysgen_dut_to_register16_clk,
      to_register16_clr => sysgen_dut_to_register16_clr,
      to_register16_data_in(0) => sysgen_dut_to_register16_data_in,
      to_register16_en(0) => sysgen_dut_to_register16_en,
      to_register17_ce => sysgen_dut_to_register17_ce,
      to_register17_clk => sysgen_dut_to_register17_clk,
      to_register17_clr => sysgen_dut_to_register17_clr,
      to_register17_data_in => sysgen_dut_to_register17_data_in,
      to_register17_en(0) => sysgen_dut_to_register17_en,
      to_register18_ce => sysgen_dut_to_register18_ce,
      to_register18_clk => sysgen_dut_to_register18_clk,
      to_register18_clr => sysgen_dut_to_register18_clr,
      to_register18_data_in(0) => sysgen_dut_to_register18_data_in,
      to_register18_en(0) => sysgen_dut_to_register18_en,
      to_register19_ce => sysgen_dut_to_register19_ce,
      to_register19_clk => sysgen_dut_to_register19_clk,
      to_register19_clr => sysgen_dut_to_register19_clr,
      to_register19_data_in(0) => sysgen_dut_to_register19_data_in,
      to_register19_en(0) => sysgen_dut_to_register19_en,
      to_register1_ce => sysgen_dut_to_register1_ce,
      to_register1_clk => sysgen_dut_to_register1_clk,
      to_register1_clr => sysgen_dut_to_register1_clr,
      to_register1_data_in => sysgen_dut_to_register1_data_in,
      to_register1_en(0) => sysgen_dut_to_register1_en,
      to_register20_ce => sysgen_dut_to_register20_ce,
      to_register20_clk => sysgen_dut_to_register20_clk,
      to_register20_clr => sysgen_dut_to_register20_clr,
      to_register20_data_in => sysgen_dut_to_register20_data_in,
      to_register20_en(0) => sysgen_dut_to_register20_en,
      to_register21_ce => sysgen_dut_to_register21_ce,
      to_register21_clk => sysgen_dut_to_register21_clk,
      to_register21_clr => sysgen_dut_to_register21_clr,
      to_register21_data_in(0) => sysgen_dut_to_register21_data_in,
      to_register21_en(0) => sysgen_dut_to_register21_en,
      to_register22_ce => sysgen_dut_to_register22_ce,
      to_register22_clk => sysgen_dut_to_register22_clk,
      to_register22_clr => sysgen_dut_to_register22_clr,
      to_register22_data_in => sysgen_dut_to_register22_data_in,
      to_register22_en(0) => sysgen_dut_to_register22_en,
      to_register23_ce => sysgen_dut_to_register23_ce,
      to_register23_clk => sysgen_dut_to_register23_clk,
      to_register23_clr => sysgen_dut_to_register23_clr,
      to_register23_data_in(0) => sysgen_dut_to_register23_data_in,
      to_register23_en(0) => sysgen_dut_to_register23_en,
      to_register24_ce => sysgen_dut_to_register24_ce,
      to_register24_clk => sysgen_dut_to_register24_clk,
      to_register24_clr => sysgen_dut_to_register24_clr,
      to_register24_data_in => sysgen_dut_to_register24_data_in,
      to_register24_en(0) => sysgen_dut_to_register24_en,
      to_register25_ce => sysgen_dut_to_register25_ce,
      to_register25_clk => sysgen_dut_to_register25_clk,
      to_register25_clr => sysgen_dut_to_register25_clr,
      to_register25_data_in(0) => sysgen_dut_to_register25_data_in,
      to_register25_en(0) => sysgen_dut_to_register25_en,
      to_register26_ce => sysgen_dut_to_register26_ce,
      to_register26_clk => sysgen_dut_to_register26_clk,
      to_register26_clr => sysgen_dut_to_register26_clr,
      to_register26_data_in => sysgen_dut_to_register26_data_in,
      to_register26_en(0) => sysgen_dut_to_register26_en,
      to_register27_ce => sysgen_dut_to_register27_ce,
      to_register27_clk => sysgen_dut_to_register27_clk,
      to_register27_clr => sysgen_dut_to_register27_clr,
      to_register27_data_in(0) => sysgen_dut_to_register27_data_in,
      to_register27_en(0) => sysgen_dut_to_register27_en,
      to_register28_ce => sysgen_dut_to_register28_ce,
      to_register28_clk => sysgen_dut_to_register28_clk,
      to_register28_clr => sysgen_dut_to_register28_clr,
      to_register28_data_in => sysgen_dut_to_register28_data_in,
      to_register28_en(0) => sysgen_dut_to_register28_en,
      to_register29_ce => sysgen_dut_to_register29_ce,
      to_register29_clk => sysgen_dut_to_register29_clk,
      to_register29_clr => sysgen_dut_to_register29_clr,
      to_register29_data_in(0) => sysgen_dut_to_register29_data_in,
      to_register29_en(0) => sysgen_dut_to_register29_en,
      to_register2_ce => sysgen_dut_to_register2_ce,
      to_register2_clk => sysgen_dut_to_register2_clk,
      to_register2_clr => sysgen_dut_to_register2_clr,
      to_register2_data_in => sysgen_dut_to_register2_data_in,
      to_register2_en(0) => sysgen_dut_to_register2_en,
      to_register30_ce => sysgen_dut_to_register30_ce,
      to_register30_clk => sysgen_dut_to_register30_clk,
      to_register30_clr => sysgen_dut_to_register30_clr,
      to_register30_data_in => sysgen_dut_to_register30_data_in,
      to_register30_en(0) => sysgen_dut_to_register30_en,
      to_register31_ce => sysgen_dut_to_register31_ce,
      to_register31_clk => sysgen_dut_to_register31_clk,
      to_register31_clr => sysgen_dut_to_register31_clr,
      to_register31_data_in(0) => sysgen_dut_to_register31_data_in,
      to_register31_en(0) => sysgen_dut_to_register31_en,
      to_register32_ce => sysgen_dut_to_register32_ce,
      to_register32_clk => sysgen_dut_to_register32_clk,
      to_register32_clr => sysgen_dut_to_register32_clr,
      to_register32_data_in => sysgen_dut_to_register32_data_in,
      to_register32_en(0) => sysgen_dut_to_register32_en,
      to_register33_ce => sysgen_dut_to_register33_ce,
      to_register33_clk => sysgen_dut_to_register33_clk,
      to_register33_clr => sysgen_dut_to_register33_clr,
      to_register33_data_in(0) => sysgen_dut_to_register33_data_in,
      to_register33_en(0) => sysgen_dut_to_register33_en,
      to_register34_ce => sysgen_dut_to_register34_ce,
      to_register34_clk => sysgen_dut_to_register34_clk,
      to_register34_clr => sysgen_dut_to_register34_clr,
      to_register34_data_in => sysgen_dut_to_register34_data_in,
      to_register34_en(0) => sysgen_dut_to_register34_en,
      to_register3_ce => sysgen_dut_to_register3_ce,
      to_register3_clk => sysgen_dut_to_register3_clk,
      to_register3_clr => sysgen_dut_to_register3_clr,
      to_register3_data_in(0) => sysgen_dut_to_register3_data_in,
      to_register3_en(0) => sysgen_dut_to_register3_en,
      to_register4_ce => sysgen_dut_to_register4_ce,
      to_register4_clk => sysgen_dut_to_register4_clk,
      to_register4_clr => sysgen_dut_to_register4_clr,
      to_register4_data_in(0) => sysgen_dut_to_register4_data_in,
      to_register4_en(0) => sysgen_dut_to_register4_en,
      to_register5_ce => sysgen_dut_to_register5_ce,
      to_register5_clk => sysgen_dut_to_register5_clk,
      to_register5_clr => sysgen_dut_to_register5_clr,
      to_register5_data_in => sysgen_dut_to_register5_data_in,
      to_register5_en(0) => sysgen_dut_to_register5_en,
      to_register6_ce => sysgen_dut_to_register6_ce,
      to_register6_clk => sysgen_dut_to_register6_clk,
      to_register6_clr => sysgen_dut_to_register6_clr,
      to_register6_data_in => sysgen_dut_to_register6_data_in,
      to_register6_en(0) => sysgen_dut_to_register6_en,
      to_register7_ce => sysgen_dut_to_register7_ce,
      to_register7_clk => sysgen_dut_to_register7_clk,
      to_register7_clr => sysgen_dut_to_register7_clr,
      to_register7_data_in => sysgen_dut_to_register7_data_in,
      to_register7_en(0) => sysgen_dut_to_register7_en,
      to_register8_ce => sysgen_dut_to_register8_ce,
      to_register8_clk => sysgen_dut_to_register8_clk,
      to_register8_clr => sysgen_dut_to_register8_clr,
      to_register8_data_in(0) => sysgen_dut_to_register8_data_in,
      to_register8_en(0) => sysgen_dut_to_register8_en,
      to_register9_ce => sysgen_dut_to_register9_ce,
      to_register9_clk => sysgen_dut_to_register9_clk,
      to_register9_clr => sysgen_dut_to_register9_clr,
      to_register9_data_in => sysgen_dut_to_register9_data_in,
      to_register9_en(0) => sysgen_dut_to_register9_en
    );

  top_level_1: user_logic_cw
    port map (
      bram_rd_dout => x_x64,
      ce => x_x68,
      clk => x_x69,
      fifo_rd_count => x_x70,
      fifo_rd_dout => x_x71,
      fifo_rd_empty => x_x72,
      fifo_rd_pempty => x_x74,
      fifo_rd_valid => x_x75,
      fifo_wr_count => x_x76,
      fifo_wr_full => x_x79,
      fifo_wr_pfull => x_x80,
      from_register10_data_out(0) => from_register10_data_out_x0,
      from_register11_data_out => from_register11_data_out_x0,
      from_register12_data_out(0) => from_register12_data_out_x0,
      from_register13_data_out => from_register13_data_out_x0,
      from_register14_data_out(0) => from_register14_data_out_x0,
      from_register15_data_out(0) => from_register15_data_out_x0,
      from_register16_data_out(0) => from_register16_data_out_x0,
      from_register17_data_out => from_register17_data_out_x0,
      from_register18_data_out(0) => from_register18_data_out_x0,
      from_register19_data_out => from_register19_data_out_x0,
      from_register1_data_out => from_register1_data_out_x0,
      from_register20_data_out => from_register20_data_out_x0,
      from_register21_data_out(0) => from_register21_data_out_x0,
      from_register22_data_out => from_register22_data_out_x0,
      from_register23_data_out(0) => from_register23_data_out_x0,
      from_register24_data_out => from_register24_data_out_x0,
      from_register25_data_out(0) => from_register25_data_out_x0,
      from_register26_data_out => from_register26_data_out_x0,
      from_register27_data_out(0) => from_register27_data_out_x0,
      from_register28_data_out => from_register28_data_out_x0,
      from_register29_data_out(0) => from_register29_data_out,
      from_register2_data_out => from_register2_data_out_x0,
      from_register30_data_out => from_register30_data_out,
      from_register31_data_out(0) => from_register31_data_out,
      from_register32_data_out => from_register32_data_out,
      from_register33_data_out(0) => from_register33_data_out,
      from_register3_data_out => from_register3_data_out_x0,
      from_register4_data_out(0) => from_register4_data_out_x0,
      from_register5_data_out => from_register5_data_out_x0,
      from_register6_data_out(0) => from_register6_data_out_x0,
      from_register7_data_out => from_register7_data_out_x0,
      from_register8_data_out(0) => from_register8_data_out_x0,
      from_register9_data_out => from_register9_data_out_x0,
      from_register_data_out => from_register_data_out,
      rst_i => x_x81,
      to_register10_dout(0) => from_register9_data_out,
      to_register11_dout(0) => from_register12_data_out,
      to_register12_dout(0) => from_register14_data_out,
      to_register13_dout => from_register13_data_out,
      to_register14_dout(0) => from_register16_data_out,
      to_register15_dout => from_register15_data_out,
      to_register16_dout(0) => from_register18_data_out,
      to_register17_dout => from_register17_data_out,
      to_register18_dout(0) => from_register20_data_out,
      to_register19_dout => from_register19_data_out,
      to_register1_dout(0) => from_register1_data_out,
      to_register20_dout(0) => from_register22_data_out,
      to_register21_dout => from_register21_data_out,
      to_register22_dout(0) => from_register24_data_out,
      to_register23_dout => from_register23_data_out,
      to_register24_dout(0) => from_register26_data_out,
      to_register25_dout => from_register25_data_out,
      to_register26_dout(0) => from_register28_data_out,
      to_register27_dout => from_register27_data_out,
      to_register2_dout => from_register5_data_out,
      to_register3_dout => from_register7_data_out,
      to_register4_dout(0) => from_register2_data_out,
      to_register5_dout(0) => from_register6_data_out,
      to_register6_dout => from_register8_data_out,
      to_register7_dout(0) => from_register4_data_out,
      to_register8_dout => from_register10_data_out,
      to_register9_dout => from_register11_data_out,
      to_register_dout => from_register3_data_out,
      bram_rd_addr => x_x63,
      bram_wr_addr => x_x65,
      bram_wr_din => x_x66,
      bram_wr_en => x_x67,
      fifo_rd_en => x_x73,
      fifo_wr_din => x_x77,
      fifo_wr_en => x_x78,
      rst_o => x_x82,
      to_register10_ce => sysgen_dut_to_register10_ce_x0,
      to_register10_clk => sysgen_dut_to_register10_clk_x0,
      to_register10_clr => sysgen_dut_to_register10_clr_x0,
      to_register10_data_in(0) => sysgen_dut_to_register10_data_in_x0,
      to_register10_en(0) => sysgen_dut_to_register10_en_x0,
      to_register11_ce => sysgen_dut_to_register11_ce_x0,
      to_register11_clk => sysgen_dut_to_register11_clk_x0,
      to_register11_clr => sysgen_dut_to_register11_clr_x0,
      to_register11_data_in(0) => sysgen_dut_to_register11_data_in_x0,
      to_register11_en(0) => sysgen_dut_to_register11_en_x0,
      to_register12_ce => sysgen_dut_to_register12_ce_x0,
      to_register12_clk => sysgen_dut_to_register12_clk_x0,
      to_register12_clr => sysgen_dut_to_register12_clr_x0,
      to_register12_data_in(0) => sysgen_dut_to_register12_data_in_x0,
      to_register12_en(0) => sysgen_dut_to_register12_en_x0,
      to_register13_ce => sysgen_dut_to_register13_ce_x0,
      to_register13_clk => sysgen_dut_to_register13_clk_x0,
      to_register13_clr => sysgen_dut_to_register13_clr_x0,
      to_register13_data_in => sysgen_dut_to_register13_data_in_x0,
      to_register13_en(0) => sysgen_dut_to_register13_en_x0,
      to_register14_ce => sysgen_dut_to_register14_ce_x0,
      to_register14_clk => sysgen_dut_to_register14_clk_x0,
      to_register14_clr => sysgen_dut_to_register14_clr_x0,
      to_register14_data_in(0) => sysgen_dut_to_register14_data_in_x0,
      to_register14_en(0) => sysgen_dut_to_register14_en_x0,
      to_register15_ce => sysgen_dut_to_register15_ce_x0,
      to_register15_clk => sysgen_dut_to_register15_clk_x0,
      to_register15_clr => sysgen_dut_to_register15_clr_x0,
      to_register15_data_in => sysgen_dut_to_register15_data_in_x0,
      to_register15_en(0) => sysgen_dut_to_register15_en_x0,
      to_register16_ce => sysgen_dut_to_register16_ce_x0,
      to_register16_clk => sysgen_dut_to_register16_clk_x0,
      to_register16_clr => sysgen_dut_to_register16_clr_x0,
      to_register16_data_in(0) => sysgen_dut_to_register16_data_in_x0,
      to_register16_en(0) => sysgen_dut_to_register16_en_x0,
      to_register17_ce => sysgen_dut_to_register17_ce_x0,
      to_register17_clk => sysgen_dut_to_register17_clk_x0,
      to_register17_clr => sysgen_dut_to_register17_clr_x0,
      to_register17_data_in => sysgen_dut_to_register17_data_in_x0,
      to_register17_en(0) => sysgen_dut_to_register17_en_x0,
      to_register18_ce => sysgen_dut_to_register18_ce_x0,
      to_register18_clk => sysgen_dut_to_register18_clk_x0,
      to_register18_clr => sysgen_dut_to_register18_clr_x0,
      to_register18_data_in(0) => sysgen_dut_to_register18_data_in_x0,
      to_register18_en(0) => sysgen_dut_to_register18_en_x0,
      to_register19_ce => sysgen_dut_to_register19_ce_x0,
      to_register19_clk => sysgen_dut_to_register19_clk_x0,
      to_register19_clr => sysgen_dut_to_register19_clr_x0,
      to_register19_data_in => sysgen_dut_to_register19_data_in_x0,
      to_register19_en(0) => sysgen_dut_to_register19_en_x0,
      to_register1_ce => sysgen_dut_to_register1_ce_x0,
      to_register1_clk => sysgen_dut_to_register1_clk_x0,
      to_register1_clr => sysgen_dut_to_register1_clr_x0,
      to_register1_data_in(0) => sysgen_dut_to_register1_data_in_x0,
      to_register1_en(0) => sysgen_dut_to_register1_en_x0,
      to_register20_ce => sysgen_dut_to_register20_ce_x0,
      to_register20_clk => sysgen_dut_to_register20_clk_x0,
      to_register20_clr => sysgen_dut_to_register20_clr_x0,
      to_register20_data_in(0) => sysgen_dut_to_register20_data_in_x0,
      to_register20_en(0) => sysgen_dut_to_register20_en_x0,
      to_register21_ce => sysgen_dut_to_register21_ce_x0,
      to_register21_clk => sysgen_dut_to_register21_clk_x0,
      to_register21_clr => sysgen_dut_to_register21_clr_x0,
      to_register21_data_in => sysgen_dut_to_register21_data_in_x0,
      to_register21_en(0) => sysgen_dut_to_register21_en_x0,
      to_register22_ce => sysgen_dut_to_register22_ce_x0,
      to_register22_clk => sysgen_dut_to_register22_clk_x0,
      to_register22_clr => sysgen_dut_to_register22_clr_x0,
      to_register22_data_in(0) => sysgen_dut_to_register22_data_in_x0,
      to_register22_en(0) => sysgen_dut_to_register22_en_x0,
      to_register23_ce => sysgen_dut_to_register23_ce_x0,
      to_register23_clk => sysgen_dut_to_register23_clk_x0,
      to_register23_clr => sysgen_dut_to_register23_clr_x0,
      to_register23_data_in => sysgen_dut_to_register23_data_in_x0,
      to_register23_en(0) => sysgen_dut_to_register23_en_x0,
      to_register24_ce => sysgen_dut_to_register24_ce_x0,
      to_register24_clk => sysgen_dut_to_register24_clk_x0,
      to_register24_clr => sysgen_dut_to_register24_clr_x0,
      to_register24_data_in(0) => sysgen_dut_to_register24_data_in_x0,
      to_register24_en(0) => sysgen_dut_to_register24_en_x0,
      to_register25_ce => sysgen_dut_to_register25_ce_x0,
      to_register25_clk => sysgen_dut_to_register25_clk_x0,
      to_register25_clr => sysgen_dut_to_register25_clr_x0,
      to_register25_data_in => sysgen_dut_to_register25_data_in_x0,
      to_register25_en(0) => sysgen_dut_to_register25_en_x0,
      to_register26_ce => sysgen_dut_to_register26_ce_x0,
      to_register26_clk => sysgen_dut_to_register26_clk_x0,
      to_register26_clr => sysgen_dut_to_register26_clr_x0,
      to_register26_data_in(0) => sysgen_dut_to_register26_data_in_x0,
      to_register26_en(0) => sysgen_dut_to_register26_en_x0,
      to_register27_ce => sysgen_dut_to_register27_ce_x0,
      to_register27_clk => sysgen_dut_to_register27_clk_x0,
      to_register27_clr => sysgen_dut_to_register27_clr_x0,
      to_register27_data_in => sysgen_dut_to_register27_data_in_x0,
      to_register27_en(0) => sysgen_dut_to_register27_en_x0,
      to_register2_ce => sysgen_dut_to_register2_ce_x0,
      to_register2_clk => sysgen_dut_to_register2_clk_x0,
      to_register2_clr => sysgen_dut_to_register2_clr_x0,
      to_register2_data_in => sysgen_dut_to_register2_data_in_x0,
      to_register2_en(0) => sysgen_dut_to_register2_en_x0,
      to_register3_ce => sysgen_dut_to_register3_ce_x0,
      to_register3_clk => sysgen_dut_to_register3_clk_x0,
      to_register3_clr => sysgen_dut_to_register3_clr_x0,
      to_register3_data_in => sysgen_dut_to_register3_data_in_x0,
      to_register3_en(0) => sysgen_dut_to_register3_en_x0,
      to_register4_ce => sysgen_dut_to_register4_ce_x0,
      to_register4_clk => sysgen_dut_to_register4_clk_x0,
      to_register4_clr => sysgen_dut_to_register4_clr_x0,
      to_register4_data_in(0) => sysgen_dut_to_register4_data_in_x0,
      to_register4_en(0) => sysgen_dut_to_register4_en_x0,
      to_register5_ce => sysgen_dut_to_register5_ce_x0,
      to_register5_clk => sysgen_dut_to_register5_clk_x0,
      to_register5_clr => sysgen_dut_to_register5_clr_x0,
      to_register5_data_in(0) => sysgen_dut_to_register5_data_in_x0,
      to_register5_en(0) => sysgen_dut_to_register5_en_x0,
      to_register6_ce => sysgen_dut_to_register6_ce_x0,
      to_register6_clk => sysgen_dut_to_register6_clk_x0,
      to_register6_clr => sysgen_dut_to_register6_clr_x0,
      to_register6_data_in => sysgen_dut_to_register6_data_in_x0,
      to_register6_en(0) => sysgen_dut_to_register6_en_x0,
      to_register7_ce => sysgen_dut_to_register7_ce_x0,
      to_register7_clk => sysgen_dut_to_register7_clk_x0,
      to_register7_clr => sysgen_dut_to_register7_clr_x0,
      to_register7_data_in(0) => sysgen_dut_to_register7_data_in_x0,
      to_register7_en(0) => sysgen_dut_to_register7_en_x0,
      to_register8_ce => sysgen_dut_to_register8_ce_x0,
      to_register8_clk => sysgen_dut_to_register8_clk_x0,
      to_register8_clr => sysgen_dut_to_register8_clr_x0,
      to_register8_data_in => sysgen_dut_to_register8_data_in_x0,
      to_register8_en(0) => sysgen_dut_to_register8_en_x0,
      to_register9_ce => sysgen_dut_to_register9_ce_x0,
      to_register9_clk => sysgen_dut_to_register9_clk_x0,
      to_register9_clr => sysgen_dut_to_register9_clr_x0,
      to_register9_data_in => sysgen_dut_to_register9_data_in_x0,
      to_register9_en(0) => sysgen_dut_to_register9_en_x0,
      to_register_ce => sysgen_dut_to_register_ce,
      to_register_clk => sysgen_dut_to_register_clk,
      to_register_clr => sysgen_dut_to_register_clr,
      to_register_data_in => sysgen_dut_to_register_data_in,
      to_register_en(0) => sysgen_dut_to_register_en 
    --  user_int_1o => x_x83,
     -- user_int_2o => x_x84,
    --  user_int_3o => x_x85
    );

end structural;
