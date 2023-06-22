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

```
/set irc.server.libera.autojoin "#archlinux,#blender,#c,##chat,#chromium,#clojure,#commonlisp,#css,#django,#docker,#esolangs,#firm,#fossandcrafts,#fsf,#gamedev,#gamingonlinux,#gcc,#git,##github,#gnome,#gnu,#gridrun,#grub,#hardware,#haskell,#haskell-beginners,#haskell-offtopic,#javascript,#latex,#libera,#libera-overflow,#libreoffice,#linux,#linux-offtopic,#linux-philosophical,#lisp,#lispcafe,#minecraft,##moshpit,#music,##music,#mysql,#networking,#philosophy,##philosophy,#proglangdesign,##programming,#python,#python-unregistered,#racket,#raspberrypi,##rust,#ubuntu-desktop,#ubuntu-offtopic,#web,#wikimedia-overflow,#wikipedia"
```

- prev. autojoin channels:
    - `#manjaro,#php`

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

```
/set irc.server.oftc.autojoin "#bash,#C,#freedesktop,#gridrun,#help,#linux,#lisp,#oftc,#osm,#rust,#tor,#tor-project"
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

```
/set irc.server.ircnet.autojoin "#help,#hsbp,#hspbp,#irc,#ircnet,#linux"
```

### IRCNet - cloaked

- [IRCNet Cloaks](https://www.cloak.ircnet.io/login)

```
/server add ircnet_cloak ssl.cloak.ircnet.io/6697 -ssl
#/set irc.server.ircnet_cloak.addresses "ssl.cloak.ircnet.io/6697"
#/set irc.server.ircnet_cloak.ssl on
```

```
/set irc.server.ircnet_cloak.nicks "sunarch,sunarch_,sunarch__,sunarch_p,sunarchx"
/set irc.server.ircnet_cloak.username "sunarch"
/set irc.server.ircnet_cloak.realname "sunarch"
```

- `/set irc.server.ircnet_cloak.autojoin` ***see above***

## save

```
/save
```
