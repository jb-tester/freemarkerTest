<html>
<head>
    <title>FreeMarker test</title>
</head>
<body>
 <h1>Check list:</h1>
<#list myStringsList>
   <p>list items in myStringsList</p>
   <ul>
   <#items as myString>
    <li>++++ ${myString}<#sep>,</#sep> ++++ </li>
   </#items>
   </ul>
<#else>
   <p>list is empty!!!</p>
</#list>
</body>
</html>