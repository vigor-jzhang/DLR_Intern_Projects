# TCL File Generated by Component Editor 15.0
# Tue Nov 22 14:16:04 CET 2016
# DO NOT MODIFY


# 
# RFSend "RFSend" v1.0
# JW Zhang 2016.11.22.14:16:04
# Myriad RF Board Send Module
# 

# 
# request TCL package from ACDS 15.0
# 
package require -exact qsys 15.0


# 
# module RFSend
# 
set_module_property DESCRIPTION "Myriad RF Board Send Module"
set_module_property NAME RFSend
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP MyriadRFPorject
set_module_property AUTHOR "JW Zhang"
set_module_property DISPLAY_NAME RFSend
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL RFSend
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file RFSend.vhd VHDL PATH RFSend.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock SysClock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point conduit
# 
add_interface conduit conduit end
set_interface_property conduit associatedClock TxClock
set_interface_property conduit associatedReset reset
set_interface_property conduit ENABLED true
set_interface_property conduit EXPORT_OF ""
set_interface_property conduit PORT_NAME_MAP ""
set_interface_property conduit CMSIS_SVD_VARIABLES ""
set_interface_property conduit SVD_ADDRESS_GROUP ""

add_interface_port conduit SendEnable en_in Input 1
add_interface_port conduit TXD rftxdata Output 12
add_interface_port conduit TXEN rftxen Output 1
add_interface_port conduit TXIQSEL rftxiqsel Output 1


# 
# connection point IDataFIFO
# 
add_interface IDataFIFO avalon_streaming end
set_interface_property IDataFIFO associatedClock IDataFIFOCLK
set_interface_property IDataFIFO associatedReset reset
set_interface_property IDataFIFO dataBitsPerSymbol 8
set_interface_property IDataFIFO errorDescriptor ""
set_interface_property IDataFIFO firstSymbolInHighOrderBits true
set_interface_property IDataFIFO maxChannel 0
set_interface_property IDataFIFO readyLatency 0
set_interface_property IDataFIFO ENABLED true
set_interface_property IDataFIFO EXPORT_OF ""
set_interface_property IDataFIFO PORT_NAME_MAP ""
set_interface_property IDataFIFO CMSIS_SVD_VARIABLES ""
set_interface_property IDataFIFO SVD_ADDRESS_GROUP ""

add_interface_port IDataFIFO rfSend_i_data data Input 16
add_interface_port IDataFIFO rfSend_i_ready ready Output 1
add_interface_port IDataFIFO rfSend_i_valid valid Input 1


# 
# connection point IDataFIFOCLK
# 
add_interface IDataFIFOCLK clock start
set_interface_property IDataFIFOCLK associatedDirectClock ""
set_interface_property IDataFIFOCLK clockRate 16000000
set_interface_property IDataFIFOCLK clockRateKnown false
set_interface_property IDataFIFOCLK ENABLED true
set_interface_property IDataFIFOCLK EXPORT_OF ""
set_interface_property IDataFIFOCLK PORT_NAME_MAP ""
set_interface_property IDataFIFOCLK CMSIS_SVD_VARIABLES ""
set_interface_property IDataFIFOCLK SVD_ADDRESS_GROUP ""

add_interface_port IDataFIFOCLK rfSend_i_clk clk Output 1


# 
# connection point TxClock
# 
add_interface TxClock clock end
set_interface_property TxClock clockRate 32000000
set_interface_property TxClock ENABLED true
set_interface_property TxClock EXPORT_OF ""
set_interface_property TxClock PORT_NAME_MAP ""
set_interface_property TxClock CMSIS_SVD_VARIABLES ""
set_interface_property TxClock SVD_ADDRESS_GROUP ""

add_interface_port TxClock TXCLK clk Input 1


# 
# connection point SysClock
# 
add_interface SysClock clock end
set_interface_property SysClock clockRate 50000000
set_interface_property SysClock ENABLED true
set_interface_property SysClock EXPORT_OF ""
set_interface_property SysClock PORT_NAME_MAP ""
set_interface_property SysClock CMSIS_SVD_VARIABLES ""
set_interface_property SysClock SVD_ADDRESS_GROUP ""

add_interface_port SysClock clk clk Input 1


# 
# connection point QDataFIFO
# 
add_interface QDataFIFO avalon_streaming end
set_interface_property QDataFIFO associatedClock QDataFIFOCLK
set_interface_property QDataFIFO associatedReset reset
set_interface_property QDataFIFO dataBitsPerSymbol 8
set_interface_property QDataFIFO errorDescriptor ""
set_interface_property QDataFIFO firstSymbolInHighOrderBits true
set_interface_property QDataFIFO maxChannel 0
set_interface_property QDataFIFO readyLatency 0
set_interface_property QDataFIFO ENABLED true
set_interface_property QDataFIFO EXPORT_OF ""
set_interface_property QDataFIFO PORT_NAME_MAP ""
set_interface_property QDataFIFO CMSIS_SVD_VARIABLES ""
set_interface_property QDataFIFO SVD_ADDRESS_GROUP ""

add_interface_port QDataFIFO rfSend_q_data data Input 16
add_interface_port QDataFIFO rfSend_q_ready ready Output 1
add_interface_port QDataFIFO rfSend_q_valid valid Input 1


# 
# connection point QDataFIFOCLK
# 
add_interface QDataFIFOCLK clock start
set_interface_property QDataFIFOCLK associatedDirectClock ""
set_interface_property QDataFIFOCLK clockRate 16000000
set_interface_property QDataFIFOCLK clockRateKnown false
set_interface_property QDataFIFOCLK ENABLED true
set_interface_property QDataFIFOCLK EXPORT_OF ""
set_interface_property QDataFIFOCLK PORT_NAME_MAP ""
set_interface_property QDataFIFOCLK CMSIS_SVD_VARIABLES ""
set_interface_property QDataFIFOCLK SVD_ADDRESS_GROUP ""

add_interface_port QDataFIFOCLK rfSend_q_clk clk Output 1
