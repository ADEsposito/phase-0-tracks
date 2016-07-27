# What are some common HTTP status codes?
  * 200 OK
  * 300 Multiple Choices
  * 301 Moved Permanently
  * 302 Found
  * 304 Not Modified
  * 307 Temporary Redirect
  * 400 Bad Request
  * 401 Unauthorized
  * 403 Forbidden
  * 404 Not Found
  * 410 Gone
  * 500 Internal Server Error
  * 501 Not Implemented
  * 503 Service Unavailable
  * 550 Permission Denied

# What is the difference between a GET request and a POST request?
  * Get : requests data from a specified resource
  * Post : submits data to be processed to a specific resource

# When might each be used?
  * POST
    * back button causes data to be reloaded
    * when you don't want something to be bookmarked
    * for higher security requests where data may be used to alter a database or something
    * posting a message to a board/forum/etc
    * providing a block of data (like a form) to a data-handling process
  * GET
    * for submitted search requests
    * requests where you want the user to be able to pull up the same page again
# What is a cookie?
  * a small piece of data sent from a website and stored in the user's web browser while the user is browsing.
  * can be used to remember info like what's in a shopping card, the user's browsing activity (clicking buttons, logging in, etc), to remember info that the user has entered before (name, address, password, etc)
  * various types of cookies (authentication, tracking, session cookie, persistent cookie, secure cookie, http only cookie, same site cookie, third-party cookie, supercookie)
# How does it relate to HTTP requests?
  *  cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users. 
