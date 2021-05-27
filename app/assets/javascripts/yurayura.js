$(function () {
    setTimeout('rect()'); //アニメーションを実行
});

function rect() {
    $('#rect').animate({
        marginBottom: '-=30px'
    }, 4000).animate({
        marginTop: '+=30px'
    }, 4000);
    setTimeout('rect()', 2000); //アニメーションを繰り返す間隔

}