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
