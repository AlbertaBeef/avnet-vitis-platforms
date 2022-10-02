#####
## Constraints for FMC QUAD UZ7EVCC
## Version 1.0
#####


#####
## Pins
#####

#
# The VRP pin in Bank 64 (AC13) is used as an IO. To use MIPI_DPHY_DCI
# on this bank, DCI Cascade must be used. Since Bank 66 has a 240 ohm resistor
# connected to the VRP pin, use Bank 66 as a DCI cascade master bank for Bank 64
# (see AR# 67565).
#
#set_property DCI_CASCADE {64} [get_iobanks 66]


##########################
# CARRIER IIC
##########################

#UZ7EV CC IIC
# FMC_SCL - HD_SE_22_N - J12 
# FMC_SDA - HD_SE_22_P - K13
set_property PACKAGE_PIN J12 [get_ports carrier_iic_scl_io]
set_property PACKAGE_PIN K13 [get_ports carrier_iic_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports carrier_iic_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports carrier_iic_sda_io]



##########################
# HPC0 - Multi-Camera FMC
##########################

#IIC
set_property PACKAGE_PIN AG18 [get_ports fmc_multicam_iic_scl_io]
set_property PACKAGE_PIN AH18 [get_ports fmc_multicam_iic_sda_io]
set_property PULLUP true [get_ports fmc_multicam_iic_scl_io]
set_property PULLUP true [get_ports fmc_multicam_iic_sda_io]
set_property IOSTANDARD LVCMOS12 [get_ports fmc_multicam_iic_scl_io]
set_property IOSTANDARD LVCMOS12 [get_ports fmc_multicam_iic_sda_io]
set_property DRIVE 8 [get_ports fmc_multicam_iic_scl_io]
set_property DRIVE 8 [get_ports fmc_multicam_iic_sda_io]

