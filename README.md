# kbot-telegram
It is Telegram bot on Golang

### Link to this bot [KBot](http://t.me/vladyslavplaksa_bot)

### To run this app 

* Specify ENV `TELE_TOKEN`. Use `read -s TELE_TOKEN` after that `export TELE_TOKEN`

* Use this command to build app: `go build -ldflags "-X="github.com/vladyslavPlaksa/kbot-telegram/cmd.appVersion=<VERSION OF THE bot>`

* After building use: `./kbot-telegram start`

