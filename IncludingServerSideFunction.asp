<html>
  <head>
    <title>Function Example</title>
  </head>
  <body>
    <%
      strDomainString = "perl.ora.com"
      strDoaminType = DomainType(strDomainString)
    %>
    <%= strDomainString %> is a <%= strDoaminType %> site.
  </body>
<html>

<script language="VBScript" runat=server>
  Function DomainType(strDomainString)
    strPossibleDomain = Right(strDomainString, 3)

    Select Case Ucase(strPossibleDomain)
      Case "COM"
        DomainType = "company"
      Case "EDU"
        DomainType = "educational"
      Case "GOV"
        DomainType = "government_civil"
      Case "MIL"
        DomainType = "government_military"
      Case Else
        DomainType = "UNKNOWN"
    End Select
  End Function
</script>