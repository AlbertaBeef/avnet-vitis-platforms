DTB = u96v2-dualcam-dpu

all:
	dtc -I dts -O dtb -o $(DTB).dtbo $(DTB).dtsi -q

clean:
	rm -rf $(DTB).dtbo
