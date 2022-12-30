curl \
  'https://youtube.googleapis.com/youtube/v3/channels?part=ContentDetails&categoryId=cont&mine=true&pageToken=AIzaSyCXVP2YyInio4HF50LI56dr1jGy_V9gieo&key=[YOUR_API_KEY]' \
  --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
  --header 'Accept: application/json' \
  --compressed



Http http = new Http();
HttpRequest httpRequest = new HttpRequest();
httpRequest.setEndpoint('');