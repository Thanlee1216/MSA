<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <title>Move Blocks</title>
</head>

<body>
<div class="header">
    <div class="logo">Logo</div>
    <div class="menu">
        <div class="login-button">Login</div>
        <div class="signup-button">Sign Up</div>
    </div>
</div>
<div class="container">
    <div class="navigation">
        <div id="menuToggle" class="menu-toggle">&#9776; Menu</div>
        <div class="menu">
            <div class="menu-item">Menu Item 1</div>
            <div class="menu-item">Menu Item 2</div>
            <div class="menu-item">Menu Item 3</div>
        </div>
        <div id="hideButton" class="hide-button">Hide Menu</div>
    </div>
    <div class="div_main">
        <div class="div_title">
            <div class="title">작업 블록</div>
            <div class="sub-title">블록을 클릭하고 드래그하여 자유롭게 수정하세요!</div>
        </div>
        <div class="main-content">
            <div class="content">
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element">개발 환경 세팅</div>
                        <div class="div_element">이태한</div>
                    </a>
                </div>
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element"></div>
                        <div class="div_element"></div>
                    </a>
                </div>
            </div>
            <div class="content">
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element"></div>
                        <div class="div_element"></div>
                    </a>
                </div>
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element"></div>
                        <div class="div_element"></div>
                    </a>
                </div>
            </div>
            <div class="content">
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element"></div>
                        <div class="div_element"></div>
                    </a>
                </div>
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element"></div>
                        <div class="div_element"></div>
                    </a>
                </div>
            </div>
            <div class="content">
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element"></div>
                        <div class="div_element"></div>
                    </a>
                </div>
                <div class="div_abox draggable" draggable="true">
                    <a>
                        <div class="div_element"></div>
                        <div class="div_element"></div>
                    </a>
                </div>
            </div>
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
