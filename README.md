# tapas-translator
A simple service that allow connection to ruby tapas content with url parameters instead of basic auth

## Usage
1. Buy a subscription to ruby tapas.
1. Add the following link to your favourite podcatcher app: https://tapas-translator.herokuapp.com/get/*your-email*/*your-password*/rubytapas.dpdcart.com/feed

## Frequently answered questions
### Why aren't you using url parameters?
It somehow conflicts with the rss schema.

### Is this service reliable?
It is hosted on heroku free tier so the service will sleep for 6 hours every day.
There should be plenty of time to download new episodes.

### Are you buffering 200MB video files while blocking the response?
It's not ideal and I wouldn't do it for client code but it seems to work.
Just trying to scratch my own itch here.
