<html>
  <head>
    <title>Example</title>
  </head>
  <body>
      <%
        ' Construct a greeting string with a salutation and the
        ' current time on the server (retrieved from the Time()
        ' function) and then display that in the HTML sent to the 
        ' client.

        strGreetingMsg = "Hello. It is now " & Time() & " on the server."
        Response.Write strGreetingMsg
      %>
  </body>
</html>
