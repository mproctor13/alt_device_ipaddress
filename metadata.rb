name             "alt_device_ipaddresss"
maintainer       "Michael P Proctor-Smith"
maintainer_email "mproctor13@gmail.com"
license          "Apache 2.0"
description      "Use ohai plugin to set ipaddress attribute to the address of alternate device."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "alt_device_ipaddress::default", "Uses ohai plugin to set ipaddress attribute to address of alternate device."
depends "ohai"

attribute "alt_device_ipaddress/device", 
  :display_name => "Alternate device.",
  :description => "The name of network device that should be used instead of default.",
  :type => "string",
  :required => "optional",
  :default => "venet0:0"
 