set_property PACKAGE_PIN AE18 [get_ports {fmc_multicam_iic_mux_rst_n[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {fmc_multicam_iic_mux_rst_n[0]}]

#POC1 CONTROL

set_property PACKAGE_PIN AA16 [get_ports {fmc_multicam_poc1_en[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {fmc_multicam_poc1_en[0]}]

set_property PACKAGE_PIN AJ17 [get_ports fmc_multicam_poc1_int]
set_property IOSTANDARD LVCMOS12 [get_ports fmc_multicam_poc1_int]

#POC2 CONTROL

set_property PACKAGE_PIN AC16 [get_ports {fmc_multicam_poc2_en[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {fmc_multicam_poc2_en[0]}]

set_property PACKAGE_PIN AB16 [get_ports fmc_multicam_poc2_int]
set_property IOSTANDARD LVCMOS12 [get_ports fmc_multicam_poc2_int]

#GMSL CONTROL

set_property PACKAGE_PIN AH17 [get_ports {fmc_multicam_max9286_pwdn_n[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {fmc_multicam_max9286_pwdn_n[0]}]

set_property PACKAGE_PIN AF18 [get_ports {fmc_multicam_max9286_fsync}]
set_property IOSTANDARD LVCMOS12 [get_ports {fmc_multicam_max9286_fsync}]

#GMSL2 CONTROL

set_property PACKAGE_PIN AD16 [get_ports {fmc_multicam_max9296_pwdn_n[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {fmc_multicam_max9296_pwdn_n[0]}]



#MIPI input termination
set_property DIFF_TERM true [get_ports {csi_mipi_phy_if_clk_*}]
set_property DIFF_TERM true [get_ports {csi_mipi_phy_if_data_*}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {csi_mipi_phy_if_clk_*}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {csi_mipi_phy_if_data_*}]
#####
## Constraints for HDMI UZ7EVCC
## Version 1.0
#####


#####
## Pins
#####

# HDMI RX
set_property PACKAGE_PIN B10 [get_ports HDMI_RX_CLK_P_IN]
#create_clock -name rx_mgt_refclk -period 3.367 [get_ports HDMI_RX_CLK_P_IN]

#set_property PACKAGE_PIN ??L27 [get_ports DRU_CLK_IN_clk_p]
#create_clock -name dru_mgt_refclk -period 6.400 [get_ports DRU_CLK_IN_clk_p]

set_property PACKAGE_PIN H14 [get_ports RX_HPD_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports RX_HPD_OUT]

set_property IOSTANDARD LVCMOS33 [get_ports RX_DDC_OUT_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports RX_DDC_OUT_sda_io]
set_property PACKAGE_PIN E12 [get_ports RX_DDC_OUT_scl_io]
set_property PACKAGE_PIN F12 [get_ports RX_DDC_OUT_sda_io]

#NO REC CLOCK
#set_property IOSTANDARD LVDS [get_ports RX_REFCLK_P_OUT]
#set_property PACKAGE_PIN ??AG5 [get_ports RX_REFCLK_P_OUT]

set_property PACKAGE_PIN G14 [get_ports RX_DET_IN]
set_property IOSTANDARD LVCMOS33 [get_ports RX_DET_IN]



# HDMI TX
set_property PACKAGE_PIN D10 [get_ports TX_REFCLK_P_IN]
#create_clock -name tx_mgt_refclk -period 3.367 [get_ports TX_REFCLK_P_IN]

# FROM LVDS TO DIFF_SSTL12, for use with FMC QUAD CAM 1.2V VCC0
set_property IOSTANDARD DIFF_SSTL12 [get_ports HDMI_TX_CLK_P_OUT]
set_property PACKAGE_PIN AD15 [get_ports HDMI_TX_CLK_P_OUT]

set_property IOSTANDARD LVCMOS33 [get_ports TX_HPD_IN]
set_property PACKAGE_PIN C14 [get_ports TX_HPD_IN]

set_property PACKAGE_PIN A14 [get_ports {TX_EN_OUT[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TX_EN_OUT[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports TX_DDC_OUT_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports TX_DDC_OUT_sda_io]
set_property PACKAGE_PIN E13 [get_ports TX_DDC_OUT_scl_io]
set_property PACKAGE_PIN E14 [get_ports TX_DDC_OUT_sda_io]
set_property PULLUP true [get_ports TX_DDC_OUT_scl_io]
set_property PULLUP true [get_ports TX_DDC_OUT_sda_io]

#
# HDMI Control I2C
#
# UZ7EV CC => HDMI_CTL_SDL/SDA (HD_SE_18_GC_N/P) => DP159 (U9) / M24C24 (U10)
set_property IOSTANDARD LVCMOS33 [get_ports fmch_iic_scl_io]
set_property PACKAGE_PIN F13 [get_ports fmch_iic_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports fmch_iic_sda_io]
set_property PACKAGE_PIN G13 [get_ports fmch_iic_sda_io]
set_property PULLUP true [get_ports fmch_iic_scl_io]
set_property PULLUP true [get_ports fmch_iic_sda_io]

# Misc
#GPIO_LED_8_LS instead of LED1 because we can't use bank 64 with LVCMOS18 (using LVCMOS12 for mipi)
set_property PACKAGE_PIN AG3 [get_ports LED1]
set_property IOSTANDARD LVCMOS18 [get_ports LED1]

#GPIO_LED_7_LS
set_property PACKAGE_PIN AG4 [get_ports TX_HPD_LED]
set_property IOSTANDARD LVCMOS18 [get_ports TX_HPD_LED]

#PB SW1
#set_property PACKAGE_PIN AA13 [get_ports TX_REFCLK_RDY_PB]
#set_property IOSTANDARD LVCMOS18 [get_ports TX_REFCLK_RDY_PB]

# GPIO_DIP_SW7
set_property PACKAGE_PIN AE10 [get_ports TX_REFCLK_RDY_PB]
set_property IOSTANDARD LVCMOS18 [get_ports TX_REFCLK_RDY_PB]

#NOT SURE: already HW connected to  CC_RESET_OUT_N
#set_property PACKAGE_PIN J12 [get_ports SI5324_RST_OUT]
#set_property IOSTANDARD LVCMOS33 [get_ports SI5324_RST_OUT]


#####
## End
#####

