# DailyWeather
The service will notify a user about the weather for the day at the given time each day.

Rough implementation steps:
- a job that runs at the given time that triggers the application
- weather info is retrieved by an API to a open weather server of sorts
- the user is notified via a channel => initial simple idea: a Telegram Bot

(Ideally, it could be a push notification, but requires an app on the users' device)

## TODOs
- [ ] Find a weather API service to call
- [ ] Integrate with Telegram via a bot
    - [ ] Acquire bot credentials
    - [ ] Figure out what boilerplate is needed to be a telegram bot
    - [ ] Give a user (in this case me) the ability to subscribe to this bot
- [ ] Find a cronjob library to send the notification when we want
- [ ] Ship everything into a docker container
- [ ] Deploy it somewhere (Raspberry Pi? A free hosting service?)

## Next steps
If we want any sort of user configuration of this bot (eg. time of the day to be notified, what sort of info should the notification contain, etc.), we could do it in-memory, but eventually we will need a DB and figure out that part.