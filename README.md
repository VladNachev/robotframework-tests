# robotframework-tests
In this repo I will add some tests for testing different scenarios using robotframework. 

## Clone repo

```bash
$ git clone https://github.com/VladNachev/robotframework-tests.git
```
## jsonplaceholder_typicode
Testing the fake API of {JSON} Placeholde (https://jsonplaceholder.typicode.com/). 

Those test cases use the RequestsLibrary to send HTTP requests to the JSONPlaceholder API. The Create Session keyword creates a new session for making requests to the API, and the Get Request, Post Request, Put Request, and Delete Request keywords are used to send HTTP GET, POST, PUT, and DELETE requests, respectively. The Should Be Equal keyword is used to verify that the HTTP status code of the response is as expected.

## dogceo_api
Testing the API of Dog CEO (https://dog.ceo/dog-api/). Following test cases are included:

- Validating status code (200) and status message ("Success")
- Check if "beagle" is in the breed list
- Check if "poodle" is in the breed list

