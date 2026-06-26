#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Dylan C. Meeks"
#let location = ""
#let email = "dylan.meeks@icloud.com"
#let github = "github.com/DylanMeeks"
#let linkedin = "linkedin.com/in/dylan-c-meeks"
// #let phone = "+1 (xxx) xxx-xxxx"
// #let personal-site = "stuxf.dev"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // phone: phone,
  // personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

/*
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */

== Education

#edu(
  institution: "University of Illinois Urbana-Champaign",
  location: "",
  dates: dates-helper(start-date: "August 2026", end-date: "Present"),
  degree: "Ph.D. Computer Science",
)
- Beginning August 2026 I will be working with #link("https://ghose.web.illinois.edu/")[Prof. Saugata Ghose] at the University of Illinois focusing on Computer Architecture for emerging domains such as Processing-Using-Memory

#edu(
  institution: "University of Texas at Austin",
  location: "",
  dates: dates-helper(start-date: "August 2022", end-date: "May 2026"),
  degree: "B.S. Electrical and Computer Engineering, Minor: Chinese Language",
)
- Cumulative GPA: 3.7\/4.0
- Relevant Coursework: Computer Architecture, Compilers, Operating Systems, Hardware Design Languages, Digital Logic Design, Programming Paradigms, Embedded Systems Laboratory, Algorithms, Probability and Random Processes

== Work Experience

#work(
  title: "Research Intern, Arcana Research Lab",
  location: "",
  company: "University of Illinois, Urbana-Champaign",
  dates: dates-helper(start-date: "May 2025", end-date: "August 2025"),
)
- Built 3D transient heat models in *C++* for resistive memory devices; solved the heat equation to characterize thermal coupling and endurance limits
- Implemented Processing-Using-Memory (PUM) kernels to evaluate energy/thermal profile in a state-of-the-art simulator
- Designed and ran simulation test benches for massively parallel workloads, profiling power, latency, and scalability for general-purpose compute use cases
- Presented poster and PowerPoint presentation with results of research to peers and industry sponsors

#work(
  title: "Research Intern, CORSA Research Lab",
  location: "",
  company: "University of California, Irvine",
  dates: dates-helper(start-date: "May 2024", end-date: "August 2024"),
)
- Investigated Dynamic Partial Reconfiguration (DPR) for FPGA-based machine learning accelerators to reduce idle power and adapt to workload phases
- Prototyped a DPR-enabled accelerator pipeline (compute/reduction stages) and achieved up to \~50% power reduction under representative driving traces

== Projects

#project(
  name: "Pintos Operating System",
  role: "",
  dates: dates-helper(start-date: "January 2025", end-date: "Present"),
  url: "",
)
- Worked in group of two to implement user process virtualisation, virtual memory, and file system
- Implemented a full virtual-memory subsystem with on-demand paging, LRU-approximate eviction, and stack-growth heuristics
- Added full system-call interface: argument passing, process exec/wait, file I/O, and robust user-memory access
- Re-engineered Pintos file system to support indexed/extensible files, hierarchical directories, and fine-grained synchronization

#project(
  name: "FPGA Projects Various",
  role: "",
  dates: dates-helper(start-date: "January 2025", end-date: "Present"),
  url: "",
)
- Designed and implemented digital systems in *Verilog* on Xilinx FPGAs, including combinational/sequential circuits, FSMs, and memory-mapped I/O
- Built a Fitbit-style activity tracker and parking meter with real-time 7-segment display multiplexing, debouncing, and clock division
- Developed a stack calculator using Block RAM and tri-state bus interfaces; designed a single-cycle MIPS processor with full datapath and control unit

#project(
  name: "Roofline Analysis Tool for LLVM MLIR in Collaboration with Ericsson",
  role: "",
  dates: dates-helper(start-date: "October 2025", end-date: "Present"),
  url: "",
)
- Lead 5 person team as to design a roofline analysis tool for MLIR code for performance analysis
- Implemented roofline analysis of input code using LLVM MLIR python bindings
- Collaborated in designing intuitive user interface inspired by CompilerExplorer to present results of the user

