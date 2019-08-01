function $(id) {
    return document.getElementById(id);
}

function createXhr() {
    var xhr = null;
    if(window.XMLHttpRequest == null){
        xhr = new ActiveXObject("Microsoft.XMLHttp");
    }else{
        xhr = new XMLHttpRequest();
    }
    return xhr;
}