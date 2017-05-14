Etherate
========

[![Build Status](https://travis-ci.org/jwbensley/Etherate.svg?branch=master)](https://travis-ci.org/jwbensley/Etherate)
[![Bitdeli Badge](https://null.53bits.co.uk/uploads/programming/c/etherate/etherate-github-badge.png)](https://bitdeli.com/free "Bitdeli Badge")
[![PayPal Donate](https://img.shields.io/badge/paypal-donate-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=james%40bensley%2eme&lc=GB&item_name=Etherate&currency_code=GBP)


## Update:

 EtheratMT is now in beta: https://github.com/jwbensley/EtherateMT


#### What is it

    Etherate is a Linux CLI application for testing layer 2 Ethernet and MPLS
    connectivity. It generates Ethernet and MPLS frames for testing various
    devices (switches/routers/firewalls/DPI/flow monitoring etc) and to test
    traffic parsing/matching/filtering/forwarding.


#### Why was it made

    Programs such as iPerf/jPerf/Ostinato/PathEth/Scapy (to name just a few) 
    are excellent! They can saturate a link to measure throughput or simulate
    congestion and they allow the user to set custom DSCP values to test QoS.
    They usually operate at layer 3 or 4 of the OSI model using either TCP or
    UDP for data transport. Some of them use sockets defined by the OS that
    rely on the convoluted OS TCP/IP stack, others use 3rd party libraries
    (such as libpcap, NetMap etc).

    These programs are great for testing over a layer 3 boundary such as across
    the Internet, home broadband, client to server diagnostics etc. Etherate
    uses raw sockets within the OS operating directly over layer 2 to provide
    low level network analysis for Ethernet and MPLS connections without using
    any 3rd party libraries or kernel bypass techniques.

    The aim is free Ethernet and MPLS testing program that allows for advanced
    network analysis. With any modern day CPU and off the self NIC it should
    saturate up to a 10GigE link and allow for the testing of various metro and
    carrier Ethernet features (such tag swapping, 802.1p QoS, ethertype
    parsing, and so on). This should all be achievable without the need to
    install any 3rd party libraries. See INSTALL for details, Etherate can
    simply be compiled and executed from the folder it was downloaded to.


#### Current version

    Beta 0.11 (2017-03)


#### Current features

    Having moved from alpha to beta the current focus is to increase the
    feature set of Etherate, improve efficiency and fix bugs, before declaring
    it "production" ready.

    Currently working features which all operate directly over layer 2:
  
  - Any EtherType
  - Any Source MAC and/or Destination MAC
  - Any VLAN ID
  - Any priority (PCP) value
  - Supports double tagging (any inner and outer VLAN ID, any PCP)
  - Toggle DEI bit
  - Toggle frame acknowledgement
  - Optional speed limit in Mbps, MBps or Frames/p/s
  - Optional frame payload size
  - Optional transfer limit in MBs/GBs
  - Optional test duration
  - L2 storm (BUM) testing
  - One way delay measurement (at layer 2!)
  - Perform sweeping MTU test
  - Perform link quality tests (RTT & jitter, at layer 2!)
  - Simulate MPLS label stacks
  - Insert MPLS pseudowire control word
  - Load a custom frame from file for transmission
   - Some examples are provided to simulate BPDUs, ARP, ICMP, TCP


#### Development plan

    These are features currently being worked upon:
  
  - Report throughput if additional headers (IPv4/6/TCP/UDP) were present
  - The Etherate code is not object orientated, single threaded and only 
    uni-directionl so once the above feature list is completed development will
    cease (except for bug figxes), a new multi-threaded version is currently
    being developed: https://github.com/jwbensley/EtherateMT


#### Technical details

    Etherate is a single threaded application, despite which 10G throughput
    can be achieved on a 2.4Ghz Intel CPU with 10G Intel NIC. Etherate is
    not currently using NetMap/DPDK or the similar frameworks as it is intended
    to test the OS's native capabilities and be easily usable without 3rd party
    requirements.


#### More info, usage examples, FAQs can be found here:

    http://null.53bits.co.uk/index.php?page=etherate


#### Who made it (where to send your hate mail or nude pics)

    James Bensley [jwbensley at gmail dot com]

    Major credit is due for their code review and bug fixing efforts, to;
    Bradley Kite
    Bruno de Montis
    Christophe Lucas
