# IT1304 Network Administration

<details>
<summary>TLDR Version</summary>

## Topic 1 - Networking Today

- **Networking Types**: LAN, WAN, MAN, PAN.
- **Trends**: IoT, BYOD, Cloud Computing.

## Topic 2 - Networking Protocols and Communications

- **Protocols**: HTTP, FTP, SMTP, TCP/IP.
- **Models**: OSI (7 layers), TCP/IP (4 layers).

## Topic 3 - Physical Layer

- **Purpose**: Physical connection, transmission of raw data.
- **Media**: Copper cables, fiber optic cables, wireless.
- **Devices**: Hubs, repeaters.

## Topic 4 - Data Link Layer

- **Purpose**: Node-to-node data transfer, error detection/correction.
- **Functions**: Framing, error detection, flow control, MAC.
- **Sub-layers**: LLC, MAC.

## Topic 5 - Network Layer

- **Purpose**: Routing data packets across networks.
- **Protocols**: IP, ICMP, ARP.
- **Functions**: Addressing, packet forwarding, path determination.

## Topic 6 & 7 - IPv4 Addressing

- **IPv4 Structure**: 32-bit address, four octets.
- **Classes**: A, B, C, D, E.
- **Private Addresses**: Not routable on the internet (e.g., 192.168.x.x).

## Topic 8 - IPv4 Subnetting

- **Purpose**: Dividing a network into smaller sub-networks.
- **CIDR**: Notation for defining IP ranges (e.g., /24).
- **Subnet Mask**: Determines network and host portions of an IP address.

## Topic 11 - Basic Router Configuration

- **Purpose**: Directs data packets between networks.
- **Commands**: `configure terminal`, `interface`, `ip address`, `no shutdown`.
- **Security**: Setting passwords, access control lists (ACLs).

## Topic 12 - IPv6 Addressing

- **Structure**: 128-bit address, eight 16-bit blocks.
- **Types**: Unicast, Anycast, Multicast.
- **Formats**: Global Unicast, Link-Local, Unique Local.

## Topic 13 - Transport Layer

- **Purpose**: End-to-end communication services.
- **Protocols**: TCP (reliable, connection-oriented), UDP (fast, connectionless).
- **Functions**: Segmentation, error detection, flow control.

## Topic 14 - Application Layer

- **Purpose**: Provides network services to applications.
- **Protocols**: HTTP, FTP, SMTP, DNS.
- **Functions**: Data exchange, resource sharing.

</details>

## Topic 1 - Networking Today

### Notes

- **Importance of Networking**:
  - Facilitates communication and resource sharing.
  - Essential for business operations, entertainment, and personal communication.
- **Types of Networks**:
  - **LAN (Local Area Network)**: Covers a small geographical area like a building.
  - **WAN (Wide Area Network)**: Covers a large geographical area, such as a city or country.
  - **MAN (Metropolitan Area Network)**: Covers a city or a large campus.
  - **PAN (Personal Area Network)**: Covers a small area, typically around a person.
- **Trends in Networking**:
  - **IoT (Internet of Things)**: Connecting everyday objects to the internet.
  - **BYOD (Bring Your Own Device)**: Employees using personal devices for work.
  - **Cloud Computing**: Storing and accessing data and applications over the internet.

### Quiz

1. What is the primary function of a network?
2. Differentiate between LAN and WAN.
3. What does IoT stand for and what is its purpose?

**Answers**:

1. To facilitate communication and resource sharing.
2. LAN covers a small geographical area, while WAN covers a large geographical area.
3. IoT stands for Internet of Things, and its purpose is to connect everyday objects to the internet.

## Topic 2 - Networking Protocols and Communications

### Notes

- **Protocols**: Rules and conventions for communication between network devices.
  - **HTTP (HyperText Transfer Protocol)**: Used for web browsing.
  - **FTP (File Transfer Protocol)**: Used for transferring files.
  - **SMTP (Simple Mail Transfer Protocol)**: Used for sending emails.
  - **TCP/IP (Transmission Control Protocol/Internet Protocol)**: Suite of protocols used for communication over the internet.
- **Communication Models**:
  - **OSI Model (Open Systems Interconnection)**: Seven-layer model for understanding network communication.
    1. Physical Layer
    2. Data Link Layer
    3. Network Layer
    4. Transport Layer
    5. Session Layer
    6. Presentation Layer
    7. Application Layer
  - **TCP/IP Model**: Four-layer model that includes:
    1. Network Interface Layer
    2. Internet Layer
    3. Transport Layer
    4. Application Layer

### Quiz

1. What is a protocol in networking?
2. Name two common protocols used in networking.
3. How many layers are there in the OSI model?

**Answers**:

1. A protocol is a set of rules and conventions for communication between network devices.
2. HTTP (HyperText Transfer Protocol) and FTP (File Transfer Protocol).
3. Seven layers.

## Topic 3 - Physical Layer

### Notes

- **Purpose**: Responsible for the physical connection between devices.
- **Functions**:
  - **Transmission of Raw Data**: Converts digital data into electrical, optical, or radio signals.
  - **Media Types**:
    - **Copper Cables**: Twisted pair and coaxial cables.
    - **Fiber Optic Cables**: Transmit data as light pulses.
    - **Wireless**: Transmits data using radio waves.
- **Standards**:
  - **Ethernet**: Standard for wired networks.
  - **Wi-Fi**: Standard for wireless networks.
- **Key Devices**:
  - **Hubs**: Connect multiple Ethernet devices, making them act as a single network segment.
  - **Repeaters**: Amplify signals to extend the distance they can travel.

### Quiz

1. What is the primary purpose of the Physical Layer?
2. Name two types of media used in the Physical Layer.
3. What is the function of a repeater?

**Answers**:

1. To manage the physical connection between devices.
2. Copper cables (e.g., twisted pair and coaxial) and fiber optic cables.
3. A repeater amplifies signals to extend their travel distance.

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
