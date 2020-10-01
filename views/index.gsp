<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 31/08/20
  Time: 5:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Things I've Learned </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <asset:javascript src="application.js"/>
    <style>
    .bg-warning{
        background-color: #6c757d;
    }
    .et{
        font-size: 25px;
        margin-top: 5px;
        color: white;
    }
    .et:hover{

    }


    .icon{
        color: grey;
        z-index: 2;
        position: absolute;
        width: 2.5em;
        height: 2.5em;
        line-height: 3.1em;
        padding-left: 15px;
    }

    .search-box,.close-icon,.search-wrapper {
        position: relative;
        padding: 10px;
    }
    .search-wrapper {
        width: 200px;
        margin: auto;
        margin-top: 0px;

    }
    .search-box {
        width: 80%;
        border: 1px solid #ccc;
        outline: 0;
        border-radius: 15px;
        text-align: center;
    }
    .search-box:focus {
        box-shadow: 0 0 15px 5px #b0e0ee;
        border: 2px solid #bebede;
    }
    .close-icon {
        border:1px solid transparent;
        background-color: transparent;
        display: inline-block;
        vertical-align: middle;
        outline: 0;
        cursor: pointer;
    }
    .close-icon:after {
        content: "X";
        display: block;
        width: 15px;
        height: 15px;
        position: absolute;
        background-color: grey;
        z-index:1;
        right: 35px;
        top: 0;
        bottom: 0;
        margin: auto;
        padding: 2px;
        border-radius: 50%;
        text-align: center;
        color: white;
        font-weight: normal;
        font-size: 12px;
        box-shadow: 0 0 2px #e50f0f;
        cursor: pointer;
    }
    .search-box:not(:valid) ~ .close-icon {
        display: none;
    }
    .Stud{
        margin-left: 150px;
        width: 30%;
        margin-bottom: 10px;
    }
    .Stud1{
        margin-left: 150px;
        width: 30%;
        margin-bottom: 10px;
    }
    .test {
        border: 2px solid black;
        padding-left: 0px;
        padding-bottom: 0px;

        position: relative;
        top: 0px;
        padding-right: 0px;
        border-radius: 6px;
        margin-top: 10px;
    }
    .test1 {
        border: 2px solid black;
        padding-left: 0px;
        padding-bottom: 0px;
        padding-right: 0px;
        border-radius: 6px;
        margin-top: 10px;
    }
    .test2{

        width: 100px;
        height: 20px;
    }
    .test3{
        border: 2px solid black;
        border-radius: 6px;
        margin-top: 10px;
    }
    h3{
        border-bottom: 2px solid black;
        padding-left: 6px;
        padding-bottom: 5px;
    }
    a{
        padding-left: 9px;
    }
    .form-control{
        width: 70%;
    }
    .form-group{
        padding: 9px;
    }
    .avatar{
        vertical-align: middle;
        width: 100px;
        height:100px;
        border: 2px solid black;
        margin-left: 3px;
        margin-top: 3px;
    }
    .t1{
        display: flex;
        justify-content: flex-end;
        padding-right: 16px;


    }
    .clear{
        padding-right: 10px;
    }
    #files{
        margin-top: 10px;
    }
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 4px;
        border: 1px solid #888;
        width: 50%;
    }

    </style>


</head>
<body>
<nav class="navbar navbar-light bg-warning">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand et" href="#">Link Sharing</a>
        </div>

        <div class="nav navbar-nav navbar-right">
            <div class="search-wrapper">
                <form>
                    <i class="fa fa-search icon"></i>
                    <input type="text" name="focus" required class="search-box" placeholder="Search...." />
                    <button class="close-icon" type="reset"></button>
                </form>
            </div>
        </div>
    </div>
</nav>



