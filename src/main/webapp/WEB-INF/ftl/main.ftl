<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            background: rgb(175,0,255);
            background: linear-gradient(90deg, rgba(175,0,255,1) 0%, rgba(0,255,187,1) 85%);
        }
        .btn {
            box-sizing: border-box;
            appearance: none;
            background-color: transparent;
            border: 2px solid #00ffbb;
            border-radius: 0.6em;
            color: #00ffbb;
            cursor: pointer;
            display: -ms-flexbox;
            display: flex;
            align-self: center;
            font-size: 1rem;
            line-height: 1;
            margin: 20px;
            padding: 1.2em 2.8em;
            text-decoration: none;
            text-align: center;
            text-transform: uppercase;
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
        }
        .btn:hover, .btn:focus {
            color: #fff;
            outline: 0;
        }
        .third {
            border-color: #00ffbb;
            color: #fff;
            box-shadow: 0 0 40px 40px #00ffbb inset, 0 0 0 0 #00ffbb;
            -webkit-transition: all 150ms ease-in-out;
            transition: all 150ms ease-in-out;
        }
        .third:hover {
            box-shadow: 0 0 10px 0 #00ffbb inset, 0 0 10px 4px #00ffbb;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: transparent;">
    <a class="navbar-brand" href="#" style="color: white; font-family: Montserrat ,sans-serif; font-size: 40px; font-weight: bold; margin-left: 20px;">DailyPlan</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav" style="position: absolute; right: 50px; font-size: 18px;">
        <ul class="navbar-nav">
            <li class="nav-item active" >
                <a class="nav-link" style="color: white; font-weight: bold; margin-right: 15px;" href="#" >Главная страница <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: white;" href="#">Вход</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: white;" href="#">Регистрация</a>
            </li>
        </ul>
    </div>
</nav>
<div class="container" style="max-width: 1400px;">
    <div class="row" style="padding-top: 170px;">
        <div class="col-sm-8" style="color: white;">
            <h1 style="font-family: Montserrat, sans-serif; font-size: 50px; font-weight: bold;">DailyPlan: сервис для планирования</h1>
            <h3 style="font-family: Roboto, sans-serif; font-size: 30px;">Оптимизируйте управление задачами и составляйте списки для увеличения продуктивности</h3>
            <button class="btn third"><a href="">Зарегистрироваться</a></button>
        </div>
        <div class="col-sm-4">
        </div>
    </div>
</div>
<#--    </div>-->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>