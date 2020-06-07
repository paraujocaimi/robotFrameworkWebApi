*** Settings ***
Documentation     KeysWords - Request API
...
...     Keyswords para request via API

Resource            ../variables/base-api.robot

Library             RequestsLibrary

***Keywords***

Get All Books 
    Create Session      books-api                   ${baseUrl}
    ${response}=        Get Request                 books-api               /${getBooks}
    Log                 Response: ${response.text}

Should Have Keys 
    [Arguments]                         ${response}              
    Dictionary Should Contain Key       ${response}        ID
    Dictionary Should Contain Key       ${response}        Title
    Dictionary Should Contain Key       ${response}        Description
    Dictionary Should Contain Key       ${response}        PageCount
    Dictionary Should Contain Key       ${response}        Excerpt
    Dictionary Should Contain Key       ${response}        PublishDate

Should Have All Keys in List
    [Arguments]                         ${response}              
    Dictionary Should Contain Key       ${response}[0]        ID
    Dictionary Should Contain Key       ${response}[0]        Title
    Dictionary Should Contain Key       ${response}[0]        Description
    Dictionary Should Contain Key       ${response}[0]        PageCount
    Dictionary Should Contain Key       ${response}[0]        Excerpt
    Dictionary Should Contain Key       ${response}[0]        PublishDate