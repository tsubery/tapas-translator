# tapas-translator
A simple service that allow any podcatcher app to subscribe to ruby tapas.

## Usage
1. Buy a subscription to ruby tapas. It's worth it.
1. Add the following link to your favourite podcatcher app: https://tapas-translator.herokuapp.com/get/*your-email*/*your-password*/rubytapas.dpdcart.com/feed

## Frequently answered questions
### Why aren't you using url parameters?
It somehow conflicts with the rss xml schema.

### How reliable is this service?
It is hosted on heroku free tier so the service will sleep for 6 hours every day.
There should be plenty of time each day to download new episodes but occasionally it will fail.

### Are you buffering 200MB video files while blocking the response?
It's not ideal and I wouldn't do it for client code but it seems to work.
Just trying to scratch my own itch here, don't judge me :)
