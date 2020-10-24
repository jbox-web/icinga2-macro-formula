########################################################################
# File managed by Salt at <{{ source }}>.
# Your changes will be overwritten.
########################################################################

{%- from "icinga2-macro/macro.jinja" import icinga_serialize %}

object Host "{{ minion_id }}" {
  # Base config
  import   "generic-host"
  address  = "{{ ipv4 }}"
  address6 = "{{ ipv6 }}"
  check_period = "never"

  # SSH check config
  vars.by_ssh_port = {{ ssh_port }}
  {{ icinga_serialize(config) }}
}
