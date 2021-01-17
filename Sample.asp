<html>
  <head>
    <title>Sample ASP</title>
  </head>
  <body>
    Good aftermoon. <br />
    Welcome to the sample. It is now approximately <%= Time() %> at the server.
    Here are a couple of demonstrations: <br /><br /><br />

    Some simple text formatting done using HTML: <br />
    <font size="1">Hello Size 1</font><br />
    <font size="2">Hello Size 2</font><br />
    <font size="3">Hello Size 3</font><br />
    <font size="4">Hello Size 4</font><br />
    <font size="5">Hello Size 5</font><br /><br />
    The same text formatting using server-side code: <br />

    <% For intCounter = 1 to 5 %>
        <font size="<%= intCounter %>"> Hello Size <%= intCounter %> <br /> </font>
    <% Next %>
    <br />
  </body>
</html>
