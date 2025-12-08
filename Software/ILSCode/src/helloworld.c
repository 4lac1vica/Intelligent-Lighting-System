/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xspi.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdlib.h>

#define WAITTIME 200000

u8 Read_Als(XSpi* spi){
    u8 tx[3] = {0x00, 0x00, 0x00};
    u8 rx[3] = {0, 0, 0};

    XSpi_SetSlaveSelect(spi, 0xFE);
    XSpi_Transfer(spi, tx, rx, 3);
    

    return rx[1];
}


int main()
{   

    init_platform(); //incepem procesarea 
    print("Am inceput procesarea!\n");

    XGpio gpio_mode;
    XGpio gpio_keycode;
    XGpio gpio_keypulse;
    XGpio gpio_dutycycle;
    XSpi spi;
    XSpi_Config* spi_cfg;

   

    int inputData = 0;
    u32 keycode = 0;
    u32 keypulse = 0;
    u32 dutyCycle = 0;

    
    //aici ne ocupam de intializarea AXI GPIO-urilor necesare;

    XGpio_Initialize(&gpio_mode, XPAR_AXI_MODE_BASEADDR);
    XGpio_SetDataDirection(&gpio_mode, 1, 0xF);
    
    
    XGpio_Initialize(&gpio_keycode,XPAR_AXI_KEYCODE_BASEADDR);
    XGpio_SetDataDirection(&gpio_keycode, 1, 0xF);


    XGpio_Initialize(&gpio_keypulse, XPAR_AXI_KEY_PULSE_BASEADDR);
    XGpio_SetDataDirection(&gpio_keypulse, 1 , 0x1);
    
    XGpio_Initialize(&gpio_dutycycle, XPAR_AXI_DUTY_CYCLE_BASEADDR);
    XGpio_SetDataDirection(&gpio_dutycycle, 1, 0x0);

    //initializare modul AXI SPI

    spi_cfg = XSpi_LookupConfig(XPAR_AXI_QUAD_SPI_0_BASEADDR);
    if (!spi_cfg){
        print("AXI SPI null");
        return -1;
    }

    XSpi_CfgInitialize(&spi, spi_cfg, spi_cfg -> BaseAddress);
        
    XSpi_SetOptions(&spi, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);

    XSpi_Start(&spi);

    XSpi_SetSlaveSelect(&spi, 0x0);

    while(1){ //bucla de procesare
        inputData = XGpio_DiscreteRead(&gpio_mode, 1);
        keycode = XGpio_DiscreteRead(&gpio_keycode, 1);
        keypulse = XGpio_DiscreteRead(&gpio_keypulse, 1);
        dutyCycle = XGpio_DiscreteRead(&gpio_dutycycle, 1);
        

        
        u8 lum = Read_Als(&spi);
        xil_printf("Luminozitatea este %d", lum);
        
        
        
        
        if (inputData == 1){
        //suntem in modul automat 
            print("Suntem in modul automat. Luminozitatea este dictata de catre senzor.");
                    
            
        }
        else{
        //suntem in modul manual
            print("Suntem in modul manual. Luminozitatea este controlata de catre keypad");

            
        }

        //setam wait time 
        usleep(WAITTIME);
    }

    

    cleanup_platform();
    return 0;
}
