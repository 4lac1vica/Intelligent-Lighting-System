## ILS (using AXI QUAD SPI)

Tools : Xilinx Vivado 2024.1 and Xilinx Vitis 2024.1.

Components : PMod Als, PMod KEYPD.

## EN 

An intelligent lighting system represents a system that aims to modify the brightness within an environment. In this project, multiple LEDs are controlled, either manually using a keypad or automatically using a PMOD ALS sensor (ambient light sensor). The project proposes the development of a system whose purpose is to illuminate larger spaces from a single computer, either in automatic mode or in manual mode. Within the project, Xilinx tools such as Vivado and Vitis were used, together with their associated languages: the VHDL hardware description language and the C programming language (more precisely, embedded C). To implement certain functionalities, finite state machines (FSMs) were used. To control the brightness of an LED, PWM (Pulse Width Modulation) was employed. To implement the keypad, a finite state machine was used. The sensor communicates with the Zybo board using an AXI Quad module, predefined in the Xilinx Vivado development environment. The PL part is described in VHDL, while the PS part is implemented in C using Vitis. The sensor is read in the PS part using C code written in Vitis. The project is not fully functional; more specifically, there are issues with the communication between the sensor and the PS.

















[back to the repo](https://github.com/4lac1vica/Intelligent-Lighting-System)
