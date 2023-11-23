<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/bd861cecb9.js" crossorigin="anonymous"></script>
    <title>Move Blocks</title>
</head>

<body>
<%--<div class="header">--%>
<%--    <div class="logo">Logo</div>--%>
<%--    <div class="menu">--%>
<%--        <div class="login-button">Login</div>--%>
<%--        <div class="signup-button">Sign Up</div>--%>
<%--    </div>--%>
<%--</div>--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Disabled</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div class="container-fluid">
<%--    <div class="navigation">--%>
<%--        <div id="menuToggle" class="menu-toggle">&#9776; Menu</div>--%>
<%--        <div class="menu">--%>
<%--            <div class="menu-item">Menu Item 1</div>--%>
<%--            <div class="menu-item">Menu Item 2</div>--%>
<%--            <div class="menu-item">Menu Item 3</div>--%>
<%--        </div>--%>
<%--        <div id="hideButton" class="hide-button">Hide Menu</div>--%>
<%--    </div>--%>
    <div class="row">
<%--        <nav class="col-md-2 d-none d-md-block bg-light sidebar">--%>
<%--            <div class="sidebar-sticky">--%>
<%--                <div class="flex-column sidebar">--%>
<%--                    <a href="#" class="navbar-brand text-black-50 text-center d-block mx-auto py-3 mb-4 bottom-border">notion</a>--%>
<%--                    <div class="bottom-border pb-3">--%>
<%--                        <img src="assets/profile.png" alt="" width="50" class="rounded-circle mr-3">--%>
<%--                        <a href="#" class="text-black-50">이태한</a>--%>
<%--                    </div>--%>
<%--                    <ul class="navbar-nav flex-column mt-4">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a href="#" class="nav-link text-black-50 p-3 mb-2 sidebar-link">--%>
<%--                                <i class="fas fa-home text-black-50 fa-lg mr-3">Dashboard</i>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <ul class="nav flex-column">--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" href="#">--%>
<%--                            대시보드--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="#">--%>
<%--                            사용자--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="#">--%>
<%--                            설정--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </nav>--%>
<%--    <nav class="navbar navbar-expand-md navbar-dark">--%>
<%--        <button class="navbar-toggler ml-auto mb-2 bg-light" type="button" data-toggle="collapse" data-target="#sidebar">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="sidebar">--%>
<%--            <div class="container-fluid">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-3 sidebar fixed-top">--%>
<%--                        <a href="#" class="navbar-brand text-white text-center d-block mx-auto py-3 mb-4 bottom-border">notion</a>--%>
<%--                        <div class="bottom-border pb-3">--%>
<%--                            <img src="assets/profile.png" alt="" width="50" class="rounded-circle mr-3">--%>
<%--                            <a href="#" class="text-white">이태한</a>--%>
<%--                        </div>--%>
<%--                        <ul class="navbar-nav flex-column mt-4">--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="#" class="nav-link text-white p-3 mb-2 sidebar-link">--%>
<%--                                    <i class="fas fa-home text-white fa-lg mr-3">Dashboard</i>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-9">--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </nav>--%>
        <div class="col px-5">
<%--            <div class="div_main">--%>
                <div class="div_title">
                    <div class="title">작업 블록</div>
                    <div class="sub-title">블록을 클릭하고 드래그하여 자유롭게 수정하세요!</div>
                </div>
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#board">보드</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#timeline">타임라인</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#feedback">피드백</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="board">
                        <div class="div_header">
                            <div class="content-header">
                                <div class="div_span">
                                    <div class="circle"></div>
                                    <div class="header-text">시작전</div>
                                </div>
                            </div>
                            <div class="content-header">
                                <div class="div_span">
                                    <div class="circle"></div>
                                    <div class="header-text">진행중</div>
                                </div>
                            </div>
                            <div class="content-header">
                                <div class="div_span">
                                    <div class="circle"></div>
                                    <div class="header-text">완료</div>
                                </div>
                            </div>
                        </div>
                        <div class="div_content">
                            <div class="content">
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content">
                                        <div class="div_element">개발 환경 세팅</div>
                                        <div class="div_element">이태한</div>
                                    </a>
                                </div>
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content">
                                        <div class="div_element"></div>
                                        <div class="div_element"></div>
                                    </a>
                                </div>
                                <div class="div_button">블록 추가</div>
                            </div>
                            <div class="content">
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content">
                                        <div class="div_element"></div>
                                        <div class="div_element"></div>
                                    </a>
                                </div>
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content">
                                        <div class="div_element"></div>
                                        <div class="div_element"></div>
                                    </a>
                                </div>
                                <div class="div_button">블록 추가</div>
                            </div>
                            <div class="content">
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content">
                                        <div class="div_element"></div>
                                        <div class="div_element"></div>
                                    </a>
                                </div>
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content">
                                        <div class="div_element"></div>
                                        <div class="div_element"></div>
                                    </a>
                                </div>
                                <div class="div_button">블록 추가</div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="timeline">
                        가
                    </div>
                    <div class="tab-pane fade" id="feedback">
                        나
                    </div>
                </div>
<%--            </div>--%>
        </div>
    </div>
</div>
</body>
<script>
    const draggables = document.querySelectorAll('.draggable')
    const contents = document.querySelectorAll('.content')

    draggables.forEach(draggable => {
        draggable.addEventListener('dragstart', () => {
            draggable.classList.add('dragging')
        })

        draggable.addEventListener('dragend', () => {
            draggable.classList.remove('dragging')
        })
    })

    contents.forEach(content => {
        content.addEventListener('dragover', e => {
            e.preventDefault()
            const afterElement = getDragAfterElement(content, e.clientY)

            const draggable = document.querySelector('.dragging')
            if (afterElement == null) {
                content.appendChild(draggable)
            } else {
                content.insertBefore(draggable, afterElement)
            }
        })
    })

    function getDragAfterElement(content, y) {
        const draggableElements = [...content.querySelectorAll('.draggable:not(.dragging)')]

        return draggableElements.reduce((closest, child) => {
            const box = child.getBoundingClientRect()
            const offset = y - box.top - box.height / 2
            console.log(y);
            if (offset < 0 && offset > closest.offset) {
                return { offset: offset, element: child }
            } else {
                return closest
            }
        }, { offset: Number.NEGATIVE_INFINITY }).element
    }
</script>
</html>
