transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Developments/Elektronika/Motor Control/Brushless DC Motors (BLDC)/BLDC Servo/src/v.0.0.0/CPLD/main.vhd}
vcom -93 -work work {D:/Developments/Elektronika/Motor Control/Brushless DC Motors (BLDC)/BLDC Servo/src/v.0.0.0/CPLD/spi_slave.vhd}
vcom -93 -work work {D:/Developments/Elektronika/Motor Control/Brushless DC Motors (BLDC)/BLDC Servo/src/v.0.0.0/CPLD/WheelDecoder.vhdl}

