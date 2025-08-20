# 4-BIT-RIPPLE-COUNTER

**AIM:**

To implement  4 Bit Ripple Counter using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:**

Quartus prime

**THEORY**

**4 Bit Ripple Counter**

A binary ripple counter consists of a series connection of complementing flip-flops (T or JK type), with the output of each flip-flop connected to the Clock Pulse input of the next higher-order flip-flop. The flip-flop holding the least significant bit receives the incoming count pulses. The diagram of a 4-bit binary ripple counter is shown in Fig. below.

![image](https://github.com/naavaneetha/4-BIT-RIPPLE-COUNTER/assets/154305477/cb4b74d4-31ab-4359-95d0-d22e67daba13)

In timing diagram Q0 is changing as soon as the negative edge of clock pulse is encountered, Q1 is changing when negative edge of Q0 is encountered(because Q0 is like clock pulse for second flip flop) and so on.

![image](https://github.com/naavaneetha/4-BIT-RIPPLE-COUNTER/assets/154305477/a573a7d6-014e-4e54-93e6-e2ac9530960b)

![image](https://github.com/naavaneetha/4-BIT-RIPPLE-COUNTER/assets/154305477/85e1958a-2fc1-49bb-9a9f-d58ccbf3663c)

**Procedure**

/* write all the steps invloved */

**PROGRAM**

/* Program for 4 Bit Ripple Counter and verify its truth table in quartus using Verilog programming.

 module RippleCounter(
   
   input wire clk,  // Clock input
   
   output reg [3:0] count // 4-bit counter output

);


// Counter logic

always @(posedge clk) begin

   if (count == 4'b1111) // Reset when count reaches 15
   
       count <= 4'b0000;

  else
      
       count <= count + 1; // Increment count

end

endmodule

// Testbench

module RippleCounter_tb;

// Inputs

reg clk;

// Outputs

wire [3:0] count;

// Instantiate the counter

RippleCounter uut(

   .clk(clk),
  
   .count(count)

);

// Clock generation

initial begin
   
   clk = 0;
   
   forever #5 clk = ~clk; // Toggle clock every 5 time units

end

// Stimulus

initial begin
   
   // Wait for a few clock cycles
  
   #10;   
   
   // Display header
   
   $display("Time | Count");
   
   $display("-----------------");

   // Functional table testing
   
   // Increment count 16 times and display the count
   
   repeat (16) begin
       
       #5; // Wait for one clock cycle
       
       $display("%4d | %b", $time, count);
   
   end
  
   // End simulation
  
   $finish;

end

endmodule

**RTL LOGIC FOR 4 Bit Ripple Counter**

![image](https://github.com/user-attachments/assets/3ff3e9db-a3a5-4525-8b3d-2a2d1a892ca5)


**TIMING DIGRAMS FOR 4 Bit Ripple Counter**

![image](https://github.com/user-attachments/assets/d8baa8eb-8c01-4dbf-8818-3529e552678a)


**RESULT**

 Thus 4-BIT-RIPPLE-COUNTER is verified successfully.
