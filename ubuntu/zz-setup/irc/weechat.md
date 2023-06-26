# WeeChat

- GitHub [weechat/weechat](https://github.com/weechat/weechat)
- [#irchelp](https://www.irchelp.org)
- GitHub Gist [pascalpoitras/myweechat.md](https://gist.github.com/pascalpoitras/8406501)

## mouse

```
/mouse enable
```

## basics

```
/secure passphrase <passphrase>
```

## filters

filter join/part/quit messages with smart filter (keep join/part/quit from users who spoke recently):

```
/set irc.look.smart_filter on
/filter add irc_smart * irc_smart_filter *
```

## general

```
/set irc.look.buffer_switch_autojoin off
/set irc.look.buffer_switch_join off
```

## scripts

```
/set script.scripts.download_enabled on
/script install autosort.py
/set script.scripts.download_enabled off
```

## IRC

```
/set irc.look.server_buffer independent
```

### server default

```
/set irc.server_default.nicks "sunarch,sunarch_,sunarch__,sunarch_p,sunarchx"
/set irc.server_default.username "sunarch"
/set irc.server_default.realname "sunarch"

/set irc.server_default.autojoin_dynamic off
/set irc.server_default.command_delay 2000
```

### Libera.Chat

- [Libera.Chat](https://libera.chat)
- [Configuring SASL for WeeChat](https://libera.chat/guides/weechat)

```
/server add libera irc.libera.chat/6697 -ssl
#/set irc.server.libera.addresses "irc.libera.chat/6697"
#/set irc.server.libera.ssl on
```

```
/set irc.server.libera.nicks "sunarch,sunarch_,sunarch__,sunarch_p,sunarchx"
/set irc.server.libera.username "sunarch"
/set irc.server.libera.realname "sunarch"
```

```
/secure set libera_password <password>

/set irc.server.libera.sasl_mechanism PLAIN
/set irc.server.libera.sasl_username sunarch
/set irc.server.libera.sasl_password "${sec.data.libera_password}"

#/set irc.server.libera.command "/msg NickServ IDENTIFY sunarch ${sec.data.libera_password}"
```

- autojoin: see separate file
```
/set irc.server.libera.autojoin "#X,#Y,#Z"
```

- not real versions:
    - `#raspberry-pi`

### OFTC

- [OFTC](https://www.oftc.net)

```
/server add oftc irc.oftc.net/6697 -ssl
#/set irc.server.oftc.addresses "irc.oftc.net/6697"
#/set irc.server.oftc.ssl on
```

```
/set irc.server.oftc.nicks "sunarch,sunarch_,sunarch__,sunarch_p,sunarchx"
/set irc.server.oftc.username "sunarch"
/set irc.server.oftc.realname "sunarch"
```

```
/secure set oftc_password <password>

/set irc.server.oftc.command "/msg NickServ IDENTIFY ${sec.data.oftc_password} sunarch"
```

- autojoin: see separate file
```
#/set irc.server.oftc.autojoin "#X,#Y,#Z"
```

- prev. autojoin channels:
    - `#pitivi,#pulseaudio`

### IRCNet

- [IRCNet.info](https://www.ircnet.info)
- [IRCNet.com](https://www.ircnet.com)

```
/server add ircnet ssl.ircnet.io/6697 -ssl
#/set irc.server.ircnet.addresses "ssl.ircnet.io/6697"
#/set irc.server.ircnet.ssl on
```

```
/set irc.server.ircnet.nicks "sunarch,sunarch_,sunarch__,sunarch_p,sunarchx"
/set irc.server.ircnet.username "sunarch"
/set irc.server.ircnet.realname "sunarch"
```

- autojoin: see separate file
```
/set irc.server.ircnet.autojoin "#X,#Y,#Z"
```

### IRCNet - cloaked

- [IRCNet Cloaks](https://www.cloak.ircnet.io/login)

```
/server add ircnet_cloak ssl.cloak.ircnet.io/6679 -ssl
#/set irc.server.ircnet_cloak.addresses "ssl.cloak.ircnet.io/6679"
#/set irc.server.ircnet_cloak.ssl on
```

```
/set irc.server.ircnet_cloak.nicks "sunarch,sunarch_,sunarch__,sunarch_p,sunarchx"
/set irc.server.ircnet_cloak.username "sunarch"
/set irc.server.ircnet_cloak.realname "sunarch"
```

```
#/secure set ircnet_cloak_password <password>
#/set irc.server.ircnet_cloak.password "sunarch-${sec.data.ircnet_cloak_password}"

/set irc.server.ircnet_cloak.password "sunarch-<password>"
```

- `/set irc.server.ircnet_cloak.autojoin` ***see above***

## save

```
/save
```
