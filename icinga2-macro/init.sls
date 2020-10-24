# -*- coding: utf-8 -*-
# vim: ft=sls

{% set data = salt['pillar.get']('icinga2_macro', {}) %}

/tmp/icinga2.conf:
  file.managed:
    - template: jinja
    - source: salt://icinga2-macro/files/host.tpl
    - context:
        minion_id: "foo.example.net"
        ipv4:      "127.0.0.1"
        ipv6:      "fe80::c167:ad49:e171:29c3"
        ssh_port:  22
        config:    {{ data }}
