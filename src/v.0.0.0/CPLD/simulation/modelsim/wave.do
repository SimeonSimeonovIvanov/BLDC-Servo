onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/ss
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/clk
add wave -noupdate -divider {New Divider}
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/mosi
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/miso
add wave -noupdate -divider {New Divider}
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/rx_bit_counter
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/rx_bit_counter_up_value
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/current_spi_rx_state
add wave -noupdate /spi_slave_tb/uut_spi_slave_ic1/rx_buf
add wave -noupdate /spi_slave_tb/spi_slave_clk
add wave -noupdate /spi_slave_tb/spi_slave_mosi
add wave -noupdate /spi_slave_tb/spi_slave_miso
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {403375 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 168
configure wave -valuecolwidth 411
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {2246575 ps}
