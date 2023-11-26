<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/index_modal.css">
<script src="js/index/index_modal.js"></script>
<menu>
    <div class="logo"><span id="close-menu"><span class="fa fa-xmark"></span></span></div>
    <div class="modal_container">
        <div class="box">
            <form>
                <div class="form-row">
                    <div class="mb-3 row">
                        <label for="title" class="col-sm-2 col-form-label">제목:</label>
                        <div class="col-sm-10">
                            <input type="text" id="title" class="form-control" />
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="writer" class="col-sm-2 col-form-label">작성자:</label>
                        <div class="col-sm-10">
                            <input type="text" id="writer" class="form-control" />
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="manager" class="col-sm-2 col-form-label">담당자:</label>
                        <div class="col-sm-10">
                            <input type="text" id="manager" class="form-control" />
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-12">
                        <label for="content">내용:</label>
                        <textarea id="detail" class="form-control" rows="5"></textarea>
                    </div>
                </div>
            </form>
            <button type="button" class="btn btn-primary mt-2" onclick="func_saveModal()">save</button>
        </div>
    </div>
</menu>
<script>

    function func_saveModal() {
        let param = {
            "TITLE": $("#title").val()
            , "WRITER": $("#writer").val()
            , "MANAGER": $("#manager").val()
            , "DETAIL": $("#detail").val()
            , "USER_ID": '<%=session.getAttribute("sessionInfo")%>'
        }
        console.log("");
        <%--commAjax.request(--%>
        <%--    "${USER_URL}/USERAPI/savemodal"--%>
        <%--    , "POST"--%>
        <%--    , param--%>
        <%--    , function (data) {--%>
        <%--        if (data.result == 'false') {--%>
        <%--            alert("회원가입 실패");--%>
        <%--        } else {--%>
        <%--            location.href = "/login";--%>
        <%--        }--%>
        <%--    }--%>
        <%--)--%>
    }
</script>