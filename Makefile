obj-m:=tcp_lixingcong.o

all:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(shell pwd)

.PHONY: clean
clean:
	rm -rf *.cmd *.o *.ko *.symvers *.order 
	rm -rf tmp_version
	rm -rf *.mod.c

.PHONY: install
install:
	install tcp_lixingcong.ko /lib/modules/$(shell uname -r)/kernel
	depmod -a

.PHONY: load
load:
	insmod tcp_lixingcong.ko

.PHONY: unload
unload:
	rmmod tcp_lixingcong.ko
