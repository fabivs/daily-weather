# TODOs
- [x] Find a weather API service to call
- [x] Write tests by mocking the API
- [x] Define a `WeatherReport` object for all the weather info for a daily report
- [x] Adapt the API response into the object
- [x] Enrich the `WeatherReport` object
- [ ] Integrate with Telegram via a bot
    - [ ] Acquire bot credentials
    - [ ] Figure out what boilerplate is needed to be a telegram bot
    - [ ] Give a user (in this case me) the ability to subscribe to this bot
- [ ] Find a cronjob library to send the notification when we want
- [ ] Ship everything into a docker container
- [ ] Deploy it somewhere (Raspberry Pi? A free hosting service?)

## Refactorings
- [ ] Use a base_url in config for weather API service
- [ ] Define a stubbed OpenMeteo endpoint just for tests in config (instead of using the real endpoint) (is this necessary?)
- [ ] Add error handling to the mapper in `DailyWeather.Services.Weather`
- [ ] Use a custom `Date` module so I can mock it in `DailyWeather.Services.WeatherTest`
