<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>�û��б�</title>
</head>
<body>
    <table>
        <tr>
            <th>id</th><th>�û���</th><th>����</th><th>����</th>
        </tr>
        <#list userList as user>
        <tr>
            <td>${user.id}</td> <td>${user.username}</td><td>${user.password}</td><td>${user.email}</td>
        </tr>
        </#list>
  </table>
</body>
</html>