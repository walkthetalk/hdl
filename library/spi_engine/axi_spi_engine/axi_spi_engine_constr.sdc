
#set_false_path -from [get_registers  *sync_gray:i_raddr_sync|cdc_sync_stage0*] -to [get_registers  *sync_gray:i_raddr_sync|cdc_sync_stage1*]
set_false_path -from {*axi_spi_engine:*|util_axis_fifo:*|fifo_address_gray_pipelined:*|sync_gray:*|cdc_sync_stage*} -to {*axi_spi_engine:*|util_axis_fifo:*|fifo_address_gray_pipelined:*|sync_gray:*|cdc_sync_stage*}

set_false_path -from {*axi_spi_engine:*|offload0_mem_reset_reg} -to {*axi_spi_engine:*|sync_bits:*|cdc_sync_stage1*}
set_false_path -from {*axi_spi_engine:*|offload0_enable_reg} -to {*axi_spi_engine:*|sync_bits:*|cdc_sync_stage1*}

