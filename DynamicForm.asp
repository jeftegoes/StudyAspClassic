<html>
  <head>
    <title>DynamicForm.asp</title>
  </head>
  <body>
    Welcome to the dynamic form! 
    <% 
        ' Retrive the number of buttons the user wishes to create.
        
        intCmdCount = Request.QueryString("button_Count")
        
        ' Ensure that the sent parameter is within the acceptable
        ' limits.

        If intCmdCount < 1 then
            intCmdCount = 1
        End If

        If intCmdCount > 10 Then
            intCmdCount = 10
        End if

        'Create the buttons
        For intCounter = 1 to intCmdCount
    %>
    <input type="button" value="Button<%= intCounter %>" onclick="MsgBox<%= intCounter %>()">
    <%
      Next
    %>

    <script>
      <%
        'Create the scripts for each of the created buttons.
        For intCounter = 1 to intCmdCount
      %>
        function MsgBox<%= intCounter %>()
        {
            alert('You just clicked button <%= intCounter %>.');
        }
      <%
        Next
      %>
    </script>
  </body>
</html>
