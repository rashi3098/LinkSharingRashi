<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 09/09/20
  Time: 3:45 PM
--%>

<%@ page import="linksharing3.Subscription" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <style type="text/css">
    .bg-warning{
        background-color: #6c757d;
    }
    .icon{
        color: grey;
        z-index: 1.5;
        position: absolute;
        width: 2em;
        height: 2em;
        line-height: 2em;
        padding-left: 18px;
    }
    .icon1{
        color: grey;
        z-index: 1.5;
        position: absolute;
        width: 2em;
        height: 2em;
        line-height: 1.2em;
        padding-left: 10px;
        padding-bottom: 5px;
    }

    input[type= search]{


        width: 190px;
        padding-left: 35px;
    }
    .et {
        color: white;
    }
    .et2{
        margin-left: 12px;
    }.avatar{

         width: 100px;
         height:100px;
         border: 2px solid black;
         margin-left: 8px;
         margin-top: 10px;
     }
    .test {
        border: 2px solid black;
        border-radius: 10px;
        margin-top: 20px;

    }
    .space{
        margin-top: 20px;
    }
    .search-wrapper {
        position: relative;
        padding: 10px;
        width: 200px;
        margin: auto;
        margin-top: 0px;

    }
    .shiftRight{
        margin-left: 200px;
    }
    .shiftRight1{
        margin-left: 160px;
    }
    .shiftRight2{
        margin-left: 140px;
    }
    .makepadded{
        padding-left: 20px;
    }
    .Stud1{
        margin-left: 310px;
        width: 20%;
        margin-bottom: 10px;
    }
    .test1 {
        border: 2px solid black;
        padding-left: 0px;
        padding-bottom: 0px;
        padding-right: 0px;
        border-radius: 6px;
        margin-top: 10px;
    }
    .btn2  {
        width: 100px;

        margin-bottom: 10px;
    }
    .btn3 {
        width: 140px;
        margin-left: 40px;
    }
    .styling{
        border: 2px solid black;
        border-radius: 6px;
        padding-bottom: 10px;
    }
    .edit-topic{
        display: none;
    }
    .modal{
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
    .mheading{

        padding:10px;
        border: 3px #787878;
        border-radius: 5px;
        border-top-left-radius: 7px;
        border-top-right-radius: 7px;

        background-color:#80aaff;
    }

    </style>
</head>
<body>

<nav class="navbar sticky-top navbar-light bg-dark">
    <div class="container col-lg-8">
        <a class="navbar-brand" href="#" style="color: white">Link Sharing</a>
    </div>
    <div class="container col-lg-4">
        <span>
            <g:form controller="search" action="search">
            <i class="fa fa-search icon"></i>
            <input type="search" placeholder="Search..." class="form-control rounded-pill"/>
            </g:form>
        </span>

    </a>

        <div class="btn-group">
            <button type="button" class="btn" style="color: white">
                <svg width="25px" height="25px" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg" >
                    <path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                </svg>
                ${u.userName}
            </button>
            <button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <g:if test="${u.admin}">
                    <g:link controller="user" action="editprofile" class="dropdown-item">Profile</g:link>
                    <g:link controller="admin" action="adminview" class="dropdown-item">User</g:link>
                    <g:link>Topic</g:link>
                    <g:link>Posts</g:link>
                    <g:link controller="login" action="logout" class="dropdown-item">LogOut</g:link>
                </g:if>
                <g:else>
                    <g:link controller="user" action="editprofile" class="dropdown-item">Profile</g:link>
                    <g:link controller="login" action="logout" class="dropdown-item">LogOut</g:link>
                </g:else>
            </div>
        </div>
    </div>

</nav>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="test">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9" style="padding-left: 30px;">
                        <h3>${u.getFullName()}</h3>
                        <g:link controller="user" action="userprofile" params="[id: u.id]"><h5 class="text-muted">@${u.userName}</h5></g:link>
                        <div class="row">
                            <div class="col-md-3">
                                <h6 class="text-muted">Subcriptions</h6>
                                <g:link controller="user" action="userprofile" params="[id: u.id]">${subcount}</g:link>
                            </div>
                            <div class="col-md-9">
                                <h6 class="text-muted et2" style="padding-left: 10px">Topics</h6>
                                <g:link controller="user" action="userprofile" class="et2" style="padding-left: 10px;" params="[id: u.id]">${topicCount}</g:link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="space">

            </div>
            
            <!--  Topics -->
            <div class="styling">
                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container">
                        <div class="navbar-header">
                            <a class="navbar-brand et" href="#">Topics</a>
                        </div>
                        <div class="nav navbar-nav navbar-right">
                            <div class="search-wrapper">
                                <form>
                                    <i class="fa fa-search icon1"></i>
                                    <input type="search" placeholder="Search..." class="form-control rounded-pill" style="height: 20px; width: 120px"/>
                                </form>
                            </div>
                        </div>
                    </div>
                </nav>

                <g:each in="${linksharing3.Topic.findAllByCreatedBy(u)}" var="top">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9">
                        <div class="topicname" id="editoldtopic">
                            <g:link controller="topic" action="topicshow" params="[id: top.id]">${top.topicName}</g:link>
                        </div>
                        <div class="edit-topic" id="edit">
                                <g:form controller="topic" action="edittopic" params="[id: top.id]">
                                <input type="text" name="edit" placeholder="Grails" class="input" style="margin-top: 10px;">
                                <input type="button" value="save" class="submit" style="margin-right: 4px;" onclick="edit2()">
                                </g:form>
                        </div>
                        <div class="row">
                            <div class="col-md-6">

                            </div>
                            <div class="col-md-3">
                                <h6 class="text-muted">Subscriptions</h6>
                            </div>
                            <div class="col-md-3">
                                <h6 class="text-muted">Topics</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <h6 class="text-muted">@${top.createdBy.userName}</h6>
                            </div>
                            <div class="col-md-3">
                                <a href="#">${linksharing3.Subscription.countByTopic(top)}</a>
                            </div>
                            <div class="col-md-3">
                                <a href="#">${linksharing3.Topic.countByCreatedBy(u)}</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="container spacing">
                        <div class="row">
                            <div class="col-md-5">
                                <g:form controller="subscription" action="changeSeriousness" params="[id: top.id]">
                                <select id="seriousness" class="" name="serious" onchange="this.form.submit()">
                                    <g:if test="${linksharing3.Subscription.findByTopicAndCreatedBy(top, u).seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                        <option value="serious" selected>Serious</option>
                                        <option value="very serious">Very Serious</option>
                                        <option value="casual">casual</option>

                                    </g:if>
                                    <g:elseif test="${Subscription.findByTopicAndCreatedBy(top, u).seriousness == linksharing3.Subscription.Seriousness.Casual}">
                                        <option value="serious"> Serious</option>
                                        <option value="very serious">Very Serious</option>
                                        <option value="casual" selected>casual</option>
                                    </g:elseif>
                                    <g:else>
                                        <option value="serious"> Serious</option>
                                        <option value="very serious" selected>Very Serious</option>
                                        <option value="casual" >casual</option>
                                    </g:else>
                                </select>
                                </g:form>
                            </div>
                            <div class="col-md-4">
                                <g:form controller="topic" action="changePrivacy" params="[id: top.id]">
                                    <select id="privacy" name="privacy" onchange="this.form.submit()">
                                    <g:if test="${top.visibility==linksharing3.Topic.Visibility.Public}">
                                        <option value="private" selected>Private</option>
                                        <option value="public">Public</option>
                                    </g:if>
                                        <g:else>
                                            <option value="private" >Private</option>
                                            <option value="public" selected>Public</option>
                                        </g:else>
                                    </select>
                                </g:form>
                            </div>
                            <div class="col-md-1">
                                <a href="#">
                                    <svg width="30px" height="30px" style="margin-top: 10px;" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('specific-invitation-${top.topicName}').style.display='block'">
                                        <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                    </svg>
                                </a>

                                <div class="modal-invitation" >
                                    <div class="modal" id="specific-invitation-${top.topicName}">
                                        <div class="modal-content">
                                            <div class="mheading">
                                                Send Invitation
                                            </div>

                                            <g:form controller="subscription" action="invite">
                                                <div class="container" style="padding: 10px;">
                                                    <label for="email-${top.topicName}">Email*</label>
                                                    <input type="email" class="input" name="email" id="email-${top.topicName}"  required><br><br>

                                                    <label for="specific-topic-${top.topicName}">For Topic :</label>
                                                    <input id="specific-topic-${top.topicName}" type="radio" name="invitetopic" value="${top.topicName}">${top.topicName}<br><br>

                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal" >Close</button>
                                                    <button type="submit" class="btn btn-primary">Invite</button>
                                                </div>
                                            </g:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <a href="#">
                                    <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg" style="margin-top: 10px;" onclick="edit()">
                                        <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                                        <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                        <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
                                    </svg>
                                </a>
                            </div>
                            <div class="col-md-1">
                                <g:link controller="topic" action="deletetopic" params="[id: top.id]">
                                    <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg" style="margin-top: 10px;">
                                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                        <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                    </svg>
                                </g:link>
                            </div>
                        </div>
                    </div>
                </div>
                </g:each>
            </div>

        </div>
        <div class="space">

        </div>


        <!-- Profile Update -->
       ${flash.message}

        <div class="col-md-6">
            <div class="test">
                <nav class="navbar navbar-inverse bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Profile</a>
                        </div>
                    </div>
                </nav>

                <g:form controller="user" action="updateprofile">
                    <div class="form-group" style="margin-top: 10px">
                        <label for="fname" class="makepadded">FirstName*</label>
                        <input type="text" name="firstname" class="input shiftRight" id="fname"><br><br>
                        <label for="lname" class="makepadded">LastName*</label>
                        <input type="text" name="lastname" class="input shiftRight" id="lname"><br><br>
                        <label for="uname" class="makepadded">UserName*</label>
                        <input type="text" name="username" class="input shiftRight" id="uname"><br><br>

                        <!-- Profile Photo
                        <label for="file_name" class="makepadded">Photo</label>
                        <input type="text" class="input shiftRight1" id="file_name" >
                        <button id="files" onclick="document.getElementById('file').click(); return false">Browse...</button>
                        <input type="file" id="file" style="visibility: hidden;" accept="image/*" class="input"> -->

                        <button type="submit" class="btn btn-primary Stud1">Update</button>
                    </div>
                </g:form>
            </div>

            <div class="test">
                <nav class="navbar navbar-inverse bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Change Password</a>
                        </div>
                    </div>
                </nav>

                <g:form controller="user" action="updatepassword">
                    <div class="form-group" style="margin-top: 10px">
                        <label for="psw" class="makepadded">Password*</label>
                        <input type="Password" name="password" class="input shiftRight" id="psw"><br><br><br>
                        <label for="cpsw" class="makepadded">Confirm Password*</label>
                        <input type="Password" name="changepassword" class="input shiftRight2" id="cpsw"><br><br><br>
                        <button type="submit" class="btn btn-primary Stud1">Update</button>
                    </div>
                </g:form>
            </div>
            <div class="space">

            </div>

        </div>
    </div>
</div>


</body>
<script>
    function edit()
    {
        var icon=document.getElementById("edit");
        var cancel=document.getElementById("editoldtopic");
        icon.style.display='block';
        cancel.style.display='none';


    }
    function edit2()
    {
        var icon=document.getElementById("edit");
        var cancel=document.getElementById("editoldtopic");
        icon.style.display='none';
        cancel.style.display='block';
    }
</script>
</html>