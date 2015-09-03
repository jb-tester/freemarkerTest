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
    <li>${myString?counter}) ${myString} (${myString?item_parity}) </li>
    <#list myStrList>
        <ul>
        <#items as myStr>
            <li>${myStr}<#sep>,</#sep></li>
            <#if myStr?counter == myString?index+1>
                <#break>
            </#if>
        </#items>
        </ul>
        <#else>
        no items!!!
    </#list>
   </#items>
   </ul>
<#else>
   <p>list is empty!!!</p>
</#list>
 <#list ['a', 'b', 'c']>

 <ul>
    <#items as xxx>

        <li>${xxx}: ${xxx?index};${xxx?counter};${xxx?item_parity};${xxx?has_next?string('has next','does not have next')};${xxx?is_even_item?string('is even','is not even')};${xxx?is_first?string('is first','is not first')};${xxx?is_last?string('is last','is not last')};${xxx?is_odd_item?string('is odd','is not odd')};${xxx?item_cycle('cycle1','cycle2')};${xxx?item_parity_cap}}</li>
       <#-- <li>${y?index};${y?counter};${y?item_parity};${y?has_next};${y?is_even_item};${y?is_first};${y?is_last};${y?is_odd_item};${y?item_cycle('s1','s2')};${y?item_parity_cap}}</li>-->

    </#items>
 </ul>
 </#list>
<h1> check assignment operators</h1>
 <#assign testNumber=100>
 ${testNumber}
 <#assign testNumber++>
 ${testNumber}
 <#assign testNumber-->
 ${testNumber}
 <#assign testNumber+=3>
 ${testNumber}
 <#assign testNumber-=3>
 ${testNumber}
 <#assign testNumber*=3>
 ${testNumber}
 <#assign testNumber/=3>
 ${testNumber}
 <#assign testNumber*=3>
 ${testNumber}
 <#assign testNumber%=3>
 ${testNumber}
</body>
</html>