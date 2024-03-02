### 1xx: Informational

- 100 Continue: Server received initial headers, client can proceed.
- 101 Switching Protocols: Server switching protocols as requested.

### 2xx: Success

- 200 OK: Request succeeded.  
- 201 Created: Resource created successfully. 
- 202 Accepted: Request accepted, but processing not finished.
- 204 No Content: Request succeeded, but no content to return.

### 3xx: Redirection

- 300 Multiple Choices: Multiple possible resources.
- 301 Moved Permanently: Resource's URL permanently changed.
- 302 Found (Temporary Redirect): Resource temporarily at a different location.
- 304 Not Modified: Resource not modified since the last request.

### 4xx: Client Errors

- 400 Bad Request: Server couldn't understand the request.
- 401 Unauthorized: Access requires authentication.
- 403 Forbidden: Access denied, authentication won't help.
- 404 Not Found: Requested resource doesn't exist.
- 405 Method Not Allowed: HTTP method not allowed.
- 408 Request Timeout: Server timed out waiting for the client.
- 409 Conflict: Request conflicts with the current state on the server.
- 413 Payload Too Large: Request body is too large to process. 
- 414 URI Too Long: The request URI is too long.

### 5xx: Server Errors

- 500 Internal Server Error: Generic catch-all server error.
- 501 Not Implemented: Server doesn't support the needed functionality.
- 502 Bad Gateway: Server got an invalid response from an upstream server.
- 503 Service Unavailable: Server unavailable (overloaded/down).
- 504 Gateway Timeout: Server (as a gateway) didn't get a timely upstream response.
