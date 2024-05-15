# Get into privileged mode
enable

# Verify and check configuration
show running-config

# Configure the hostname
config t
    hostname S1
exit

# Securing access to the console line
config t
    line console 0
    password cisco
    login
exit

# Securing privileged mode access
config t
    enable password class
exit

# Configure an encrypted password to secure access to the privileged mode
config t
    enable secret cisco
exit

# Encrypt the enable and console passwords
config t
    service password-encryption
exit

# Set banner motd
config t
    banner motd "Hello World!"
exit

#Verify that the configuration is accurate using the show run command
enable
    copy running-config startup-config
        [Enter]
[OK]

# Save the configuration
enable
    write memory

# Configure IP Addressing & subnet mask on the switch
config t
    interface vlan 1
        ip address 192.168.1.253 255.255.255.0
        no shutdown
exit

# Verify the IP Address configuration
enable
    show ip interface brief
[Interface     IP-Address      OK? Method Status]

# Configure the default gateway
config t
    ip default-gateway
exit
