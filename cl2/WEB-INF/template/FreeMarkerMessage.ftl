<html>  
    <head>  
        <title>Freemarker简单Servlet消息</title>  
    </head>  
    <body>  
        <h1>下面是Servlet传过来的信息</h1>  
        <#-- list数据 -->  
        <h4>作者列表</h4>  
        <ul>  
            <#list authors as author> <#-- list遍历 --> 
                <li>${author}</li>  
            </#list>  
        </ul>  
        <#-- map数据 -->  
        <h4>管理员最后登录时间列表</h4>  
        <table cellpadding="1" border='1' cellspacing="1">  
            <tr>  
                <th width='120' align='center'>用户名</th>  
                <th width='200' align='center'>最后登录时间</th>  
            </tr>  
            <#list viewLogs?keys as record> <#-- 遍历map数据 --> 
                <tr>  
                    <td>${record}</td>  <#-- key数据-->
                    <td align='center'>${viewLogs[record]}</td> <!-- 根据key获取值 --> 
                </tr>  
            </#list>  
        </table>  
    </body>  
</html>  