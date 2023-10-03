# DailyWeather
The service will notify a user about the weather for the day at the given time each day.

Rough implementation steps:
- a job that runs at the given time that triggers the application
- weather info is retrieved by an API to a open weather server of sorts
- the user is notified via a channel => initial simple idea: a Telegram Bot

(Ideally, it could be a push notification, but requires an app on the users' device)

No DB is required (at least for now), it might become a necessity in the near future.