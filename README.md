# 🔢 Universal Code Converter (UCC) – Verilog HDL

A **Universal Code Converter (UCC)** is a digital system designed to convert numbers between different coding formats commonly used in digital electronics. This project implements a **multi-code converter in Verilog HDL**, capable of converting between **Binary, Gray, BCD, and Excess-3 codes** using simple control signals.

This project is ideal for:
- FPGA & VLSI learners  
- Digital electronics students  
- Hardware design practice  
- Verilog simulation and synthesis

---

## ✨ Features

✅ Supports **12 different code conversions**  
✅ Fully **combinational logic design**  
✅ **Error detection** for invalid inputs  
✅ Modular and clean architecture  
✅ Synthesizable on **FPGA / ASIC**  
✅ Suitable for **Vivado, ModelSim, Quartus**

---

## 🔁 Supported Code Conversions

- Binary → Gray  
- Binary → BCD  
- Binary → Excess-3  

- Gray → Binary  
- Gray → BCD  
- Gray → Excess-3  

- BCD → Binary  
- BCD → Gray  
- BCD → Excess-3  

- Excess-3 → Binary  
- Excess-3 → Gray  
- Excess-3 → BCD  


## 🧠 How It Works

The UCC works by using:
- An **8-bit input (`in`)**
- Two **2-bit control signals**:
  - `selin` → selects the input code type  
  - `selout` → selects the output code type  

These two selection signals are combined into a **4-bit control signal `{selin, selout}`**, which decides which conversion operation will be performed.

Internally, the top module selects the output from one of several **dedicated sub-modules** using a `case` statement.

Example: {selin, selout} = 4’b0001 → Binary → Gray
{selin, selout} = 4’b0110 → Gray → BCD

## ⚠️ Error Detection

The UCC includes built-in **error detection**, especially for:

- ✅ Invalid **BCD inputs** (more than 9)
- ✅ Invalid **Excess-3 conversions**
- ✅ Out-of-range values

If an invalid condition is detected:
- `errors = 1`
- Output is safely handled to prevent undefined logic

---

## 🧱 Internal Sub-Modules

The design uses separate converter blocks for each conversion:

- `btog` → Binary to Gray  
- `gtob` → Gray to Binary  
- `btobcd` → Binary to BCD  
- `btoex` → Binary to Excess-3  
- `bcdtob` → BCD to Binary  
- `bcdtog` → BCD to Gray  
- `bcdtoex` → BCD to Excess-3  
- `extob`, `extog`, `extobcd` → Excess-3 conversions  

Each module uses standard mathematical and bitwise logic.

---

## 🔬 Design Flow

1. **User provides input data**
2. **User selects input & output formats**
3. **Internal module processes conversion**
4. **Output is generated**
5. **Error flag is raised if input is invalid**
6. Output is displayed through `out` and `output_`

---

## 🛠 Tools Used

- Verilog HDL
- Xilinx Vivado

  ## 👨‍💻 Author - Dhruv Khodke

Designed and implemented as a **VLSI/Digital Design learning project** using Verilog HDL.

---

## ⭐ If You Like This Project

If you find this useful:
- ⭐ Star the repository  
- 🍴 Fork it  
- 🧠 Modify and extend it  

Hawk Codes in Hardware! 
