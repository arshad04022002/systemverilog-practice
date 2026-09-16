# 🧪 SystemVerilog Practice — Daily Tasks & Testbenches

![SystemVerilog](https://img.shields.io/badge/SystemVerilog-8957e5?style=flat-square)
![Vivado](https://img.shields.io/badge/Xilinx%20Vivado-2ea44f?style=flat-square)
![Testbench](https://img.shields.io/badge/Testbench%20Design-0075ca?style=flat-square)
![Clock Domain](https://img.shields.io/badge/Clock%20Domain-e36209?style=flat-square)
![Active](https://img.shields.io/badge/🚀%20Active%20Learning-2ea44f?style=flat-square)

---

### About This Repo

This repository contains my **day-to-day SystemVerilog practice** tasks, testbenches and experiments as I progress through learning SV for VLSI verification. Each folder represents a topic and each file is a small focused task.

> 🔄 New tasks added regularly as I learn!

---

### 📁 Folder Structure

```
systemverilog-practice/
├── 📁 clocking/
│     ├── 01_clock_gen_alignment.sv    ← 100/50/25 MHz clock alignment ✅
│     └── waveform_01.png              ← Simulation waveform ✅
├── 📁 data_types/
│     ├── 01_data_types.sv             ← Data types & default values ✅
│     ├── 02_static_arrays.sv          ← Static arrays ✅
│     ├── 03_dynamic_arrays.sv         ← Dynamic arrays ✅
│     └── 04_queues.sv                 ← Queues ✅
├── 📁 oops/
│     ├── 01_class_basics.sv           ← Class basics ✅
│     ├── 02_functions.sv              ← Functions ✅
│     ├── 03_tasks.sv                  ← Tasks ✅
│     ├── 04_task_pass_by_value.sv     ← Pass by value ✅
│     └── 05_pass_by_reference.sv      ← Pass by reference ✅
├── 📁 assertions/
│     └── (coming soon)
├── 📁 randomization/
│     └── (coming soon)
└── README.md
```

---

### 📝 Tasks Log

| # | Task | Topic | Status |
|---|------|-------|--------|
| 01 | Clock Generation & Edge Alignment | clocking | ✅ Done |
| 02 | Data Types & Default Values | data_types | ✅ Done |
| 03 | Static Arrays | data_types | ✅ Done |
| 04 | Dynamic Arrays | data_types | ✅ Done |
| 05 | Queues | data_types | ✅ Done |
| 06 | Class Basics | oops | ✅ Done |
| 07 | Functions | oops | ✅ Done |
| 08 | Tasks | oops | ✅ Done |
| 09 | Pass by Value | oops | ✅ Done |
| 10 | Pass by Reference | oops | ✅ Done |

---

### 📌 Task 01 — Clock Generation & Edge Alignment

**File:** `clocking/01_clock_gen_alignment.sv`
**Waveform:** `clocking/waveform_01.png`

| Signal | Frequency | Period |
|--------|-----------|--------|
| clk | 100 MHz | 10 ns |
| clk50 | 50 MHz | 20 ns |
| clk25 | 25 MHz | 40 ns |

**Key Concepts:** `timescale` · `initial` block · `always` block · `$dumpfile` · `$finish`

---

### 📌 Task 02 — Data Types & Default Values

**File:** `data_types/01_data_types.sv`

| Type | Default Value | State |
|------|--------------|-------|
| reg | X (unknown) | 4-state |
| logic | X (unknown) | 4-state |
| bit | 0 | 2-state |
| byte | 0 | 2-state |
| int | 0 | 2-state |

**Key Learning:** 4-state types default to **X**, 2-state types default to **0**

---

### 📌 Task 03 — Static Arrays

**File:** `data_types/02_static_arrays.sv`

**Key Concepts:** Fixed size arrays · `'{}` initialization · `'{5{0}}` repetition · `'{default:2}` · `%0p` display

---

### 📌 Task 04 — Dynamic Arrays

**File:** `data_types/03_dynamic_arrays.sv`

**Key Concepts:** `int arr[]` declaration · `new[5]` runtime allocation · `new[15](arr)` resize with data preserve · `arr.delete()` deallocation

---

### 📌 Task 05 — Queues

**File:** `data_types/04_queues.sv`

| Method | Operation |
|--------|-----------|
| `push_front(7)` | Add at front |
| `push_back(9)` | Add at back |
| `insert(2,10)` | Insert at index |
| `pop_front()` | Remove from front |
| `pop_back()` | Remove from back |
| `delete(1)` | Delete at index |

**Key Learning:** Queue `[$]` supports both FIFO and LIFO operations

---

### 📌 Task 06 — Class Basics

**File:** `oops/01_class_basics.sv`

**Key Concepts:** `class` definition · `new()` object creation · dot operator for member access · `null` for deallocation

---

### 📌 Task 07 — Functions

**File:** `oops/02_functions.sv`

| Function | Return Type | Description |
|----------|-------------|-------------|
| `add()` | `bit [4:0]` | Returns sum of ain + bin |
| `display_ain_bin()` | `void` | Displays values only |

**Key Learning:** Functions cannot consume simulation time · `void` for display-only functions

---

### 📌 Task 08 — Tasks

**File:** `oops/03_tasks.sv`

**Key Concepts:** `task` keyword · `#` delays allowed · `@(posedge clk)` · `$urandom` · difference between task and function

---

### 📌 Task 09 — Pass by Value

**File:** `oops/04_task_pass_by_value.sv`

| | a | b |
|-|---|---|
| Before swap | 3 | 2 |
| Inside task | 2 | 3 |
| Outside task | 3 | 2 |

**Key Learning:** Pass by value sends a **copy** — original variable unchanged outside task

---

### 📌 Task 10 — Pass by Reference

**File:** `oops/05_pass_by_reference.sv`

| | a | b |
|-|---|---|
| Before swap | 1 | 2 |
| Inside task | 2 | 1 |
| Outside task | 2 | 1 |

**Key Learning:** `ref` keyword passes **original variable** — changes reflect outside · requires `task automatic`

---

### 🎯 Learning Goals

- [x] Clock generation & edge alignment
- [x] SystemVerilog Data Types & Variables
- [x] Arrays, Queues & Associative Arrays
- [x] OOP — Classes, Functions, Tasks, Pass by Value/Reference
- [ ] Clocking Blocks & Interfaces
- [ ] Assertions (SVA — SystemVerilog Assertions)
- [ ] Randomization & Constraints
- [ ] Testbench Components — Driver, Monitor, Scoreboard

---

### 🛠 Tools Used

| Tool | Purpose |
|------|---------|
| Xilinx Vivado | Simulation & Waveform Analysis |
| SystemVerilog | Hardware Verification Language |

---

### 👨‍💻 Author

**Arshad Ansari**
M.Tech ECE (VLSI Design) — NIT Hamirpur
[![LinkedIn](https://img.shields.io/badge/LinkedIn-arshadansari04-0077B5?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/arshadansari04/)
  
