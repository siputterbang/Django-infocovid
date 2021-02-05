$(window).scroll(function(){
    var scroll = $(window).scrollTop();
    console.log(scroll);

    if (scroll >=1) {      
        document.getElementById("NavCustomCSSHeader").style.boxShadow="0px 8px 10px rgba(0,0,0,0.3)";
        for (let index = 1; index < 5; index++) {
            document.getElementsByTagName("a") [index].style.color="black";
            document.getElementsByTagName("a") [index].style.fontWeight="bolder";
            
        }

    } else {
        for (let index = 1; index < 5; index++) {
            document.getElementsByTagName("a") [index].style.color="black";
            
        }
        document.getElementById("NavCustomCSSHeader").style.boxShadow="";
    }
});