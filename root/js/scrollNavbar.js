

$(window).scroll(function(){
    var scroll = $(window).scrollTop();
    console.log(scroll);
    console.log("hello")

    if (scroll >=50) {      
        for (let index = 1; index < 5; index++) {
            document.getElementsByTagName("a") [index].style.color="black";
            
        }

    } else {
        for (let index = 1; index < 5; index++) {
            document.getElementsByTagName("a") [index].style.color="black";
            
        }
        document.getElementById("NavCustomCSSHeader").style.boxShadow="";
    }
});