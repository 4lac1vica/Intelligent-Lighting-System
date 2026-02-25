## ILS (using AXI QUAD SPI)

Tools : Xilinx Vivado 2024.1 and Xilinx Vitis 2024.1.

Components : **PMod Als**, **PMod KEYPD**, **Zybo Z20**.

## EN 

An intelligent lighting system represents a system that aims to modify the brightness within an environment. In this project, multiple LEDs are controlled, either manually using a keypad or automatically using a PMOD ALS sensor (ambient light sensor). The project proposes the development of a system whose purpose is to illuminate larger spaces from a single computer, either in automatic mode or in manual mode. Within the project, Xilinx tools such as Vivado and Vitis were used, together with their associated languages: the VHDL hardware description language and the C programming language (more precisely, embedded C). To implement certain functionalities, finite state machines (FSMs) were used. To control the brightness of an LED, PWM (Pulse Width Modulation) was employed. To implement the keypad, a finite state machine was used. The sensor communicates with the Zybo board using an AXI Quad module, predefined in the Xilinx Vivado development environment. The PL part is described in VHDL, while the PS part is implemented in C using Vitis. The sensor is read in the PS part using C code written in Vitis. The project is not fully functional; more specifically, there are issues with the communication between the sensor and the PS.

**[Here are the source files(.vhd)](https://github.com/4lac1vica/Intelligent-Lighting-System/tree/main/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.srcs/sources_1/imports/hdl).**
**[Here are the source files(.c)](https://github.com/4lac1vica/Intelligent-Lighting-System/tree/main/SoftwareProiect/ILSCode/src)** -- the source code it's in the *helloworld.c* file


**Features:** 

  - **PWM** (Pulse Width Modulation)
  - **FSM** (Finite State Machines)
  - **SPI Communication between the sensor and the SoC**

**How to use**
- The system works as follows: 
  1) We select via a switch whether we want to be in manual mode or automatic mode
  2) If we are in manual mode, then we use the keypad to enter the brightness by entering a value (0-1023).
  3) If we are in automatic mode, the sensor takes the light level from the room and transmits the data to the processor. At this stage, depending on certain values, the LED light either increases in intensity or decreases.


**State Diagram**

<img width="931" height="1043" alt="image" src="https://github.com/user-attachments/assets/bac5e58b-28b4-40b1-a5fa-e63ec5efe6b3" />


















[back to the repo](https://github.com/4lac1vica/Intelligent-Lighting-System)
