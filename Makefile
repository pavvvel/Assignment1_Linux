obj-m += hook_open.o
obj-m += hook_read.o
obj-m += hook_listen.o

all:
	make -C /lib/modules/`uname -r`/build M=$(PWD) modules

clean:
	make -C /lib/modules/`uname -r`/build M=$(PWD) clean