

$(window).scroll(function(){
    var scroll = $(window).scrollTop();
    console.log(scroll);
    console.log("hello")

    if (scroll >=50) {      
        document.getElementById("NavCustomCSSHeader").style.boxShadow="0px 8px 10px rgba(0,0,0,0.3)";
        document.getElementsByTagName("a") [index].style.fontWeight="bolder";
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