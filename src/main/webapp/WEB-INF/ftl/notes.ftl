<!doctype html>
<html>
<head>
    <link rel="stylesheet" href="/resources/style/style.css">
    <title>Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <style>
        #sidebar {
            background-color: white!important;
            box-shadow: 8px 0 8px 0 rgba(34, 60, 80, 0.2);
        }
        #content {
            background-color: #f2f2f2;
        }
        .notes-box {
            border-radius: 20px;
            width: 325px;
            height: 300px;
            box-shadow: 0 5px 10px 2px rgba(34, 60, 80, 0.2);
            margin-left: 20px;
            margin-right: 55px;
            background-color: white;
        }
        .notes-box-description {
            width: 100%;
            font-family: Montserrat, sans-serif;
            letter-spacing: 2px;
            font-weight: bold;
        }
        .notes-box-description i {
            font-size: 28px;
            margin: 15px 25px;
        }
        .notes-box-description p {
            display: inline-block;
            position: absolute;
            margin-top: 17px;
        }
        .notes-box-item {
            height: 30px;
            border-radius: 20px;
            padding: 0 15px;
            margin: 10px 25px;
        }
        .notes-box-item p {
            color: white;
            display: inline-block;
        }
        .notes-box-item i {
            margin-top: 6px;
            color: white;
            float: right;
        }
    </style>
</head>
<body>
<div class="wrapper d-flex align-items-stretch">
    <nav id="sidebar">
        <div class="custom-menu">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <div class="p-4 pt-5">
            <h1><a href="/main" class="logo">DailyPlan</a></h1>
            <ul class="list-unstyled components mb-5">
                <li class="active"><a href="/profile">Профиль</a></li>
                <li><a href="/notes">Заметки</a></li>
                <li><a href="">Планировщик</a></li>
                <li><a href="#">Книги</a></li>
            </ul>
            <div class="mb-5">
                <h3 class="h6">Найти друзей</h3>
                <form action="#" class="colorlib-subscribe-form">
                    <div class="form-group d-flex">
                        <div class="icon"><span class="icon-paper-plane"></span></div>
                        <input type="text" class="form-control" placeholder="Введите email">
                    </div>
                </form>
            </div>

        </div>
    </nav>

    <div id="content" class="p-4 p-md-5 pt-5">
        <form method="post">
            <label>
                <input type="text" name="text" id="text">
            </label>
            <select name="status" id="status">
                <option value="Срочно"></option>
                <option value="Важно"></option>
                <option value="Делегировать"></option>
            </select>
            <input type="hidden" id="user_id" value="${user.id}">
            <button type="submit" value="Submit" onclick="sendNote()">Добавить</button>
        </form>

        <div class="container">
            <div class="row">
                <div class="notes-box">
                    <div class="notes-box-description">
                        <i style="color: #fa8669;" class="fa-solid fa-circle-exclamation"></i>
                        <p>СРОЧНО</p>
                    </div>
                    <#list notes as note>
                        <#if note.status == "Срочно">
                            <div class="notes-box-item" style="background-color: #fa8669;">
                                <p>${note.text}</p>
                                <div class="deleteNote" style="float:right;"><input type="hidden" value="${note.id}"><i class="fa-solid fa-circle-check"></i></div>
                            </div>
                        </#if>
                    </#list>
                </div>
                <div class="notes-box">
                    <div class="notes-box-description">
                        <i style="color: #807de1;" class="fa-solid fa-circle-chevron-right"></i></i>
                        <p>ВАЖНО</p>
                    </div>
                    <#list notes as note>
                        <#if note.status == "Важно">
                            <div class="notes-box-item" style="background-color: #807de1;">
                                <p>${note.text}</p>
                                <div class="deleteNote" style="float:right;"><input type="hidden" value="${note.id}"><i class="fa-solid fa-circle-check"></i></div>
                            </div>
                        </#if>
                    </#list>
                </div>
                <div class="notes-box">
                    <div class="notes-box-description">
                        <i style="color: #2ee59d;" class="fa-solid fa-circle-stop"></i>
                        <p>ДЕЛЕГИРОВАТЬ</p>
                    </div>
                    <#list notes as note>
                        <#if note.status == "Делегировать">
                            <div class="notes-box-item" style="background-color: #2ee59d;">
                                <p>${note.text}</p>
                                <div class="deleteNote" style="float:right;"><input type="hidden" value="${note.id}"><i class="fa-solid fa-circle-check"></i></div>
                            </div>
                        </#if>
                    </#list>
                </div>

            </div>
        </div>

    </div>
</div>

<script>
    $(document).ready(function () {
        $(".deleteNote").click(function () {
            let id = $(this).find('input').val();
            $.ajax({
                url: '/notes',
                method: 'POST',
                data: {id:id},
                success: function (data) {

                }
            })
        });
    });
    function sendNote() {
        let text = document.getElementById("text").value
        let status = document.getElementById("status").value
        let user_id = document.getElementById("user_id").value

        const noteDto = {
            text: text,
            status: status,
            user_id: user_id,
        };
        console.log(JSON.stringify(noteDto))
        $.ajax({
            url: '/notes',
            method: 'POST',
            dataType: "json",
            accept: "application/json",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(noteDto),
            success: function () {
                $('#addNote').html("ok");
            }
        })
    }
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/main.js"></script>

</body>
</html>