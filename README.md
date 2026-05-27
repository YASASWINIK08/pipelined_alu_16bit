# Pipelined 16-bit ALU ASIC Design using OpenLane

## 📌 Overview

This project implements a **16-bit pipelined Arithmetic Logic Unit (ALU)** and demonstrates a complete **RTL-to-GDSII ASIC design flow** using the OpenLane physical design framework and the Sky130 PDK.

The design was written in Verilog HDL, functionally verified using simulation waveforms, and physically implemented through synthesis, floorplanning, placement, clock tree synthesis (CTS), routing, and final signoff verification.

The project successfully achieved:

- ✅ Timing Closure
- ✅ DRC Clean Layout
- ✅ LVS Clean Verification
- ✅ Zero Antenna Violations
- ✅ Final GDSII Generation

---

# 🧠 Architecture

The ALU supports multiple arithmetic and logical operations using a pipelined architecture for improved timing performance.

## Supported Operations

| Opcode | Operation |

| 000    | Addition |
| 001    | Subtraction |
| 010    | AND |
| 011    | OR |
| 100    | XOR |
| 101    | NAND |
| 110    | NOR |
| 111    | XNOR |

---

# 🏗️ Block Diagram

[Block Diagram](docs/block_diagram.png)

---

# 📂 Project Structure

```bash
pipelined_alu_16bit/
├── src/
│   ├── alu_core.v
│   ├── pipeline_reg_16.v
│   ├── pipeline_reg_3.v
│   └── top_alu.v
│
├── docs/
│   ├── block_diagram.png
│   ├── waveform.png
│   ├── rtl_schematic.png
│   ├── metrics.png
│   ├── routing_sta_summary.png
│   ├── manufacturability_report.png
│   └── signoff_results.png
│
├── config.json
├── README.md
└── .gitignore

🔄 ASIC Design Flow

The following stages were completed successfully:

RTL Design
Functional Simulation
Synthesis
Floorplanning
Placement
Clock Tree Synthesis (CTS)
Routing
Static Timing Analysis (STA)
DRC Verification
LVS Verification
Final GDSII Generation

📷 Functional Verification
Waveform Verification (docs/waveform.png)

The ALU operations were verified functionally through simulation waveforms.

🧩 RTL Schematic

📊 Final Design Metrics

| Metric                     | Result       |
| -------------------------- | ------------ |
| Flow Status                | Completed    |
| Worst Negative Slack (WNS) | 0.00 ns      |
| Total Negative Slack (TNS) | 0.00 ns      |
| Worst Setup Slack          | 5.93 ns      |
| Worst Hold Slack           | 0.27 ns      |
| Critical Path Delay        | 4.31 ns      |
| Suggested Clock Frequency  | 100 MHz      |
| Total Cells                | 1335         |
| Synthesized Cell Count     | 336          |
| Core Area                  | 10277.35 µm² |
| DRC Violations             | 0            |
| LVS Errors                 | 0            |

📈 Metrics Report

⏱️ Post-Routing STA Results

The final routed design achieved successful timing closure with:

WNS = 0.00 ns
TNS = 0.00 ns
Positive setup and hold slack

✅ Manufacturability Verification

| Verification Check     | Result |
| ---------------------- | ------ |
| Magic DRC Violations   | 0      |
| LVS Status             | Clean  |
| Pin Antenna Violations | 0      |
| Net Antenna Violations | 0      |


🏁 Final Signoff Outputs

The OpenLane flow successfully generated final ASIC signoff deliverables including:

GDSII Layout (top_alu.gds)
LEF Abstract (top_alu.lef)
Liberty Timing Model (top_alu.lib)
SDF Timing Annotation (top_alu.sdf)
Extracted SPICE Netlist (top_alu.spice)

🎯 Key Learning Outcomes
RTL design using Verilog HDL
Pipelined datapath implementation
ASIC physical design flow
Static Timing Analysis (STA)
Clock Tree Synthesis (CTS)
Routing and congestion handling
DRC/LVS verification
OpenLane and Sky130 based ASIC implementation

👩‍💻 Author

Yasaswini Kunapareddy

B.Tech – Electronics and Communication Engineering
