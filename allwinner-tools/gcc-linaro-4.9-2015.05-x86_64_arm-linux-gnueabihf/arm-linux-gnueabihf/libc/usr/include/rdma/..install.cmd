cmd_/home/tcwg-buildslave/workspace/tcwg-make-release/label/tcwg-x86_64/target/arm-linux-gnueabihf/_build/sysroots/arm-linux-gnueabihf/usr/include/rdma/.install := /bin/bash scripts/headers_install.sh /home/tcwg-buildslave/workspace/tcwg-make-release/label/tcwg-x86_64/target/arm-linux-gnueabihf/_build/sysroots/arm-linux-gnueabihf/usr/include/rdma ./include/uapi/rdma ib_user_cm.h ib_user_mad.h ib_user_sa.h ib_user_verbs.h rdma_netlink.h rdma_user_cm.h; /bin/bash scripts/headers_install.sh /home/tcwg-buildslave/workspace/tcwg-make-release/label/tcwg-x86_64/target/arm-linux-gnueabihf/_build/sysroots/arm-linux-gnueabihf/usr/include/rdma ./include/rdma ; /bin/bash scripts/headers_install.sh /home/tcwg-buildslave/workspace/tcwg-make-release/label/tcwg-x86_64/target/arm-linux-gnueabihf/_build/sysroots/arm-linux-gnueabihf/usr/include/rdma ./include/generated/uapi/rdma ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/tcwg-buildslave/workspace/tcwg-make-release/label/tcwg-x86_64/target/arm-linux-gnueabihf/_build/sysroots/arm-linux-gnueabihf/usr/include/rdma/$$F; done; touch /home/tcwg-buildslave/workspace/tcwg-make-release/label/tcwg-x86_64/target/arm-linux-gnueabihf/_build/sysroots/arm-linux-gnueabihf/usr/include/rdma/.install
