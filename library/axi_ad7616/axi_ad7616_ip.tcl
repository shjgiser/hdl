# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip.tcl

adi_ip_create axi_ad7616
adi_ip_files axi_ad7616 [list \
    "axi_ad7616.v" \
    "axi_ad7616_control.v" \
    "$ad_hdl_dir/library/common/ad_edge_detect.v" \
    "$ad_hdl_dir/library/common/up_axi.v"]

adi_ip_properties axi_ad7616

adi_ip_add_core_dependencies { \
    analog.com:user:spi_engine_execution:1.0 \
    analog.com:user:axi_spi_engine:1.0 \
    analog.com:user:spi_engine_offload:1.0 \
    analog.com:user:spi_engine_interconnect:1.0 \
}

ipx::save_core [ipx::current_core]

