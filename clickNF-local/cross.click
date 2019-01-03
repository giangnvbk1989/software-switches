define($DEV0 iface, $ADDR0 10.0.20.2, $MAC0 90:E2:BA:CB:F5:38)
AddressInfo($DEV0 $ADDR0 $MAC0);

dpdk0 :: DPDK($DEV0, BURST 32, TX_RING_SIZE 512, RX_RING_SIZE 512, TX_IP_CHECKSUM 0, TX_TCP_CHECKSUM 0, RX_CHECKSUM 0, RX_STRIP_CRC 0);

define($DEV1 iface, $ADDR1 10.0.20.1, $MAC1 90:E2:BA:CB:F5:39)
dpdk1 :: DPDK($MAC1, BURST 32, TX_RING_SIZE 512, RX_RING_SIZE 512, TX_IP_CHECKSUM 0, TX_TCP_CHECKSUM 0, RX_CHECKSUM 0, RX_STRIP_CRC 0);

dpdk0 -> dpdk1;
dpdk1 -> dpdk0;
