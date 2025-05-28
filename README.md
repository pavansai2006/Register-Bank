# 32x32 Register Bank in Verilog

## 📌 Project Overview

This project implements a **32x32-bit register bank** using **Verilog HDL**, simulating a core component of the MIPS processor architecture. The design includes **synchronous write**, **combinational read**, and **protection of register 0** (always reads zero and cannot be written).

---

## 🧠 Features

- 32 registers, each 32 bits wide.
- Write operation on the rising edge of the clock (`posedge clk`).
- Combinational read based on `read_reg` input.
- Register 0 is hardwired to `0` (cannot be modified).
- Loop-based logic for register access using `case` and `for`.
- Verilog testbench to validate functionality with waveform generation.

---

## 🔧 Files Included

- `Design.v` — Main Verilog module for the register bank.
- `Testbench.v` — Testbench module to simulate and verify the register file.
- `Regbank.vcd` — Generated waveform file (after simulation, for viewing in GTKWave).

---

## ▶️ How to Run

1. Open a terminal or simulator environment (e.g., ModelSim, Icarus Verilog).
2. Compile the design.
3. Run the simulation.
4. 4. View the waveform.
 
---

## ✅ Expected Behavior

- Writes are only successful when `en = 1` and `write_reg != 0`.
- Any attempt to write to register 0 is ignored.
- Reads reflect the latest written value (if applicable).
- Data remains unchanged if `en = 0`.

---

## 📷 Sample Output
Time: 50 | EN=0 | WR_REG=5 | WR_DATA=6969 | RD_REG=15 | RD_DATA=1515
Time: 60 | EN=0 | WR_REG=5 | WR_DATA=6969 | RD_REG=0 | RD_DATA=0
Time: 70 | EN=0 | WR_REG=5 | WR_DATA=6969 | RD_REG=10 | RD_DATA=111

---

## ✍️ Author

Pavan — Electronics and Communication Engineering Student  
Designed as a fundamental processor component simulation in Verilog.

---
