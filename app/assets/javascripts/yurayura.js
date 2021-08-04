$(function () {
    setTimeout('rect()'); //アニメーションを実行
});

function rect() {
    $('#rect').animate({
        marginBottom: '-=10px'
    }, 2000).animate({
        marginTop: '+=10px'
    }, 2000);
    setTimeout('rect()', 2000); //アニメーションを繰り返す間隔

}