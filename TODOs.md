# Rough ideas
- [ ] Find a weather API service to call
- [ ] Integrate with Telegram via a bot
    - [ ] Acquire bot credentials
    - [ ] Figure out what boilerplate is needed to be a telegram bot
    - [ ] Give a user (in this case me) the ability to subscribe to this bot
- [ ] Find a cronjob library to send the notification when we want
- [ ] Ship everything into a docker container
- [ ] Deploy it somewhere (Raspberry Pi? A free hosting service?)

# Near future
If we want any sort of user configuration of this bot (eg. time of the day to be notified, what sort of info should the notification contain, etc.), we could do it in-memory, but eventually we will need a DB and figure out that part.