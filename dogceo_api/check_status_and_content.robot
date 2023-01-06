*** Settings ***
Library  RequestsLibrary
Suite Setup  RUN GET Request

*** Variables ***
${API_Base_Endpoint}    https://dog.ceo/api

*** Keywords ***
RUN GET Request
    Create Session      API_Testing     ${API_Base_Endpoint}
    
*** Test Cases ***

Validating status code and status message
    ${Get_Response}=    GET On Session      API_Testing     breeds/list/all
    log to console      ${Get_Response.status_code}
    log to console      ${Get_Response.content}
    ${statusCode}=      convert to string    ${Get_Response.status_code}
    ${content}=         convert to string    ${Get_Response.content}
    should be equal     ${statusCode}        200
    should contain      ${content}           "status":"success"
    
Check if "beagle" is in the list
    ${Get_Response}=    GET On Session       API_Testing     breeds/list/all
    log to console      ${Get_Response.status_code}
    log to console      ${Get_Response.content}
    ${statusCode}=      convert to string    ${Get_Response.status_code}
    ${content}=         convert to string    ${Get_Response.content}
    should be equal     ${statusCode}        200
    should contain      ${content}           beagle
    
Check if "poodle" is in the list
    ${Get_Response}=    GET On Session       API_Testing     breeds/list/all
    log to console      ${Get_Response.status_code}
    log to console      ${Get_Response.content}
    ${statusCode}=      convert to string    ${Get_Response.status_code}
    ${content}=         convert to string    ${Get_Response.content}
    should be equal     ${statusCode}        200
    should contain      ${content}           poodle
