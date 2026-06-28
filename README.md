# 8-bit DIT FFT (Simulation Only)

## Overview

This project implements an **8-point Decimation-in-Time Fast Fourier Transform (DIT-FFT)** using **Verilog HDL**. The design is intended for **functional simulation only** and demonstrates the architecture and operation of the Radix-2 DIT FFT algorithm.

The project focuses on validating the FFT computation through simulation and waveform analysis rather than FPGA implementation.

---

## Features

* 8-point Radix-2 Decimation-in-Time FFT
* Verilog HDL implementation
* Simulation-only design
* Butterfly computation stages
* Fixed-point arithmetic
* Functional verification using a Verilog testbench
* Waveform analysis using ModelSim/QuestaSim

---

## FFT Architecture

The design consists of three FFT stages:

```
Input Samples (8)
        │
        ▼
 Stage 1 Butterflies
        │
        ▼
 Stage 2 Butterflies
        │
        ▼
 Stage 3 Butterflies
        │
        ▼
   FFT Output (8)
```

Each stage performs butterfly operations using predefined twiddle factors.

---

## Project Structure

```
8-bit-DITFFT/
│
├── rtl/
│   ├── dit_fft.v
│   ├── butterfly.v
│   ├── complex_multiplier.v
│   ├── twiddle_rom.v
│   └── ...
│
├── tb/
│   └── tb_dit_fft.v
│
├── sim/
│   ├── run.do
│   └── waveform.do
│
├── docs/
│   └── architecture.png
│
└── README.md
```

> Folder names may vary depending on your implementation.

---

## Requirements

* ModelSim
* QuestaSim

Any Verilog simulator supporting IEEE Verilog should work.

---

## Running the Simulation

### Compile

```tcl
vlog *.v
```

### Simulate

```tcl
vsim tb_dit_fft
run -all
```

### View Waveforms

```tcl
add wave *
run -all
```

---

## Inputs

The testbench provides:

* Clock
* Reset
* 8 input samples

The FFT processes the samples and generates the corresponding frequency-domain outputs.

---

## Outputs

The simulation produces:

* Real component of FFT output
* Imaginary component of FFT output

Outputs can be verified using waveform viewers or simulation logs.

---

## Verification

The design is verified by:

* Applying multiple input vectors
* Observing butterfly computations
* Checking intermediate stage outputs
* Comparing final FFT outputs with expected values

---

## Simulation Results

Typical waveforms include:

* Clock
* Reset
* Input samples
* Butterfly stage outputs
* Final FFT outputs

Example:

```
Time(ns)

clk      ─┐└┐└┐└┐└┐└┐

reset ─────┐_________

input   x0 x1 x2 x3 ...

output  X0 X1 X2 X3 ...
```

---

## Applications

* Digital Signal Processing (DSP)
* Spectrum Analysis
* OFDM Systems
* Wireless Communication
* Audio Signal Processing
* Image Processing

---

## Future Improvements

* FPGA implementation
* Parameterized FFT size (8/16/32/64 points)
* Pipelined architecture
* Floating-point support
* Runtime configurable FFT size
* Optimized complex multiplier
* Automated verification with SystemVerilog/UVM

---

## Author

**Anikait Sarkar**

B.E. Electronics and Communication Engineering

Interested in RTL Design, Digital Design, FPGA, and VLSI.

---

## License

This project is provided for educational and learning purposes.
