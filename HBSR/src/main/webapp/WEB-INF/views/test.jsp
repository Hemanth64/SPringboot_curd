<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

   
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
        <link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css" />
        <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="https://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
   
</head>
<body>



    

    
  
        <div data-role="page" id="wizard">
            <div data-role="header" data-tap-toggle="false" data-position="fixed">
                 <h1>Wizard</h1>

            </div>
            <div role="main" class="ui-content">
                              <div class="progress">
                    <p>1</p>
                    <div class="line"></div>
                    <p>2</p>
                    <div class="line"></div>
                    <p>3</p>
                    <div class="line"></div>
                    <p>4</p>
                    <div class="line"></div>
                    <p>5</p>
                </div>
              <h3 style="text-align:center;">Swipe left or right</h3>
                <div class="steps">
                    <div class="step">
                        <div class="ui-body ui-body-a ui-corner-all">
                            
<h3>Step 1</h3>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="ui-body ui-body-a ui-corner-all">
                            
<h3>Step 2</h3>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="ui-body ui-body-a ui-corner-all">
                            
<h3>Step 3</h3>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="ui-body ui-body-a ui-corner-all">
                            
<h3>Step 4</h3>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="step">
                        <div class="ui-body ui-body-a ui-corner-all">
                            
<h3>Step 5</h3>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div data-role="footer" data-tap-toggle="false" data-position="fixed">
                 <h1>Wizard</h1>

            </div>
        </div>
<script>


$(document).on("pagecreate", "#wizard", function () {
    $(".step").not(":eq(0)").addClass("ui-screen-hidden");
    $(".step:eq(0)").addClass("active");
    $(".progress p:eq(0)").addClass("currentStep");
    $(".ui-content").on("swipeleft swiperight", function (e) {
        var swipe = e.type,
            nextStep = $(".steps").find(".active").next(".step"),
            prevStep = $(".steps").find(".active").prev(".step");
        switch (true) {
            case (swipe == "swipeleft" && nextStep.length > 0):
                $(".step.active")
                    .toggleClass("slide out");
                break;
            case (swipe == "swiperight" && prevStep.length > 0):
                $(".step.active")
                    .toggleClass("slide out reverse");
                break;
        }
    });
}).on("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", ".step", function (e) {
    var elm = $(e.target);
    switch (true) {
        case (elm.hasClass("out") && !elm.hasClass("reverse")):
            $(elm).toggleClass("slide out ui-screen-hidden active");
            $(elm).next(".step").toggleClass("slide in active ui-screen-hidden");
            break;
        case (elm.hasClass("out") && elm.hasClass("reverse")):
            $(elm).toggleClass("slide out ui-screen-hidden reverse active");
            $(elm).prev(".step").toggleClass("slide in active reverse ui-screen-hidden");
            break;
        case (elm.hasClass("in") && !elm.hasClass("reverse")):
            elm.toggleClass("slide in");
            break;
        case (elm.hasClass("in") && elm.hasClass("reverse")):
            elm.toggleClass("slide in reverse");
            break;
    }
    var dot = $(".active").index();
    $("p:eq(" + dot + ")").prevAll("p").addBack().addClass("currentStep");
    $("p:eq(" + dot + ")").nextAll("p").removeClass("currentStep");
});

</script>

</body>
</html>