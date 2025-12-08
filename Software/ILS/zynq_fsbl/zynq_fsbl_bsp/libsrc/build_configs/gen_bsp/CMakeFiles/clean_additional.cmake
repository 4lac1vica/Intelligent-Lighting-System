# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\diskio.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ff.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ffconf.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\sleep.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs_config.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilrsa.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xiltimer.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xtimer_config.h"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilffs.a"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilrsa.a"
  "D:\\SSC\\proiectSSC\\Software\\ILS\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxiltimer.a"
  )
endif()
