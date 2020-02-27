## Pulseaudio

Main goal is making pulse available for every local user, so

```
load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1;192.168.0.0/24 auth-anonymous=1
``` 

or 

```
load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1;192.168.0.0/24
```

is our way for this
