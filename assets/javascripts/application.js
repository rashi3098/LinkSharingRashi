// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-3.3.1.min
//= require bootstrap
//= require popper.min
//= require_self
function register(){
    $.ajax({
         type: 'GET',
        url: 'http://localhost:8080/login/register/',
        data: {
                email: $("#email").val(), password: $("#password").val(), confirmPassword: $("#confirmPassword").val(),
                userName: $("#userName").val(), firstName: $("#firstName").val(), lastName: $("#lastName").val()
        },
        success: function(resp){
             alert(resp.m);
            $("#fullpage").load(" #fullpage");
        },
        error: function (){
             alert("check your credentials");
        }
    });
}

function serious(id, seriousness){
    $.ajax({
         type: 'GET',
        url: 'http://localhost:8080/subscription/changeSeriousness/',
        data: {id: id, seriousness: seriousness},
        success: function(){
             alert("Seriousness changed");
             $("#subscriptions0").load(" #subscriptions0");
        },
        error: function(){
             alert("failed")
        }

    });
}

function visibility(id, privacy){
$.ajax({
    type: 'GET',
    url: 'http://localhost:8080/topic/changePrivacy/',
    data: {id: id, privacy: privacy},
    success: function(){
        alert("Visibility changed");
        $("#subscriptions0").load(" #subscriptions0");
    },
    error: function(){
        alert("failed")
    }
});
}

function invite(){

}

function edittopic(id){
   $.ajax({
       type: 'GET',
       url: 'http://localhost:8080/topic/edittopic/',
       data: {id: id, edit: $("#edit").val()},
       sucess: function (){
           alert("Edited");
           $("#subscriptions").load(" #subscriptions");
           $("#user").load(" #user");
           $("#trendingt").load(" #trendingt");

       },
       Error: function (){
           alert("Failed")
       }

   });
}

function forgotpassword(){
    $.ajax({
        type: 'GET',
        url: 'http://localhost:8080/user/forgotpassword1/',
        data: {email: $("#femail").val(), pass: $("#fpsw").val(), cpass: $("#fcpsw").val()},
        success: function(resp){
            alert(resp.m);
            $("#forgot").load(" #forgot");
        },
        Error: function(){
            alert("Check yoyr credentials");
        }
    });
}