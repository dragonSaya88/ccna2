Install-WindowsFeature  -name DNS  -includeManagementTools
Add-DnsServerPrimaryZone -Name "ngcp32.ph" -ZoneFile "ngcp32.ph.dns"
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name ns -ipv4address 10.32.1.10
add-DnsServerResourceRecord -zonename ngcp32.ph -Cname -name www -hostname ns.ngcp32.ph
add-DnsServerResourceRecord -zonename ngcp32.ph -Cname -name smtp -hostname ns.ngcp32.ph
add-DnsServerResourceRecord -zonename ngcp32.ph -Cname -name pop -hostname ns.ngcp32.ph
add-DnsServerResourceRecord -zonename ngcp32.ph -Cname -name imap -hostname ns.ngcp32.ph
### For CISCO Devices DNS Records
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name cb -ipv4address 10.32.1.4
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name ct -ipv4address 10.32.1.2
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name cm -ipv4address 10.32.100.8
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name ed -ipv4address 10.32.32.1
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name p1 -ipv4address 10.32.100.101
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name p2 -ipv4address 10.32.100.103
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name c1 -ipv4address 10.32.50.6
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name c2 -ipv4address 10.32.50.8
add-DnsServerResourceRecord -zonename ngcp32.ph -A -name ap -ipv4address 10.32.10.3