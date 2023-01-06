*** Settings ***
Library           RequestsLibrary

*** Test Cases ***

Test GET request
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=      Get Request        jsonplaceholder    /posts
    ${status_code}=   convert to string  ${response.status_code}
    Should Be Equal   ${status_code}    200

Test POST request
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${data}=          Create Dictionary  title=foo    body=bar    userId=1
    ${headers}=       Create Dictionary  Content-Type=application/json
    ${response}=      Post Request       jsonplaceholder    /posts    data=${data}    headers=${headers}
    ${status_code}=   convert to string  ${response.status_code}
    Should Be Equal    ${status_code}    201

Test PUT request
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${data}=          Create Dictionary  id=1    title=foo    body=bar    userId=1
    ${headers}=       Create Dictionary  Content-Type=application/json
    ${response}=      Put Request        jsonplaceholder    /posts/1    data=${data}    headers=${headers}
    ${status_code}=   convert to string  ${response.status_code}
    Should Be Equal    ${status_code}    200

Test DELETE request
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=      Delete Request     jsonplaceholder    /posts/1
    ${status_code}=   convert to string  ${response.status_code}
    Should Be Equal   ${status_code}    200
