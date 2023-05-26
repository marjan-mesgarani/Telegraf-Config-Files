#!/bin/bash

result="{"

# ##########  CPU Usage  ##########
cpu=$(snmpwalk -v 3 -a SHA -A "xxXXsnmp_auth_passwordXXxx" -l authpriv -u "xxXXsnmp_usernameXXxx" -x DES -X "xxXXsnmp_priv_passwordXXxx" x.x.x.x .1.3.6.1.4.1.24681.1.2.1.0 | awk '{print $4}' | sed 's/^.//')
result+="\"cpu_usage_percent\": $cpu, "

# ##########  Memory Capacity  ##########
mem_total=$(snmpwalk -v 3 -a SHA -A "xxXXsnmp_auth_passwordXXxx" -l authpriv -u "xxXXsnmp_usernameXXxx" -x DES -X "xxXXsnmp_priv_passwordXXxx" x.x.x.x .1.3.6.1.4.1.24681.1.2.2.0 | awk '{print $4}' | sed 's/^.//')
result+="\"memory_total_mb\": $mem_total, "

# ##########  Memory Free  ##########
mem_free=$(snmpwalk -v 3 -a SHA -A "xxXXsnmp_auth_passwordXXxx" -l authpriv -u "xxXXsnmp_usernameXXxx" -x DES -X "xxXXsnmp_priv_passwordXXxx" x.x.x.x .1.3.6.1.4.1.24681.1.2.3.0 | awk '{print $4}' | sed 's/^.//')
result+="\"memory_free_mb\": $mem_free, "

# ##########  CPU Temperature  ##########
cpu_temp=$(snmpwalk -v 3 -a SHA -A "xxXXsnmp_auth_passwordXXxx" -l authpriv -u "xxXXsnmp_usernameXXxx" -x DES -X "xxXXsnmp_priv_passwordXXxx" x.x.x.x .1.3.6.1.4.1.24681.1.2.5.0 | awk '{print $4}' | sed 's/^.//')
result+="\"cpu_temperature_celsius\": $cpu_temp, "

# ##########  System Temperature  ##########
sys_temp=$(snmpwalk -v 3 -a SHA -A "xxXXsnmp_auth_passwordXXxx" -l authpriv -u "xxXXsnmp_usernameXXxx" -x DES -X "xxXXsnmp_priv_passwordXXxx" x.x.x.x .1.3.6.1.4.1.24681.1.2.6.0 | awk '{print $4}' | sed 's/^.//')
result+="\"system_temperature_celsius\": $sys_temp}"

echo $result
