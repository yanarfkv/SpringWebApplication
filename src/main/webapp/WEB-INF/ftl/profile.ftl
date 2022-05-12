<!doctype html>
<html>
<head>
    <link rel="stylesheet" href="/resources/style/style.css">
    <title>Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<#--${user.firstName} ${user.lastName}-->
<div class="wrapper d-flex align-items-stretch">
    <nav id="sidebar">
        <div class="custom-menu">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <div class="p-4 pt-5">
            <h1><a href="index.html" class="logo">DailyPlan</a></h1>
            <ul class="list-unstyled components mb-5">
                <li class="active">
                    <a href="/profile">Профиль</a>
                </li>
                <li>
                    <a href="/notes">Заметки</a>
                </li>
                <li>
                    <a href="">Планировщик</a>
                </li>
                <li>
                    <a href="">Книги</a>
                </li>

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

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">

        <h2 class="mb-4">${user.firstName} ${user.lastName}</h2>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/main.js"></script>

</body>
</html>