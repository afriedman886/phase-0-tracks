###What are some common HTTP status codes?
1. 200 OK
2. 300 Multiple Choices
3. 301 Moved Permanently
4. 302 Found
5. 304 Not Modified
6. 307 Temporary Redirect
7. 400 Bad Request
8. 401 Unauthorized
9. 403 Forbidden
10. 404 Not Found
11. 410 Gone
12. 500 Internal Server Error
13. 501 Not Implemented
14. 503 Service Unavailable
15. 550 Permission denied

###What is the difference between a GET request and a POST request? When might each be used?
- GET requests data from the server; all required data is included in the URL, so it is not very secure and shouldn't include sensitive info like passwords; good for a database inquiry 
- POST submits data to be processed by the server; it is more secure than a GET request because any submitted info is included in the body of the html rather than the URL

###Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies help track which computer is sending requests to a server, and can keep different aspects of the user's experience consistent as they browse through a website.  For example, if you are shopping online and adding items to your shopping cart, cookies allow your cart to remember the items you added, even if you leave the website and return later.