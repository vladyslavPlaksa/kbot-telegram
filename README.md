# kbot-telegram
It is Telegram bot on Golang

### To run this app 

* Specify ENV `TELEGRAM_TOKEN`. Use `read -s TELEGRAM_TOKEN` after that `export TELEGRAM_TOKEN`

* Use this command to build app: `go build -ldflags "-X="github.com/vladyslavPlaksa/kbot-telegram/cmd.appVersion=<VERSION OF THE bot>`

* After building use: `./kbot-telegram start`

