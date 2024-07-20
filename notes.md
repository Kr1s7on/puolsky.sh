# IT1304 Network Administration

## Topic 4 - Data Link Layer

### Notes

- **Purpose**: Responsible for node-to-node data transfer and error detection/correction.
- **Functions**:
  - **Framing**: Encapsulates data into frames.
  - **Error Detection and Correction**: Uses methods like CRC (Cyclic Redundancy Check).
  - **Flow Control**: Manages data flow between sender and receiver.
  - **MAC (Media Access Control)**: Controls how devices on a network gain access to data and permission to transmit it.
- **Sub-layers**:
  - **Logical Link Control (LLC)**: Manages communication between the network layer and the data link layer.
  - **Media Access Control (MAC)**: Manages protocol access to the physical network medium.

### Quiz

1. What is the primary purpose of the Data Link Layer?
2. Explain the function of framing in the Data Link Layer.
3. What are the two sub-layers of the Data Link Layer and their functions?

**Answers**:

1. To handle node-to-node data transfer and error detection/correction.
2. Framing involves encapsulating data into frames for transmission over the network.
3. LLC (manages communication between the network layer and data link layer) and MAC (controls access to the physical network medium).

## Topic 5 - Network Layer

### Notes

- **Purpose**: Manages device addressing, tracks the location of devices on the network, and determines the best way to move data.
- **Functions**:
  - **Routing**: Determines the optimal path for data transfer.
  - **Logical Addressing**: Assigns IP addresses to devices.
- **Protocols**:
  - **IP (Internet Protocol)**: Primary protocol for sending data packets across networks.
  - **ICMP (Internet Control Message Protocol)**: Used for error messages and operational information.
  - **ARP (Address Resolution Protocol)**: Maps IP addresses to MAC addresses.
- **Key Devices**: Routers.

### Quiz

1. What is the main function of the Network Layer?
2. Name two key protocols used in the Network Layer.
3. What device is primarily associated with the Network Layer?

**Answers**:

1. To manage device addressing and determine the best path for data transfer.
2. IP (Internet Protocol) and ICMP (Internet Control Message Protocol).
3. Routers.

## Topic 6 & 7 - IPv4 Addressing

### Notes

- **IPv4 Address Structure**: 32-bit address divided into four octets.
- **Classes of IPv4 Addresses**:
  - **Class A**: 1.0.0.0 to 126.0.0.0
  - **Class B**: 128.0.0.0 to 191.255.0.0
  - **Class C**: 192.0.0.0 to 223.255.255.0
  - **Class D**: 224.0.0.0 to 239.255.255.255 (Multicast)
  - **Class E**: 240.0.0.0 to 255.255.255.255 (Reserved)
- **Private IP Addresses**:
  - **Class A**: 10.0.0.0 to 10.255.255.255
  - **Class B**: 172.16.0.0 to 172.31.255.255
  - **Class C**: 192.168.0.0 to 192.168.255.255
- **Special Addresses**:
  - **Loopback**: 127.0.0.1
  - **APIPA (Automatic Private IP Addressing)**: 169.254.0.0 to 169.254.255.255

### Quiz

1. What is the range of Class A IPv4 addresses?
2. Which IPv4 address is used for loopback testing?
3. Name one range of private IP addresses.

**Answers**:

1. 1.0.0.0 to 126.0.0.0
2. 127.0.0.1
3. 10.0.0.0 to 10.255.255.255 (Class A)

## Topic 8 - IPv4 Subnetting

### Notes

- **Purpose**: Divides a large network into smaller, more manageable sub-networks.
- **Subnet Mask**: Defines the network and host portions of an IP address.
- **CIDR (Classless Inter-Domain Routing)**: Allows for more flexible IP address allocation than traditional subnetting.
- **Calculation Steps**:
  - Determine the number of required subnets.
  - Calculate the subnet mask.
  - Identify subnet addresses.
  - Determine the range of host addresses for each subnet.
  - Identify broadcast addresses.

### Quiz

1. What is the primary purpose of subnetting?
2. What does a subnet mask do?
3. Explain CIDR in simple terms.

**Answers**:

1. To divide a large network into smaller sub-networks.
2. A subnet mask defines the network and host portions of an IP address.
3. CIDR allows for flexible IP address allocation, breaking away from the fixed classes of IP addresses.

## Topic 11 - Basic Router Configuration

### Notes

- **Initial Setup**: Access the router using console, SSH, or web interface.
- **Basic Commands**:
  - `enable`: Access privileged EXEC mode.
  - `configure terminal`: Enter global configuration mode.
  - `interface [type and number]`: Enter interface configuration mode.
  - `ip address [IP address] [subnet mask]`: Assign an IP address to an interface.
  - `no shutdown`: Activate an interface.
