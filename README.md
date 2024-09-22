# Proposal Title: 8-Bit Vedic Multiplier with Signed and Unsigned Capability

**Introduction**
Multiplication is a key operation in many digital systems, particularly in signal processing and arithmetic computations. Vedic multipliers, based on ancient Indian mathematics, provide an efficient solution by minimizing the number of computational steps. This leads to optimized performance in terms of speed, area, and power consumption. In modern processors, the ability to handle both signed and unsigned binary numbers further enhances the flexibility and utility of the multiplier

## Overview
This project implements an 8-Bit Vedic Multiplier capable of performing both signed and unsigned binary multiplications. The design leverages Vedic mathematics, known for its efficiency and reduced computational steps, to achieve an optimized balance of speed, area, and power consumption. The use of Vedic algorithms minimizes the number of logic gates required, resulting in faster operations and lower power dissipation.

The design can be easily scaled to accommodate different bit-widths, such as 4-bit, 8-bit, or 16-bit multipliers, by making minor modifications. This flexibility makes the multiplier highly suitable for digital systems requiring variable precision in arithmetic operations.

**Features**
- Signed and Unsigned Multiplication: The design supports both signed and unsigned binary multiplication, controlled by a single input signal (Control).
- High Speed: The Vedic multiplication algorithm uses a vertical and crosswise approach to reduce computational steps, resulting in faster operations compared to conventional methods.
- Area Efficient: Fewer logic gates and the use of carry look-ahead adders (CLA) minimize the overall area, making it suitable for silicon implementation.
- Low Power Consumption: Reduced logic gate usage and fewer switching activities lead to lower dynamic power consumption.
- Scalability: The design can be easily extended to higher bit-widths, such as 16-bit or 32-bit, for more complex applications.

## Estimated Specifications
**Design Spec Estimation**
| Specifications                | Number     |
| :---------------------------- | :--------: |
| Inputs                        | 19         |
| Outputs                       | 16         |
| Estimate Core Area (mm^2)     | 0.03533    |

==================================================

**Inputs and Outputs**
- Inputs:
  - A[7:0]: 8-bit multiplicand
  - B[7:0]: 8-bit multiplier
  - Control: 1-bit signal to select signed (1) or unsigned (0) multiplication
  - clk: Clock Signal
  - rst: Non-inverting Reset
- Output:
  - P[15:0]: 16-bit product of the multiplication
 
 ## Expected Outcome

1. **To design an 8-bit vedic multiplier with signed and unsigned capability**
   
Outcome: To successfully design the “8-Bit Vedic Multiplier with Signed and Unsigned Capability.” This includes a well-documented and comprehensive design of the circuit, featuring a detailed schematic that outlines the logic and arithmetic operations. Thorough simulation and verification should confirm the circuit's accuracy and functionality. The design should carry out the correct multiplication operation based on the Control signal given, which is “1” for signed multiplication and “0” for unsigned multiplication. The output result from the multiplier should be the correct expected value based on the value input of multiplicand and multiplier given. 

2. **To fabricate an 8-bit vedic multiplier with signed and unsigned capability**
   
Outcome: To successfully fabricate the “8-Bit Vedic Multiplier with Signed and Unsigned Capability” circuit on a silicon wafer using advanced semiconductor fabrication processes. This involves the precise realization of the designed layout on the IC chip. The area of the fabricated chip should be small as this is one of the objectives in designing the multiplier using Vedic algorithm. 

3. **To test the functionality of an 8-bit vedic multiplier with signed and unsigned capability**

Outcome: To successfully conduct test on the fabricated  8-bit vedic multiplier with signed and unsigned capability circuit. Thorough verification and testing should be conducted to ensure functionality. The test should include the functionality test, speed test, accuracy and power consumption test to ensure that it meet the desire specifications. The physical test result should be cross-checked with the initial objective and simulation results to match the required result. Successfully testing and validation of the circuit will establish its readiness for integration into a larger arithmetic processor, enabling efficient multiplication operation.

## Block Diagram
<p align="center">
<img width="70%" alt="Block_Diagram_Top_Level.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_Top_Level.jpg">
</p>

<p align="center">
<img width="60%" alt="Block_Diagram_VMSU_TOP.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_VMSU_Top.jpg">
</p>
<br/>

<p align="center">
<img width="70%" alt="Block_Diagram_VMSU_Pipelined.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_VMSU_Pipelined.jpg">
</p>

<p align="center">
<img width="70%" alt="Block_Diagram_VMSU.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_VMSU.jpg"> 
</p>
<br/>
<br/>

<p align="center">
<img width="70%" alt="Block_Diagram_8bit_vedic_multiplier.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_8bit_vedic_multiplier.jpg">
</p>
<br/>

<p align="center">
<img width="70%" alt="Block_Diagram_4bit_vedic_multiplier.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_4bit_vedic_multiplier.jpg">
</p>
<br/>

<p align="center">
<img width="70%" alt="Block_Diagram_2bit_vedic_multiplier.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_2bit_vedic_multiplier.jpg">
</p>
<br/>

<p align="center">
<img width="70%" alt="Block_Diagram_CLA_4bit.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_CLA_4bit.jpg">
</p>
<br/>

<p align="center">
<img width="70%" alt="Block_Diagram_complementary.jpg" src="https://github.com/kuanchinyi/8bit_vedic_multiplier_signed_unsigned/blob/main/Block_Diagram_complementary.jpg">
</p>
<br/>
