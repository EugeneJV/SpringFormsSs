<%--
  Created by IntelliJ IDEA.
  User: 5
  Date: 4/20/2019
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
        <h1>you need to do what you need</h1>

        <input type="text" name="name" placeholder="name">
        <button id="add">add</button>

        <button id="get">get</button>

        <div class="wrap"></div>

        <script>
            $ ("#add").click(function () {
                let name = $("[name = name]").val();
                $.ajax({
                    url:'/saveUserRest',
                    type: 'POST',
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    data: JSON.stringify({name}),
                    success: function () {
                        console.log("ok");
                    },
                    error: function (err) {
                        console.log(err);
                    }
                })
            })

            $ ("#get").click(function () {
                $(".wrap").empty();
                $.ajax({
                    url:'/giveAllUsers',
                    type: 'GET',
                    contentType: 'application/json',
                    success: function (res) {
                        console.log(res);
                        for (let obj of res){
                        var $div = $("<div/>" , {text: obj.id + "" + obj.name});
                        $(".wrap").append($div);
                        }
                    },
                    error: function (err) {
                        console.log(err);
                    }
                })
            })
        </script>

</body>
</html>
