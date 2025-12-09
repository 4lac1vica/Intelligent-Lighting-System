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


XGpio gpio_dutycycle;


u8 Read_Als(XSpi* spi){
    u8 tx[2] = {0x00, 0x00};
    u8 rx[2] = {0};

    XSpi_SetSlaveSelect(spi, 0xFE);
    XSpi_Transfer(spi, tx, rx, 2);
    XSpi_SetSlaveSelect(spi, 0xFF);
    

    return rx[1];
}

void setLum(u8 value){

    if (value > 255){
        value = 255;
    }
    
    XGpio_DiscreteWrite(&gpio_dutycycle, 1, value);

    

    print("Luminozitatea a fost setat cu succes!\r\n"); 
}

int main()
{   

    XGpio gpio_mode;
    XGpio gpio_keycode;
    XGpio gpio_keypulse;
    XSpi spi;
    XSpi_Config* spi_cfg;

    int inputData = 0;
    u32 keycode = 0;
    u32 keypulse = 0;
   

    
    //aici ne ocupam de intializarea AXI GPIO-urilor necesare;

    XGpio_Initialize(&gpio_mode, XPAR_AXI_MODE_BASEADDR);
    XGpio_SetDataDirection(&gpio_mode, 1, 0x1);
    
    
    XGpio_Initialize(&gpio_keycode,XPAR_AXI_KEYCODE_BASEADDR);
    XGpio_SetDataDirection(&gpio_keycode, 1, 0xF);


    XGpio_Initialize(&gpio_keypulse, XPAR_AXI_KEY_PULSE_BASEADDR);
    XGpio_SetDataDirection(&gpio_keypulse, 1 , 0x1);
    
    XGpio_Initialize(&gpio_dutycycle, XPAR_AXI_DUTY_CYCLE_BASEADDR);
    XGpio_SetDataDirection(&gpio_dutycycle, 1, 0x00);

    //initializare modul AXI SPI

    spi_cfg = XSpi_LookupConfig(XPAR_AXI_QUAD_SPI_0_BASEADDR);
    if (!spi_cfg){
        print("AXI SPI null\r\n");
        return -1;
    }

    XSpi_CfgInitialize(&spi, spi_cfg, spi_cfg -> BaseAddress);
        
    XSpi_SetOptions(&spi, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);

    XSpi_Start(&spi);

    XSpi_SetSlaveSelect(&spi, 0x0);

    init_platform(); //incepem procesarea 
    print("Am inceput procesarea!\r\n");



    while(1){ //bucla de procesare
        inputData = XGpio_DiscreteRead(&gpio_mode, 1);
        
       
        

        
        u8 lum = Read_Als(&spi);
        xil_printf("Luminozitatea este %d\r\n", lum);
        
        
        
        
        if (inputData & 0x1){
        //suntem in modul automat 
            print("Suntem in modul automat. Luminozitatea este dictata de catre senzor.\r\n");
            
            //daca lumina naturala este slaba atunci facem sa fie lumina. Lumina slaba reprezinta ce este pana la valoarea de 128. Lumina puternica reprezinta ce este in [129, 255]
            //daca lumina naturala este puternica atunci facem sa scada luminozitatea


            //o sa luam mai multe trepte pentru lumina slaba. O sa impartim in felul urmator :
            /*  
                1) Lumina ambientala extraordinar de slaba : lum este in intervalul [0, 32]
                2) Lumina ambientala este doar slaba : lum este in intervalul (32, 64]
                3) Lumina ambientala este mediu-slaba : lum este in intervalul (64, 96]
                4) Lumina ambientala este decent-slaba : lum este in intervalul (96, 127]

                urcam gradual cu un ordin de luminozitate. practic, urcam cu 32. 


            */
            
            u8 value = 0;

            if (lum >= 0 && lum <= 32){
                //faza 1 --lumina slaba
                value = 64;
            }

            else if (lum > 32 && lum <= 64){
                //faza 2 --lumina slaba
                value = 128; 
            }

            else if (lum > 64 && lum <= 96){
                //faza 3 --lumina slaba
                value = 192;
            }

            else if (lum > 96 && lum <= 127){
                //faza 4 --lumina slaba
                value = 255;
            }
            
            

            /* o sa luam mai multe trepte pentru lumina puternica. O sa impartim in felul urmator :
                1) Lumina ambientala puternic decenta. In intervalul [128, 160]
                2) Lumina ambientala puternic medie, In intervalul (160, 192]
                3) Lumina ambientala puternica. In intervalul (192, 224]
                4) Lumina ambientala puternica. In intervalul (224, 255]

                scadem gradual cu un ordin de luminozitate. practic, scadem cu 32

            */
            
            else if (lum >= 128 && lum <= 160){
                //faza 1 lumina puternica
                value = 64; 
            }

            else if (lum > 160 && lum <= 192){
                //faza 2 lumina puternica
                value = 80; 
            }

            else if (lum > 192 && lum <= 224){
                //faza 3 lumina putenica
                value = 96; 
            }

            else if (lum > 224 && lum <= 255){
                //faza 4 lumina puternica
                value = 128; 
            }

            setLum(value);

        }
        else{
        //suntem in modul manual
            print("Suntem in modul manual. Luminozitatea este controlata de catre keypad\r\n");
            keycode = XGpio_DiscreteRead(&gpio_keycode, 1);
            keypulse = XGpio_DiscreteRead(&gpio_keypulse, 1);

            if (keypulse == 1){
                switch(keycode){
                    case 0xA:   //crestem luminozitatea 
                        if (lum < 250){
                            lum += 16;
                        }
                        break;
                    case 0xB:   //scadem luminozitatea
                        if (lum > 16){
                            lum -= 16;
                        }
                        break;
                    case 0xC:   //Maxim 
                        lum = 255;
                        break;
                    case 0xD:   //Minim
                        lum = 0;                        
                        break;
                    default:    //taste de la 0 la 9
                        lum = keycode  * 25;
                        break;
                }


                setLum(lum);
                usleep(150000); //aici facem debounce

            }
            
        }

        //setam wait time 
        usleep(WAITTIME);
    }

    

    cleanup_platform();
    return 0;
}