- **Saving Configuration**:
  - `copy running-config startup-config`: Save the current configuration to be used on reboot.

### Quiz

1. How do you access privileged EXEC mode on a router?
2. Which command is used to assign an IP address to an interface?
3. How do you save the current router configuration?

**Answers**:

1. Use the `enable` command.
2. Use the `ip address [IP address] [subnet mask]` command in interface configuration mode.
3. Use the `copy running-config startup-config` command.

## Topic 12 - IPv6 Addressing

### Notes

- **IPv6 Address Structure**: 128-bit address divided into eight 16-bit blocks.
- **Types of IPv6 Addresses**:
  - **Unicast**: Identifies a single interface.
  - **Anycast**: Assigned to a group of interfaces, but the packet is delivered to the nearest one.
  - **Multicast**: Delivered to multiple interfaces.
- **Address Format**:
  - **Global Unicast**: Routable on the internet, similar to IPv4 public addresses.
  - **Link-Local**: Used for communication within the local network segment.
  - **Unique Local**: Similar to IPv4 private addresses.
- **Prefix Notation**: Similar to CIDR, e.g., 2001:0db8::/32.

### Quiz

1. How many bits are in an IPv6 address?
2. What type of IPv6 address is similar to an IPv4 public address?
3. Explain the purpose of link-local addresses.

**Answers**:

1. 128 bits.
2. Global Unicast address.
3. Link-local addresses are used for communication within the local network segment.

## Topic 13 - Transport Layer

### Notes

- **Purpose**: Provides end-to-end communication services for applications.
- **Protocols**:
  - **TCP (Transmission Control Protocol)**: Connection-oriented, reliable, and ensures data delivery.
  - **UDP (User Datagram Protocol)**: Connectionless, faster, but no guarantee of delivery.
- **Functions**:
  - **Segmentation**: Divides large messages into smaller segments.
  - **Error Detection**: Checks for errors in transmitted data.
  - **Flow Control**: Manages the rate of data transmission between sender and receiver.

### Quiz

1. What are the two main protocols used in the Transport Layer?
2. What is the difference between TCP and UDP?
3. What is segmentation in the Transport Layer?

**Answers**:

1. TCP (Transmission Control Protocol) and UDP (User Datagram Protocol).
2. TCP is connection-oriented and reliable, while UDP is connectionless and faster but does not guarantee delivery.
3. Segmentation divides large messages into smaller segments for transmission.

## Topic 14 - Application Layer

### Notes

- **Purpose**: Provides network services to applications.
- **Common Protocols**:
  - **HTTP (HyperText Transfer Protocol)**: Used for web browsing.
  - **FTP (File Transfer Protocol)**: Used for transferring files.
  - **SMTP (Simple Mail Transfer Protocol)**: Used for sending emails.
  - **DNS (Domain Name System)**: Translates domain names to IP addresses.
- **Functions**:
  - **Data Exchange**: Facilitates data exchange between applications.
  - **Resource Sharing**: Allows applications to share network resources.

### Quiz

1. What is the primary purpose of the Application Layer?
2. Name two common protocols used in the Application Layer.
3. What is the role of DNS?

**Answers**:

1. To provide network services to applications.
2. HTTP (HyperText Transfer Protocol) and FTP (File Transfer Protocol).
3. DNS translates domain names to IP addresses.

## Glossary

- **CRC (Cyclic Redundancy Check)**: A method of detecting errors in transmitted messages.
- **LLC (Logical Link Control)**: A sub-layer of the Data Link Layer that manages communication between the network layer and the data link layer.
- **MAC (Media Access Control)**: A sub-layer of the Data Link Layer that controls access to the physical network medium.
- **IP (Internet Protocol)**: A protocol for sending data packets across networks.
- **ICMP (Internet Control Message Protocol)**: A protocol used for error messages and operational information.
- **ARP (Address Resolution Protocol)**: A protocol that maps IP addresses to MAC addresses.
- **CIDR (Classless Inter-Domain Routing)**: A method for allocating IP addresses and routing IP packets.
- **TCP (Transmission Control Protocol)**: A connection-oriented protocol that ensures reliable data delivery.
- **UDP (User Datagram Protocol)**: A connectionless protocol that is faster but does not guarantee delivery.
- **HTTP (HyperText Transfer Protocol)**: A protocol used for web browsing.
- **FTP (File Transfer Protocol)**: A protocol used for transferring files.
- **SMTP (Simple Mail Transfer Protocol)**: A protocol used for sending emails.
- **DNS (Domain Name System)**: A system that translates domain names to IP addresses.
