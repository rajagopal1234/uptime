# check_uptime
Simple script/plugin for monitoring Linux host uptime in Icinga/Icinga2/Nagios/etc. Returns a value in seconds by default.

## Installation

Place `check_uptime.sh` into you default plugin directory. For Nagios, Icinga and Icinga2 that is `/usr/lib/nagios/plugins` by default.


## Configuration

Currently only an example in Icinga2 is provided. More available upon request.

### Icinga2

As is with the nature of Icinga2, the below configuration may be placed and called from in any location by Icinga2. However, the author's examples (and practice) is to place them in the recommended files.

#### `conf.d/commands.conf`

```
object CheckCommand "uptime" {
  import "plugin-check-command"
  command = [ PluginDir + "/check_uptime.sh" ]
} 
````

#### `conf.d/services.conf`

```
apply Service "uptime" {
  import "generic-service"
  check_command = "uptime"
  assign where host.name == NodeName
}
```
## TODO

* add support for specifying seconds/minutes/hours/etc as output
* add support for exporting to graphite
