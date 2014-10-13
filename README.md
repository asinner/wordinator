# README
The Wordinator API is an API that runs an anagram check and returns a JSON response.
There is one endpoint for the Wordinator API at `/api/:word1/:word2`. Send a GET request to this endpoint and we will return a JSON response.

## Example one
Request :
`GET /api/andrew/warden`
*Note: ensure that you pass in two words after `/api/...`*
Response:
`{"words":["andrew","warden"],"status":true}`
