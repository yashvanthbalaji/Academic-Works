# BOOLEAN_FUNCTION_MINIMIZATION

**AIM:**

To implement the given logic function verify its operation in Quartus using Verilog programming.

F1= A’B’C’D’+AC’D’+B’CD’+A’BCD+BC’D 

F2=xy’z+x’y’z+w’xy+wx’y+wxy

**Equipment Required:**

Hardware – PCs, Cyclone II , USB flasher

**Software – Quartus prime**

**Theory**

**Logic Diagram**

**Procedure**

1.	Type the program in Quartus software.

2.	Compile and run the program.

3.	Generate the RTL schematic and save the logic diagram.

4.	Create nodes for inputs and outputs to generate the timing diagram.

5.	For different input combinations generate the timing diagram.


**Program:**
/* Program to implement the given logic function and to verify its operations in quartus using Verilog programming.
~~~
module Boolean_min(a,b,c,d,w,x,y,z,f1,f2);
input a,b,c,d,w,x,y,z;
output f1,f2;
wire adash,bdash,cdash,ddash,ydash,p,q,r,s,t,u;
not(adash,a);
not(bdash,b);
not(cdash,c);
not(ddash,d);
not(ydash,y);
and(p,bdash,ddash);
and(q,adash,b,d);
and(r,a,b,cdash);
or(f1,p,q,r);
and g1(s,ydash,z);
and g2(t,x,y);
and g3(u,w,z);
or g4(f2,s,t,u);
endmodule


Developed by: BALAJI.A [212223040023]

~~~

## RTL realization output

![321858145-5e88c768-1359-4de1-9c27-30b36608cacf](https://github.com/04Varsha/BOOLEAN_FUNCTION_MINIMIZATION/assets/149035374/a86b8a88-9cfd-46f7-a430-98227cff9fc4)

## Truth table
![321858182-f2ecbac4-57f6-4136-b61b-d6a708096c3c](https://github.com/04Varsha/BOOLEAN_FUNCTION_MINIMIZATION/assets/149035374/52e5be68-d7b5-4f48-ad95-1b8848c327ec)

## Timing Diagram

![321858226-37003697-22ae-4e2c-91ba-23a298de0604](https://github.com/04Varsha/BOOLEAN_FUNCTION_MINIMIZATION/assets/149035374/82dea792-3035-42b6-af5c-134c0e74c8b2)

## Result:

Thus the given logic functions are implemented using and their operations are verified using Verilog programming.

