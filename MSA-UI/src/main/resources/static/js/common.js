let commAjax = {
    request: function (URL, method, inObj, callback, errorCallback) {

        var jsonData = JSON.stringify(inObj);
        $.ajax({
            url: URL,
            method: method,
            cache: false,
            dataType: 'json',
            data: jsonData,
            contentType: "application/json; charset=UTF-8",
            jsonp: 'callback',
            beforeSend: function (xmlHttpRequest) {
                // xmlHttpRequest.setRequestHeader("AJAX", "true"); // ajax
                // xmlHttpRequest.setRequestHeader("x-api-key", "SpammerGoHome"); // API
                // xmlHttpRequest.setRequestHeader("LIB", LIB);
                // $('#load-spinner').removeClass("d-none").addClass("d-block");
            },
            success: function (response, statusText, data) {
                ING(false);
                callback(data.responseJSON);
            },
            error: function (request, status, error, data) {
                alert("API 서버가 응답하지 않습니다.");
                console.log("request API 서버가 응답하지 않습니다.");
                errorCallback(data.responseJSON);
            },
            complete: function (data) {
            }
        });
    }
}