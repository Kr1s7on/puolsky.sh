# =====================================================================

# Compiled Commands for Cisco Packet Tracer

#                               \\\\\\\
#                             \\\\\\\\\\\\
#                           \\\\\\\\\\\\\\\
#   -----------,-|           |C>   // )\\\\|
#            ,','|          /    || ,'/////|
# ---------,','  |         (,    ||   /////
#          ||    |          \\  ||||//''''|
#          ||    |           |||||||     _|
#          ||    |______      `````\____/ \
#          ||    |     ,|         _/_____/ \
#          ||  ,'    ,' |        /          |
#          ||,'    ,'   |       |         \  |
# _________|/    ,'     |      /           | |
# _____________,'      ,',_____|      |    | |
#              |     ,','      |      |    | |
#              |   ,','    ____|_____/    /  |
#              | ,','  __/ |             /   |
# _____________|','   ///_/-------------/   |
#               |===========,'

# =====================================================================

# Enter privileged mode
enable

# Verify current configuration
show running-config

# Global Configuration Mode
config t
    # Configure hostname
    hostname S1

    # Secure privileged mode access
    enable password ilovenetadmin
    enable secret y1s1daaa

    # Encrypt passwords
    service password-encryption

    # Set a banner
    banner motd "Unauthorized access is prohibited"

    # Secure access to the console line
    line console 0
        password @Cons1234!
        login
        exec-timeout 7 0

    # Configure IP addressing and subnet mask on the switch
    interface vlan 1
        ip address 192.168.1.253 255.255.255.0
        ipv6 address 2001:db8::1/64
        no shutdown

    # Configure the default gateway
    ip default-gateway 192.168.1.1

    # Disable DNS lookup to prevent resolving mistyped commands to domain names
    no ip domain-lookup

    # Require passwords to be at least 10 characters in length
    security passwords min-length 10

    # Configure SSH for remote access
    ip domain-name cisco.com
    crypto key generate rsa
    ip ssh version 2

    # Configure the VTY lines to use SSH and local username/password for authentication
    line vty 0 15
        transport input ssh
        login local
        exec-timeout 7 0

    # Create a user with an encrypted password
    username NETadmin secret LogAdmin!9

    # Enable IPv6 routing
    ipv6 unicast-routing

    # Additional configurations

    # Configure VLANs
    vlan 10
        name Sales
    vlan 20
        name Marketing

    # Assign VLAN to an interface
    interface fastethernet 0/1
        switchport mode access
        switchport access vlan 10

    # Configure trunking on an interface
    interface fastethernet 0/24
        switchport mode trunk
        switchport trunk allowed vlan 10,20

    # Set up port security
    interface fastethernet 0/1
        switchport port-security
        switchport port-security maximum 2
        switchport port-security violation restrict
        switchport port-security mac-address sticky

    # Configure Spanning Tree Protocol (STP) to prevent loops
    spanning-tree mode rapid-pvst
    spanning-tree vlan 1 root primary

    # Configure EtherChannel
    interface range fastethernet 0/1 - 2
        channel-group 1 mode active
    interface port-channel 1
        switchport mode trunk

    # Enable CDP (Cisco Discovery Protocol)
    cdp run
exit

# Save the configuration to startup-config
copy running-config startup-config
write memory

# Verify configurations
show ip interface brief
show ipv6 interface brief
show ip ssh
show etherchannel summary
show cdp neighbors