#project(
  name: "COOL Compiler",
  role: "",
  dates: dates-helper(start-date: "August 2025", end-date: "December 2025"),
  url: "",
)
- Implemented recursive-descent parser with LL(1) lookahead and operator precedence handling; constructed AST using Cool support libraries with proper error reporting
- Designed and implemented code generation to LLVM IR for full COOL semantics: classes, inheritance, dynamic dispatch, vtables, SELF_TYPE, and runtime library integration with boxing/unboxing optimizations for primitive types
- Developed LLVM optimization passes: loop analysis (natural loop identification), loop-invariant code motion with alias analysis, and sparse conditional constant propagation (SCCP)
- Implemented a greedy local register allocator as an LLVM MachineFunctionPass, handling physical/virtual register mapping, spilling, reloading, subregisters, and function call clobbering across x86 and AArch64 backends

#project(
  name: "Cypher to SQL Database-as-a-Service",
  role: "",
  dates: dates-helper(start-date: "August 2025", end-date: "December 2025"),
  url: "",
)
- Built a multi-paradigm database-as-a-service system with a Smalltalk client, *Go* REST server, and *Rust* query transformer, translating Cypher graph queries to *SQL* for relational backends
- Implemented a custom Cypher-to-SQL parser by extending Apache DataFusion's sqlparser-rs crate, adding grammar support and desugaring logic for graph pattern matching operations
- Designed modular architecture enabling pluggable database backends (SQLite/MySQL) and integrated Neo4j for query validation, with comprehensive testing and CI/CD pipeline

#project(
  name: "Wireless Electronic Battleship",
  role: "",
  dates: dates-helper(start-date: "August 2025", end-date: "December 2025"),
  url: "",
)
- Designed and built multiple custom PCBs implementing a DAC and amplifier circuit for audio, a keyboard matrix for input, and using communication protocols such as UART, I2C, and SPI
- Created custom 3D printed case for the PCBs designing space for multiple switches and button
- Developed custom firmware to support multiplayer gameplay across multiple copies of the game

#project(
  name: "Performance Simulator for LC3b ISA",
  role: "",
  dates: dates-helper(start-date: "August 2024", end-date: "December 2024"),
  url: "",
)
- Implemented two-pass assembler with symbol table resolution, parsing LC-3b assembly into machine code with support for labels, pseudo-ops, and all instruction variants
- Developed cycle-accurate simulator of LC-3b microarchitecture: datapath, microsequencer, memory subsystem, and control store
- Extended simulator with interrupt/exception handling (timer, protection, unaligned access, unknown opcode), nested interrupts, privilege mode switching, and RTI instruction
- Implemented virtual memory with one-level page table translation, page faults, reference/modified bits, and protection checks; designed pipelined 5-stage processor with hazard detection and stall logic

/*

#project(
  name: "Mirrorbot",
  role: "",
  dates: dates-helper(start-date: "August 2024", end-date: "Present"),
  url: "",
)
- Built a 2-wheel self-balancing platform using IMU sensor fusion and PID control; tuned for stability across floor surfaces
- Integrated a smart mirror from reclaimed TV hardware with one-way acrylic; added mobile power, display, and follow-me behavior
- Developed modular firmware for motor control, state estimation, and UI; validated stability margins and step response

#project(
  name: "Custom FPGA Digital Stopwatch in Verilog",
  role: "",
  dates: dates-helper(start-date: "November 2023", end-date: "December 2023"),
  url: "",
)
- Designed a stopwatch/timer with up/down counting (0–1000 or user input), four 7-seg display multiplexing, and debounced inputs
- Implemented clock dividers, finite-state control, and memory-mapped I/O; verified with timing constraints and simulation (behavioral + post-synth)

#project(
  name: "Couchbot",
  role: "",
  dates: dates-helper(start-date: "November 2023", end-date: "December 2023"),
  url: "",
)
- Ported control stack from Raspberry Pi to AVR (ATmega) and ESP32, reducing latency and improving boot reliability
- Implemented safety interlocks, watchdog, and timer-driven control loop; added wireless gamepad interface for drive control
- Reworked motor driver interface and power distribution; fixed mechanical tolerances to improve tracking and drivability

*/

== Skills
- *Programming*: C/C++, Rust, Go, Verilog, Python, SQL, ARM Assembly, Git, Matlab
- *Modeling and Design*: Vivado, Vivado HLS, Vitis, KiCAD, SolidWorks, FreeCAD, LTSpice
- *Hardware*: AMD Kria KV260 Vision AI Starter Kit FPGA, Diligent Basys 3 FPGA, Ti TM4C, Raspberry Pi
// - *Language*: Mandarin (conversationally fluent)
