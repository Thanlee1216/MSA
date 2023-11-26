<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="js/jquery/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/bd861cecb9.js" crossorigin="anonymous"></script>
    <title>Move Blocks</title>
</head>
<body>
<%--<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #FF4B2B;">--%>
<%--    <div class="container-fluid">--%>
<%--        <a class="navbar-brand text-white" href="#">Navbar</a>--%>
<%--        <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white active" aria-current="page" href="#">Home</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white" href="#">Link</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item dropdown">--%>
<%--                    <a class="nav-link text-white dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        Dropdown--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                        <li><a class="dropdown-item" href="#">Action</a></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Another action</a></li>--%>
<%--                        <li><hr class="dropdown-divider"></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Something else here</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link text-white disabled">Disabled</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--            <ul class="navbar-nav">--%>
<%--                <li class="nav-item">--%>
<%--                <%--%>
<%--                    if(!"true".equals((String) session.getAttribute("sessionInfo"))) {--%>
<%--                %>--%>
<%--                    <a class="nav-link text-white" href="/login">Sign In</a>--%>
<%--                <%--%>
<%--                }else {--%>
<%--                %>--%>
<%--                    <a class="nav-link text-white" href="/logout">Sign Out</a>--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--&lt;%&ndash;            <form class="d-flex">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <a class="nav-link" href="/login">Login</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </form>&ndash;%&gt;--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<div class="container-fluid">
    <div class="row">
        <div class="left-sidebar active">
            <div class="btn-top">
                <i class="fa-solid fa-bars fa-2x"></i>
            </div>
            <div class="menu" style="display: none">
                <i class="fa-solid fa-xmark fa-2x fa-spin " style="--fa-animation-duration: 3s;"></i>
                <div class="p-4 div_plase_login bottom-border"></div>
                <%
                    if("false".equals((String) session.getAttribute("sessionInfo")) || session.getAttribute("sessionInfo") == null) {
                %>
                <div class="bottom-border">
                    <a class="fs-4 nav-link text-black-50 div_plase_login" href="/login">로그인해주세요.</a>
                </div>
                <%
                }else {
                %>
                <div class="bottom-border">
                    <labal class="fs-4 div_category fw-bold" href="#">워크스페이스</labal>
                    <div class="div_category_content">
                        <ul>
                            <li>
                                <a class="row fs-6 fw-bold text-black-50" href="#">워크스페이스1</a>
                            </li>
                            <li>
                                <a class="row fs-6 fw-bold text-black-50" href="#">새로만들기</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <%
                    }
                %>
<%--                <a class="fs-6 nav-link text-black-50 div_workspace bottom-border" href="#">Dashboard</a>--%>
<%--                <div class="div_workspace bottom-border">워크스페이스</div>--%>
<%--                <ul>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a href="#" class="nav-link text-black-50 p-3 mb-2 sidebar-link">--%>
<%--                            <i class="fas fa-home text-black-50 fa-lg mr-3">Dashboard</i>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a href="#" class="nav-link text-black-50 p-3 mb-2 sidebar-link">--%>
<%--                            <i class="fas fa-home text-black-50 fa-lg mr-3"></i>--%>
<%--                            워크스페이스--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
            </div>
        </div>
        <div class="col">
<%--            <div class="div_main">--%>
        <div class="text-right">
            <%
                if("false".equals((String) session.getAttribute("sessionInfo")) || session.getAttribute("sessionInfo") == null) {
            %>
            <button type="button" class="btn btn-primary float-end mt-2" onclick="gomenu('/login')">Sign In</button>
            <%
            }else {
            %>
            <button type="button" class="btn btn-primary float-end mt-2" onclick="gomenu('/logout   ')">Sign Out</button>
            <%
                }
            %>
        </div>
                <div class="div_title">
                    <div class="title">작업 블록</div>
                    <div class="sub-title">블록을 클릭하고 드래그하여 자유롭게 수정하세요!</div>
                </div>
                <ul class="nav nav-tabs">
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" data-toggle="tab" href="#board">보드</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" data-toggle="tab" href="#timeline">타임라인</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" data-toggle="tab" href="#feedback">피드백</a>--%>
<%--                    </li>--%>
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
                            <div class="content" statas="1">
                                <div class="div_button new_abox">새로 만들기</div>
                            </div>
                            <div class="content" statas="2">
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content" onclick="openModal()">
                                        <div class="div_element small">TEST1</div>
                                        <div class="div_element small"></div>
                                    </a>
                                </div>
                                <div class="div_button new_abox">새로 만들기</div>
                            </div>
                            <div class="content" statas="3">
                                <div class="div_abox draggable" draggable="true">
                                    <a class="a_content" onclick="openModal()">
                                        <div class="div_element small">TEST2</div>
                                        <div class="div_element small"></div>
                                    </a>
                                </div>
                                <div class="div_button new_abox">새로 만들기</div>
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
<jsp:include page="include/index_modal1.jsp"></jsp:include>
</body>
<script>
    // var draggables = document.querySelectorAll('.draggable')
    var contents = document.querySelectorAll('.content')

    const baseUrl = 'https://jsonplaceholder.typicode.com/';
    const menuNames = [
        'posts',
        'comments',
        'albums',
        'photos',
        'todos',
        'users'
    ];

    $(function() {
        //$('div.menu').hide();

        // open menu
        $('i.fa-bars').click(function() {
            $('div.btn-top').hide();
            $('.left-sidebar').removeClass('active');
            $('div.menu').toggle('slide', {
                direction: 'left'
            }, 100);
        });

        // close menu
        $('i.fa-xmark').click(function() {
            $('div.menu').toggle('slide', {
                direction: 'left'
            }, 100, function() {
                $('div.btn-top').fadeIn();
            });
            $('.left-sidebar').toggleClass('active');
        });

        // close menu
        $('.new_abox').click(function() {
            let contant = '';
            contant += '<div class="div_abox draggable" draggable="true">';
            contant += '    <a class="a_content" onclick="openModal()">';
            contant += '        <div class="div_element small">클릭하여 내용을 입력하세요.</div>';
            contant += '        <div class="div_element small"></div>';
            contant += '    </a>';
            contant += '</div>';
            contant += '';
            $(this).before(contant);

            contents = document.querySelectorAll('.content');
            $(document).on('dragstart', '.draggable', function(e) {
                $(this).addClass('dragging');
            });
            $(document).on('dragend', '.draggable', function(e) {
                $(this).removeClass('dragging');
            });
            let param = {
                "USER_ID": '<%=session.getAttribute("sessionInfo")%>'
                , "STATAS": $(this).parent('.content').attr('statas')
            }
            // func_saveModal(param);
            openModal();
        });

        // click menu
        $(document).on('click', 'li', function() {
            const name = $(this).text();
            $.blockUI();

            $('div.menu').toggle('slide', {
                direction: 'left'
            }, 400, function() {
                $('div.btn-top').fadeIn();
            });
        });

        setMenu();
    });

    function setMenu() {
        let sMenuHtml = '';
        // for (const menu of menuNames) {
        //     sMenuHtml += '<li class="text-black">' + menu + '</li>';
        // }
        // $('div.menu ul').html(sMenuHtml);
    }

    $('.draggable').on('dragstart', function() {
        $(this).addClass('dragging');
    });

    $('.draggable').on('dragend', function() {
        $(this).removeClass('dragging');
    });

    $('.content').on('dragover', function(e) {
        let content = $(this)[0];
        e.preventDefault();

        const afterElement = getDragAfterElement(content, e.clientY)


        const draggable = document.querySelector('.dragging')
        if (afterElement == null) {
            content.appendChild(draggable)
        } else {
            content.insertBefore(draggable, afterElement)
        }
    })

    function getDragAfterElement(content, y) {
        const draggableElements = [...content.querySelectorAll('.draggable:not(.dragging), .new_abox')];

        let closest = null;

        for (let i = 0; i < draggableElements.length; i++) {
            const child = draggableElements[i];
            const box = child.getBoundingClientRect();
            const offset = y - box.top - box.height / 2;

            if (offset < 0 && offset > (closest ? closest.offset : Number.NEGATIVE_INFINITY)) {
                closest = { offset: offset + 32, element: child };
            }else {
                // closest = { offset: offset + 32, element: child };
            }
        }
        return closest.element;
    }

    function func_saveModal(param) {
        commAjax.request(
            "${USER_URL}/USERAPI/savecontent"
            , "POST"
            , param
            , function (data) {
                if (data.result == 'false') {
                    alert("회원가입 실패");
                } else {
                    location.href = "/login";
                }
            }
        )
    }

    function gomenu(menu) {
        let reDir = document.createElement("form");
        reDir.className = 'd-none';
        document.body.appendChild(reDir);
        reDir.action = menu;
        reDir.submit();
    }
</script>
</html>
