
overlay_name := u96v2-dualcam-dpu
version := 3.0.1

all: dtbo zip
	@echo
	@tput setaf 2 ; echo "Packaged $(overlay_name) successfully!"; tput sgr0;
	@echo

clean:
	rm -rf *.zip $(overlay_name).dtbo dts/$(overlay_name).dtbo

zip: dtbo
	zip $(overlay_name)-$(version).zip $(overlay_name).bit $(overlay_name).dtbo $(overlay_name).hwh $(overlay_name).xclbin LICENSE

dtbo:
	make -C dts/
	cp dts/$(overlay_name).dtbo .


