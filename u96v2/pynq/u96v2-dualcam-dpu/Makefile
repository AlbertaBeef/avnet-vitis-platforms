
overlay_name := u96v2-dualcam-dpu
version := 3.0.1

all: dtbo ko fw zip
	@echo
	@tput setaf 2 ; echo "Packaged $(overlay_name) successfully!"; tput sgr0;
	@echo

clean:
	rm -rf *.zip $(overlay_name).dtbo dts/$(overlay_name).dtbo

zip: dtbo ko fw
	zip $(overlay_name)-$(version).zip $(overlay_name).bit $(overlay_name).dtbo $(overlay_name).hwh $(overlay_name).xclbin ap1302.ko ap1302_ar0144_dual_fw.bin LICENSE

dtbo:
	make -C dts/
	cp dts/$(overlay_name).dtbo .

ko:
	cp ../../petalinux/build/tmp/sysroots-components/u96v2_sbc/ap1302/lib/modules/5.15.19-xilinx-v2022.1/extra/ap1302.ko .
	
fw:
	cp ../../petalinux/project-spec/meta-user/recipes-bsp/ap1302-firmware/files/ap1302_ar0144_dual_fw.bin .	
