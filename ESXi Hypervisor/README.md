Telegraf configuration file for collecting ESXi hypervisor data using **`[[inputs.snmp]]`** plugin.

## Main Variables in Configuration
Based on your hypervisor SNMP configuration, you must change some values regarding it:
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

## Grafana Dashboard

Dashboard available for download on Grafana website [here](https://grafana.com/grafana/dashboards/18839).

![esxi](https://github.com/marjan-mesgarani/Telegraf-Config-Files/assets/96178946/2b23c007-2ded-45b1-bcf1-e7175a5726a2)
