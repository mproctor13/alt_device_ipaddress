alt_device_ipaddress Cookbook
=============

Chef cookbook to set node[:ipaddress] to ipaddress of a device other then the default device using ohai plugin.

Attributes
----------
- `node['alt_device_ipaddress']['device']` - The device that ohai should use to set the node's ipaddress attribute.


Usage
-----
Include 'alt_device_ipaddress' recipe in the node run list to set node[:ipaddress] to non-default device.

```json
{
  "name":"weird_network",
  "alt_device_ipaddress": {
    "device": "eth1"
  },
  "run_list": [
    "recipe[alt_device_ipaddress]"
  ]
}
```

License & Authors
-----------------
- Author:: Michael Proctor-Smith (<mproctor13@gmail.com>)

```text
Copyright:: 2015, Michael Proctor-Smith

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
