<html>
<head>
    <title>FreeMarker test</title>
</head>
<body>
<#setting boolean_format="YES,NO">
${.current_template_name}
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
<h1> Check assignment operators</h1>
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
<h1> Check ?then </h1>
 <#assign x = 10>
 <#assign y = 20>
 <#-- Prints 100 plus the maximum of x and y: -->
 ${100 + (x > y)?then(x, y)}
<h1> Check ?switch </h1>
 <#list ['r', 'w', 'x', 's'] as attr><#sep> <p>
  ${attr?switch('r', 'readable', 'w' 'writable', 'x', 'executable', 'unknown flag: ' + attr)}
 </#list>
<h1> Check ?keep_before_last </h1>
${"foo.bar.txt"?keep_before_last(".")}
<h1> Check '.now' </h1>
<p>Today is ${.now?date?string('dd.mm.yyyy')}, the current time is ${.now?time}</p>

<h1> Check ?floor, ?ceiling, ?round </h1>
<#assign numList=[0, -1, 0.5]>
<ul>
<#list numList as numItem>
    <li>${numItem}: ?floor=${numItem?floor}, ?ceiling=${numItem?ceiling}, ?round=${numItem?round}</li>
</#list>
</ul>
<#assign testNumList=[2.75, 3.15, 0]>
${testNumList[0]?floor}
${testNumList[1]?ceiling}
${testNumList[2]?round}
</body>
</html>