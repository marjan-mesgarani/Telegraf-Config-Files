Telegraf configuration file for collecting QNAP NAS Storage data using **`[[inputs.snmp]]`** plugin, alongside **`[[inputs.exec]]`** to execute the required script.

## Main Variables in Configuration
Based on your storage SNMP configuration, you must change some values regarding it:
- **agents**: Specify one or more target addresses using their IP addresses or their FQDN, followed by SNMP port number 161.
- **interval**: The interval in which Telegraf will request to pull this data from the target addresses specified in `agents`.
- **version**: Version of SNMP that was configured on the ESXi hypervisor, which could be 1, 2, or 3 (the following variables may differ based on this value).

The following list of variables may differ based on the target's SNMP version. For more information on these variables and other settings, check [this](https://github.com/influxdata/telegraf/tree/master/plugins/inputs/snmp#configuration) link.
- community
- sec_name
- auth_protocol
- auth_password
- sec_level
- priv_protocol
- priv_password

### Note
Don't forget to replace the SNMP credential fields with your storage SNMP credentials, both in **`.conf`** and **`.sh`** files.

## Grafana Dashboard

Dashboard available for download on Grafana website [here](https://grafana.com/grafana/dashboards/18842).

![qnap](https://github.com/marjan-mesgarani/Telegraf-Config-Files/assets/96178946/ba822205-291b-4a67-b375-7a0101945ffd)
