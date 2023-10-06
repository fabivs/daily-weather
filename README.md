# DailyWeather
The service will notify a user about the weather for the day at the given time each day.

Rough implementation steps:
- a job that runs at the given time that triggers the application
- weather info is retrieved by an API to a open weather server of sorts
- the user is notified via a channel 
    - initial simple idea: a Telegram Bot
    - another simple idea: email via Sendgrid free tier

(Ideally, it could be a push notification, but requires an app on the users' device)

## Next steps
If we want any sort of user configuration of this bot (eg. time of the day to be notified, what sort of info should the notification contain, etc.), we could do it in-memory, but eventually we will need a DB and figure out that part.

---

## Weather API services
Interesting article: https://medium.com/aimonks/weather-apis-381c19c81bb4
- https://openweathermap.org/ - Sign up required for free tier, not sure if it still asks for credit card anyway
- ⭐️ https://open-meteo.com/ - No API key required at all, free to use for non commercial
