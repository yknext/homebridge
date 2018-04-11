rm -rf accessories/*
if [ ! -f "/firststart"]; then
  npm install -g cnpm --registry=https://registry.npm.taobao.org
  cnpm install -g mdns
  cnpm install -g homebridge-cmdswitch2
  cnpm install -g homebridge-homeassistant
  date > /firststart
fi
