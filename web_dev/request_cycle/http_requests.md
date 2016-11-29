200 - OK
300 - Multiple Choices
301 - Moved Permenantly
302 - Found
304 - Not Modified
307 - Temporary Redirect
400 - Bad Request
401 - Unquthorized
403 - Forbidden
404 - Not Found
410 - Gone
500 - Internal Server Error
501 - Not Implemented
503 - Service Unavailable
550 - Permission Denied

The difference between GET and POST requests is what they do. GET is normally used to retrieve remote data, such as when you enter a web address into your browser to navigate to a website and general browsing. POST is used to insert or update remote data, such as modifying the appearance of a site after you enter a survey so that it displayed a "Thank you for your entry!" webpage. In terms of the actual request, POST usually has relevant information in the body of the request, while a GET usually does not, aside from cookies.

A HTTP cookie is a small piece of data that a server sends to a user's browser, which is stored and then used when the browser sends its next request to that server. It is normally used to discern if two different requests came from the same browser and can be used for things like session management (shopping carts in online websites, user logins, etc.), personalization (user preferences to the appearance of the site), and tracking (analyzing user behavior). It is the reason why Amazon shopping carts don't lose your purchases, a website looks the same when you revisit it if you've changed your view of it, and why some businesses are able to follow up with you after you've visited certain sites which track your behavior.