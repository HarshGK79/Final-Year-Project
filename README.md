# Final-Year-Project
Here are some key details about my final year project about how to design an 8-bit ALU Using Open-Source EDA Tools:


**🔧 8-bit ALU Design Using Open-Source EDA Tools**
This repository contains the complete RTL-to-GDSII flow for the design and physical implementation of an 8-bit Arithmetic and Logic Unit (ALU) using open-source EDA tools. The project demonstrates how a simple yet essential digital block — the ALU — can be designed, synthesized, placed, routed, and prepared for fabrication using freely available tools and open-source PDKs.

**📌 Project Overview**
An Arithmetic and Logic Unit (ALU) is a fundamental component of any computing system, responsible for performing basic arithmetic and bitwise operations. In this project, we designed an 8-bit ALU in Verilog HDL that supports various operations like addition, subtraction, bitwise AND, OR, XOR, NOT, logical shifts, and comparisons.

The RTL design is synthesized and physically implemented using a suite of open-source tools including:

**Yosys** – RTL synthesis

**Qflow** – Automated digital synthesis to layout flow

**GrayWolf** – Placement

**Magic** – Layout editing, DRC checking

**OpenSTA**– Static Timing Analysis

**SkyWater 130nm PDK** – Open-source Process Design Kit

**📁 What’s Inside**
alu.v – Verilog code for the 8-bit ALU

testbench.v – Testbench for verifying ALU functionality (optional)

qflow_project/ – Qflow-generated directory containing synthesis, layout, logs, and final GDSII

docs/ – Project report, block diagrams, and flow explanations

README.md – Project overview and setup guide (this file)

**🔄 Design Flow Summary**
Design the ALU in Verilog

Verify functionality using simulation (Icarus Verilog + GTKWave)

Use Qflow to run the entire back-end flow:

Synthesis with Yosys

Placement with GrayWolf

Routing and DRC using Magic

STA using OpenSTA

GDSII generation for final output

Inspect layout and verify design using Magic and timing reports

**📦 How to Use This Repository**
Clone the repository:

bash
Copy
Edit
git clone https://github.com/yourusername/8bit-ALU-OpenSourceEDA.git
cd 8bit-ALU-OpenSourceEDA
Install Qflow and Dependencies
Use VSDFlow by Kunal Ghosh or follow manual setup instructions.

Place your Verilog file in Qflow's project folder
Run:

bash
Copy
Edit
qflow synthesize place route alu
View results:

Open layout in Magic: magic layout/alu.mag

View GDS: klayout alu.gds

View STA timing reports, logs, and DRC checks in respective folders

**✅ Final Output**
GDSII layout file ready for fabrication

Timing and DRC-clean design

Fully reusable ALU IP block for SoC projects

**🎯 Goals Achieved**
RTL-to-GDSII flow using only open-source tools

Understanding of complete VLSI physical design steps

Hands-on layout and timing verification

Insight into real-world chip design and fabrication workflows

**👏 Acknowledgements**
VSD (VLSI System Design)

SkyWater Open-Source PDK

Efabless

Open-source communities behind Yosys, Magic, OpenSTA, GrayWolf, Qflow

**📘 License**
This project is licensed for educational and non-commercial use. Feel free to fork and experiment, but please cite or credit this work if reused in your own projects.
