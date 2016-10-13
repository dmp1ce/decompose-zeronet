version: '2'
services:
  tor:
    build:
      dockerfile: Dockerfile.tor
      context: .
{{#PROJECT_RESTART_ALWAYS}}
    restart: always
{{/PROJECT_RESTART_ALWAYS}}
  zeronet:
    build:
      dockerfile: Dockerfile.zeronet
      context: .
    ports:
      - "15441:15441"
      - "43110:43110"
    working_dir: /root
    command: python zeronet.py --ui_ip 0.0.0.0 --tor_proxy tor:9050  --tor_controller tor:9051
    links:
      - tor
    volumes_from:
      - tor
{{#PROJECT_RESTART_ALWAYS}}
    restart: always
{{/PROJECT_RESTART_ALWAYS}}

# vi: set tabstop=2 expandtab syntax=yaml:
