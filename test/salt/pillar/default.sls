# -*- coding: utf-8 -*-
# vim: ft=yaml
---
config_template: &config_template
  string: string
  empty_string: ''
  empty_hash: {}
  empty_array: []
  integer: 1000
  float: 3.14
  bool_true: true
  bool_false: false
  null_value: null
  ipv4: '1.2.3.4'
  ipv6: 'fe80::c167:ad49:e171:29c3'
  array:
    - string
    - ''
    - {}
    - []
    - 1000
    - 3.14
    - true
    - false
    - null
    - '1.2.3.4'
    - 'fe80::c167:ad49:e171:29c3'
    - [string, '', {}, [], 1000, 3.14, true, false, null, '1.2.3.4', 'fe80::c167:ad49:e171:29c3', { foo: bar, bar: [], baz: {} }]
  array_of_arrays:
    - [string, '', {}, [], 1000, 3.14, true, false, null, '1.2.3.4', 'fe80::c167:ad49:e171:29c3', { foo: bar, bar: [], baz: {} }]
    - [string, '', {}, [], 1000, 3.14, true, false, null, '1.2.3.4', 'fe80::c167:ad49:e171:29c3', { foo: bar, bar: [], baz: {} }]
  array_of_hashes:
    - string: string
      empty_string: ''
      empty_hash: {}
      empty_array: []
      integer: 1000
      float: 3.14
      bool_true: true
      bool_false: false
      null_value: null
      ipv4: '1.2.3.4'
      ipv6: 'fe80::c167:ad49:e171:29c3'
      array:
        - string
        - ''
        - {}
        - []
        - 1000
        - 3.14
        - true
        - false
        - null
        - '1.2.3.4'
        - 'fe80::c167:ad49:e171:29c3'
        - [string, '', {}, [], 1000, 3.14, true, false, null, '1.2.3.4', 'fe80::c167:ad49:e171:29c3', { foo: bar, bar: [], baz: {} }]
    - string: string
      empty_string: ''
      empty_hash: {}
      empty_array: []
      integer: 1000
      float: 3.14
      bool_true: true
      bool_false: false
      null_value: null
      ipv4: '1.2.3.4'
      ipv6: 'fe80::c167:ad49:e171:29c3'
      array:
        - string
        - ''
        - {}
        - []
        - 1000
        - 3.14
        - true
        - false
        - null
        - '1.2.3.4'
        - 'fe80::c167:ad49:e171:29c3'
        - [string, '', {}, [], 1000, 3.14, true, false, null, '1.2.3.4', 'fe80::c167:ad49:e171:29c3', { foo: bar, bar: [], baz: {} }]
  array_of_mix:
    - [string, '', {}, [], 1000, 3.14, true, false, null, '1.2.3.4', 'fe80::c167:ad49:e171:29c3', { foo: bar, bar: [], baz: {} }]
    - string: string
      empty_string: ''
      empty_hash: {}
      empty_array: []
      integer: 1000
      float: 3.14
      bool_true: true
      bool_false: false
      null_value: null
      ipv4: '1.2.3.4'
      ipv6: 'fe80::c167:ad49:e171:29c3'
      array:
        - string
        - ''
        - {}
        - []
        - 1000
        - 3.14
        - true
        - false
        - null
        - '1.2.3.4'
        - 'fe80::c167:ad49:e171:29c3'
        - [string, '', {}, [], 1000, 3.14, true, false, null, '1.2.3.4', 'fe80::c167:ad49:e171:29c3', { foo: bar, bar: [], baz: {} }]

icinga2_macro:
  <<: *config_template

  nested_hash:
    <<: *config_template

    deep_nested_hash:
      <<: *config_template