<div class="container" id="fullpage">
    <div class="row">
        <div class="col-md-7">
            <div class="test3">
                <nav class="navbar navbar-inverse ">

                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Recent Shares</a>
                    </div>
                </nav>
                 <g:each in="${linksharing3.Topic.list([max:5, sort:"dateCreated",order:"desc"])}" var="rs">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h5>${rs.createdBy.getFullName()}</h5>
                                    </div>
                                    <div class="col-md-6">
                                        <h5>@${rs.createdBy.userName}</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <a href="#" class="t1">${rs.topicName}</a>
                            </div>
                        </div>
                        <h5>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'</h5>
                        <div class="row">
                            <div class="col-md-9">
                                <i class="fa fa-facebook clear"></i>
                                <i class="fa fa-twitter clear"></i>
                                <i class="fa fa-google clear"></i>
                            </div>
                            <div class="col-md-3">
                                <a href="#">View Post</a>
                            </div>
                        </div>
                    </div>
                </div>
                 </g:each>
                        </div>
            <div class="test2">

            </div>
            <div class="test3">
                <nav class="navbar navbar-inverse ">

                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Top Posts</a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Today <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Today</a></li>
                                <li><a href="#">1 Week</a></li>
                                <li><a href="#">1 Month</a></li>
                                <li><a href="#">1 Year</a></li>
                            </ul>
                        </li>

                    </ul>

                </nav>
       <g:each in="${linksharing3.ResourceRating.list(max: 5, order: "desc", sort: "score")}" var="ri">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h5>${ri.resource.createdBy.getFullName()}</h5>
                                    </div>
                                    <div class="col-md-6">
                                        <h5>${ri.resource.createdBy.userName}</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <a href="#" class="t1">${ri.resource.topic.topicName}</a>
                            </div>
                        </div>
                        <h5>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'</h5>
                        <div class="row">
                            <div class="col-md-9">
                                <i class="fa fa-facebook clear"></i>
                                <i class="fa fa-twitter clear"></i>
                                <i class="fa fa-google clear"></i>
                            </div>
                            <div class="col-md-3">
                                <a href="#">View Post</a>
                            </div>
                        </div>
                    </div>
                </div>
       </g:each>
            </div>
        </div>

  ${flash.message}
        <div class="col-md-5">
            <div class="test">
                <nav class="navbar navbar-inverse ">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Login</a>
                        </div>
                    </div>
                </nav>
                 <g:form url="[action:'loginprocess',controller:'login']" name="loginForm">
                    <div class="form-group">
                        <label for="userName">Email/Username</label>
                        <g:field type="text" name="uname"  placeholder="Email" class="form-control" required=""/>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" name="psw" placeholder="Password" class="form-control" required="">
                    </div>
                     <a href="#" onclick="document.getElementById('Modal-fpass').style.display='block'">Forgot password?</a>
                     <g:submitButton class="btn btn-primary Stud"
                                     name="loginprocess"
                                     value="Login" />
                 </g:form>
            </div>

            <div class="test1">
                <nav class="navbar navbar-inverse ">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Register</a>
                        </div>
                    </div>
                </nav>

                    <div class="form-group">
                        <label for="firstName">First Name</label>
                        <input class="form-control" id="firstName" type="text" name="firstName" placeholder="First Name" required>
                    </div>
                    <div class="form-group">
                        <label for="lastName">Last Name</label>
                        <input type="text" name="lastName" id="lastName" class="form-control" placeholder="lastName" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" class="form-control" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                        <label for="userName">Username</label>
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                       <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                    </div>

                    <div class="form-group">
                        <label for="confirmPassword">Confirm Password</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm password" required>
                    </div>
                    <div class="form-group">
                        <label for="file_name">Photo</label>
                        <input type="file" id="file_name" name="image" accept="image/*">
                    </div>

                   <button type="submit" class="btn btn-primary Stud" onclick="register()">Register</button>

            </div>
        </div>
    </div>
</div>
<div class="test2">

</div>



<!-- Forgot password --->
<div class="modal-forgot-password">

    <div id="Modal-fpass" class="modal">


        <div class="modal-content">

            <div class="container" style="padding:10px">
                <label for="femail">Email*</label>
                <input type="email" name="email" class="input" id="femail" style="margin-left: 60px"><br><br><br>
                <label for="fpsw">Password*</label>
                <input type="password"  name="password" id="fpsw" class="input" style="margin-left: 40px"> <br><br><br>
                <label for="fcpsw">Confirm Password*</label>
                <input type="password"  name="confirmpassword" id="fcpsw" class="input">

                <br><br><br>
                <input type="button" value="cancel" class="submit" style=" margin-left:100px;" onclick="document.getElementById('Modal-fpass').style.display='none'">
                <input type="submit" value="update" class="submit"  style= "margin-left:100px;" onclick="forgotpassword()" >

                <br><br>

            </div>




        </div>

    </div>
</div>











</body>
</html>






