<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 03/09/20
  Time: 10:21 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" import="linksharing3.Resource; linksharing3.Topic; linksharing3.Subscription
; linksharing3.DocumentResource; linksharing3.LinkResource" %>
<html>
<head>
    <title>DashBoard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
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
        z-index: 2;
        position: absolute;
        width: 2em;
        height: 2em;
        line-height: 1.2em;
        padding-left: 150px;
        padding-bottom: 5px;
    }

    input[type= search]{


        width: 190px;
        padding-left: 35px;
    }

    .et{
        color: white;

    }
    .avatar{

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
    .et2{
        margin-left: 12px;
    }
    .space{
        height: 30px;
        width: 40px;
    }
    .space1 {

        height: 100px;
        width: 90px;
    }
    .btn2  {
        width: 120px;
        margin-left: 20px;
        margin-bottom: 10px;
    }
    .spacing {
        margin-top: 20px;
    }
    .test3{
        border: 2px solid black;
        border-radius: 6px;
    }
    .test2 {
        border-top: 2px solid black;
        border-bottom: 2px solid black;

    }
    .styling{

        margin-top: 25px;
        margin-left: 22px;
        border: 2px solid black;
        border-radius: 6px;

    }
    .clear{
        padding-right: 4px;
    }
    .cheat {
        font-size: 12px;
        padding-left: 25px;
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
    .box {
        width: 120px;

        border: 1px solid black;

        color: #1c87c9;
        background-color: #eee;
        border-radius: 5px;


    }
    .edit-topic{
        display: none;
    }
    </style>


</head>
<body>

<nav class="navbar sticky-top navbar-light bg-dark">
    <div class="container col-lg-6">
        <a class="navbar-brand" href="#" style="color: white">Link Sharing</a>
    </div>
    <div class="container col-lg-6">
        <span>
            <i class="fa fa-search icon"></i>
            <g:form controller="search" action="search">
            <input type="search" name="searchElement" placeholder="Search..." class="form-control rounded-pill"/>
            </g:form>
        </span>
        <a href="#" class="et">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-chat-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('Modal-topic').style.display='block'">
                <path d="M8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6-.097 1.016-.417 2.13-.771 2.966-.079.186.074.394.273.362 2.256-.37 3.597-.938 4.18-1.234A9.06 9.06 0 0 0 8 15z"/>
            </svg>
        </a>
        <a href="#" class="et">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick=" document.getElementById('Modal-invite').style.display='block'">
                <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
            </svg>
        </a>
        <a href="#" class="et">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-link-45deg" fill="currentColor" xmlns="http://www.w3.org/2000/svg" oading="lazy" onclick="document.getElementById('Modal-url').style.display='block'">
                <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
                <path d="M5.712 6.96l.167-.167a1.99 1.99 0 0 1 .896-.518 1.99 1.99 0 0 1 .518-.896l.167-.167A3.004 3.004 0 0 0 6 5.499c-.22.46-.316.963-.288 1.46z"/>
                <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
                <path d="M10 9.5a2.99 2.99 0 0 0 .288-1.46l-.167.167a1.99 1.99 0 0 1-.896.518 1.99 1.99 0 0 1-.518.896l-.167.167A3.004 3.004 0 0 0 10 9.501z"/>
            </svg>
        </a>
        <a href="#" class="et">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('Modal-document').style.display='block'">
                <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
            </svg>
        </a>
        <div class="btn-group">
            <g:link controller="user" action="userprofile" params="[id: u.id]"><button type="button" class="btn" style="color: white">
                <svg width="25px" height="25px" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                </svg>
                ${u.firstName}
            </button></g:link>
            <button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <g:link controller="user" action="editprofile" class="dropdown-item">Profile</g:link>
                <g:if test="${u.admin}">
                    <g:link controller="admin" action="adminview" class="dropdown-item">User</g:link>
                <a class="dropdown-item" href="#">Topics</a>
                <a class="dropdown-item" href="#">Posts</a>
                </g:if>
                <g:else>
                    <a class="dropdown-item" href="#" style="display: none">User</a>
                    <a class="dropdown-item" href="#" style="display: none">Topics</a>
                    <a class="dropdown-item" href="#" style="display: none">Posts</a>
                </g:else>
                <g:link controller="login" action="logout" class="dropdown-item">Log Out</g:link>
            </div>
        </div>
    </div>
</nav>

<!-- Modal Topic -->

<div class="modal-topic">

    <div id="Modal-topic" class="modal">


        <div class="modal-content">

            <div class="mheading">Create Topic</div>
                <g:form controller="topic" action="createtopic" name="create-topic" params="[id: u.id]">
                <div class="container" style="padding:10px">
                    <label for="topicName">Name*</label>
                    <g:textField name="topicName" class="input" style="float: right" id="topicName"></g:textField><br><br><br>

                    <label for="visi">Visibility*</label>

                    <g:select name="visi" from="${linksharing3.Topic.Visibility.values()}" value="${linksharing3.Topic.Visibility}" optionKey="" style="float: right"></g:select>
                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-topic').style.display='none'">
                    <g:submitButton name="createtopic" value="Save"  class="submit" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"></g:submitButton>


                    <br><br>

                </div>

                </g:form>



        </div>

    </div>
</div>



<!-- Doc Resource -->
<div class="modal-document">

    <div id="Modal-document" class="modal">


        <div class="modal-content">

            <div class="mheading">Share Document</div>
            <g:uploadForm name="gUpload" controller="resource" action="gUpload">


                <div class="container" style="padding:10px">
                    <label for="doctext">Document*</label>

                    <input type="file"  name="docFile" id="doctext" >
                    <br><br><br>
                    <label for="document">Description*</label>
                    <textarea id="document" name="document" rows="6" cols="50" style="margin-left:30px"></textarea>
                    <br><br><br>

                    <label for="t-doc">Topic*</label>

                    <select id="t-doc" name="t-doc" style="margin-left:30px; width:75px">

                        <g:each in="${linksharing3.Topic.list()}" var="t">
                        <option value="${t.topicName}">${t.topicName}</option>
                        </g:each>

                    </select>

                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-document').style.display='none'">
                    <g:submitButton name="gUpload" value="Share"  class="submit" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-document').style.display='none'"></g:submitButton>

                    <br><br>

                </div>


            </g:uploadForm>


        </div>

    </div>
</div>



<!-- Link Resource  -->


<div class="modal-link">

    <div id="Modal-url" class="modal">


        <div class="modal-content">

            <div class="mheading">Share Link</div>
            <g:uploadForm controller="resource" action="gLinkUpload" name="gfileUpload">


                <div class="container" style="padding:10px">
                    <label for="url">Link*</label>
                    <input type="url" name="url" id="url" style="margin-left:30px">

                    <br><br><br>
                    <label for="document">Description*</label>
                    <textarea id="document" name="document" rows="6" cols="50" style="margin-left:30px"></textarea>
                    <br><br><br>

                    <label for="t-url">Topic*</label>


                    <select id="t-url" name="t-url" style="margin-left:30px; width:75px">
                        <g:each in="${linksharing3.Topic.list()}" var="t">
                        <option value="${t.topicName}">${t.topicName}</option>
                        </g:each>


                    </select>

                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-url').style.display='none'">
                    <g:submitButton name="gLinkUpload" value="Share"  class="submit" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-url').style.display='none'"></g:submitButton>
                    <br><br>

                </div>


            </g:uploadForm>


        </div>

    </div>
</div>

</div>



<!-- Send invitation --->

<div class="modal-invitation">

    <div id="Modal-invite" class="modal">


        <div class="modal-content">

            <div class="mheading">Send Invitation</div>

              <g:form controller="subscription" action="invite" params="[id: u.id]">

                <div class="container" style="padding:10px">

                    <label for="email">Email*</label>
                    <input type="email" name="email" class="input" id="email" style="float:right"><br><br><br>

                    <label for="invitetopic">Topic*</label>

                    <select id="invitetopic" name="invitetopic" style="float:right">
                        <g:each in="${linksharing3.Topic.list()}" var="t">
                            <g:if test="${linksharing3.Subscription.findByTopicAndCreatedBy(t, u)}">
                        <option value="${t.topicName}">${t.topicName}</option>
                            </g:if>
                        </g:each>
                    </select>
                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick=" document.getElementById('Modal-invite').style.display='none'">
                    <input type="submit" value="invite" class="submit" style="float:right; margin-right:4px;" onclick=" document.getElementById('Modal-invite').style.display='none'" >

                    <br><br>

                </div>


              </g:form>


        </div>

    </div>
</div>



<div class="container-fluid">
    <div class="row">
        <div class="col-md-5">
            <div class="test">
                <div class="row" id="user">
                    <div class="col-md-3">
                        <g:link controller="user" action="userprofile" params="[id: u.id]"><img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar"></g:link>
                    </div>
                    <div class="col-md-9">
                        <h3>${u.getFullName()}</h3>
                        <g:link controller="user" action="userprofile" params="[id: u.id]"><h5 class="text-muted">@${u.firstName}</h5></g:link>
                        <div class="row">
                            <div class="col-md-3">
                                <h6 class="text-muted">Subcriptions</h6>
                                <g:link controller="user" action="userprofile" params="[id: u.id]">${linksharing3.Subscription.countByCreatedBy(u)}</g:link>
                            </div>
                            <div class="col-md-9">
                                <h6 class="text-muted et2">Topics</h6>
                                <g:link controller="user" action="userprofile" params="[id: u.id]" class="et2">${linksharing3.Topic.countByCreatedBy(u)}</g:link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="space">

            </div>
            <g:if test="${linksharing3.Subscription.countByCreatedBy(u)}" >
            <div class="test3">
                <nav class="navbar  navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Subscriptions</a>
                    </div>
                    <div class="container col-lg-6">
                        <span>
                            <a href="#" style="margin-left: 100px" class="py-0">View All</a>
                        </span>
                    </div>
                </nav>
             <g:if test="${linksharing3.Subscription.countByCreatedBy(u)<5}">
             <g:each in="${linksharing3.Subscription.findAllByCreatedBy(u)}" var="sub">
                 <g:if test="${sub.createdBy == sub.topic.createdBy}">
                <div class="row" id="subscriptions">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9">
                        <g:link controller="topic" action="topicshow" params="[id: sub.topic.id]">${sub.topic.topicName}</g:link>
                        <div class="space">

                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <h6 class="text-muted">@${sub.topic.createdBy.userName}</h6>
                                <g:link controller="subscription" action="unsubscribe" params="[id: sub.id]">unsubscribe</g:link>
                            </div>
                            <div class="col-md-4">
                                <h6 class="text-muted">Subscriptions</h6>
                                <a href="#">${linksharing3.Subscription.countByTopic(Topic.findByCreatedBy(u))}</a>
                            </div>
                            <div class="col-md-3">
                                <h6 class="text-muted">post</h6>
                                <a href="#">${linksharing3.Resource.countByCreatedBy(u)}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="container spacing">
                        <div class="row">
                            <div class="col-md-4">

                                <div class="dropdown">
                                    <g:form controller="subscription" action="changeSeriousness" params="[id: sub.topic.id]">
                                        <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                            <g:if test="${sub.seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                                <option value="serious" selected>Serious</option>
                                                <option value="very serious">Very Serious</option>
                                                <option value="casual">Casual</option>
                                            </g:if>
                                            <g:elseif test="${sub.seriousness == linksharing3.Subscription.Seriousness.Casual}">
                                                <option value="serious">Serious</option>
                                                <option value="very serious">Very Serious</option>
                                                <option value="casual" selected>Casual</option>
                                            </g:elseif>
                                            <g:else>
                                                <option value="serious">Serious</option>
                                                <option value="very serious" selected>Very Serious</option>
                                                <option value="casual">Casual</option>
                                            </g:else>
                                        </select>
                                    </g:form>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <g:form controller="topic" action="changePrivacy" params="[id: sub.topic.id]">
                                    <select class="box" id="privacy" name="privacy"  onchange="this.form.submit()">
                                        <g:if test="${sub.topic.visibility == linksharing3.Topic.Visibility.Public}">
                                            <option value="public" selected>Public</option>
                                            <option value="private">Private</option>
                                        </g:if>
                                        <g:else>
                                            <option value="public">Public</option>
                                            <option value="private" selected>Private</option>
                                        </g:else>
                                    </select>
                                </g:form>
                            </div>
                            <div class="col-md-1">
                                <a href="#">
                                    <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                    </svg>
                                </a>
                            </div>
                            <div class="col-md-1">
                                <a href="#">
                                    <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                                        <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                        <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
                                    </svg>
                                </a>
                            </div>
                            <div class="col-md-1">
                                <g:link controller="topic" action="deletetopic" params="[id: sub.id]">
                                    <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                        <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                    </svg>
                                </g:link>
                            </div>
                        </div>
                    </div>
                </div>
                 </g:if>
                 <g:else>
                <div class="test2">

                    <div class="row">
                        <div class="col-md-3">
                            <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar" style="margin-top: 20px">
                        </div>
                        <div class="col-md-3" style="margin-top: 30px">
                            <a href="#">${sub.topic.topicName}</a>
                            <h6 class="text-muted">@${sub.topic.createdBy.userName}</h6>
                            <g:link controller="subscription" action="unsubscribe" params="[id: sub.topic.id]">Unsubscribe</g:link>
                        </div>
                        <div class="col-md-4" style="margin-top: 53px">
                            <h6 class="text-muted">Subscriptions</h6>
                            <a href="#">${linksharing3.Subscription.countByTopic(sub.topic)}</a>
                            <div class="dropdown">
                                <g:form controller="subscription" action="changeSeriousness" params="[id: sub.topic.id]">
                                    <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                        <g:if test="${sub.seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                            <option value="serious" selected>Serious</option>
                                            <option value="very serious">Very Serious</option>
                                            <option value="casual">Casual</option>
                                        </g:if>
                                        <g:elseif test="${sub.seriousness == linksharing3.Subscription.Seriousness.Casual}">
                                            <option value="serious">Serious</option>
                                            <option value="very serious">Very Serious</option>
                                            <option value="casual" selected>Casual</option>
                                        </g:elseif>
                                        <g:else>
                                            <option value="serious">Serious</option>
                                            <option value="very serious" selected>Very Serious</option>
                                            <option value="casual">Casual</option>
                                        </g:else>
                                    </select>
                                </g:form>
                            </div>
                        </div>
                        <div class="col-md-2" style="margin-top: 53px">
                            <h6 class="text-muted">Post</h6>
                            <a href="#">${linksharing3.Resource.countByTopic(sub.topic)}</a><br>
                            <a href="#">
                                <svg width="30px" height="40px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
                 </g:else>
             </g:each>
             </g:if>
                <g:else>
                    <g:each in="${linksharing3.Subscription.findAllByCreatedBy(u).subList(1,5)}" var="sub">
                        <g:if test="${sub.createdBy == sub.topic.createdBy}">
                            <div class="row">
                                <div class="col-md-3">
                                    <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                                </div>
                                <div class="col-md-9">
                                    <g:link controller="topic" action="topicshow" params="[id: sub.topic.id]">${sub.topic.topicName}</g:link>
                                    <div class="space">

                                    </div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <h6 class="text-muted">@${sub.topic.createdBy.userName}</h6>
                                            <g:link controller="subscription" action="unsubscribe" params="[id: sub.id]">unsubscribe</g:link>
                                        </div>
                                        <div class="col-md-4">
                                            <h6 class="text-muted">Subscriptions</h6>
                                            <a href="#">${linksharing3.Subscription.countByTopic(Topic.findByCreatedBy(u))}</a>
                                        </div>
                                        <div class="col-md-3">
                                            <h6 class="text-muted">post</h6>
                                            <a href="#">${linksharing3.Resource.countByCreatedBy(u)}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="container spacing">
                                    <div class="row">
                                        <div class="col-md-4">

                                            <div class="dropdown">
                                                <g:form controller="subscription" action="changeSeriousness" params="[id: sub.topic.id]">
                                                    <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                                        <g:if test="${sub.seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                                            <option value="serious" selected>Serious</option>
                                                            <option value="very serious">Very Serious</option>
                                                            <option value="casual">Casual</option>
                                                        </g:if>
                                                        <g:elseif test="${sub.seriousness == linksharing3.Subscription.Seriousness.Casual}">
                                                            <option value="serious">Serious</option>
                                                            <option value="very serious">Very Serious</option>
                                                            <option value="casual" selected>Casual</option>
                                                        </g:elseif>
                                                        <g:else>
                                                            <option value="serious">Serious</option>
                                                            <option value="very serious" selected>Very Serious</option>
                                                            <option value="casual">Casual</option>
                                                        </g:else>
                                                    </select>
                                                </g:form>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <g:form controller="topic" action="changePrivacy" params="[id: sub.topic.id]">
                                                <select class="box" id="privacy" name="privacy"  onchange="this.form.submit()">
                                                    <g:if test="${sub.topic.visibility == linksharing3.Topic.Visibility.Public}">
                                                        <option value="public" selected>Public</option>
                                                        <option value="private">Private</option>
                                                    </g:if>
                                                    <g:else>
                                                        <option value="public">Public</option>
                                                        <option value="private" selected>Private</option>
                                                    </g:else>
                                                </select>
                                            </g:form>
                                        </div>
                                        <div class="col-md-1">
                                            <a href="#">
                                                <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="col-md-1">
                                            <a href="#">
                                                <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                                                    <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                                    <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="col-md-1">
                                            <g:link controller="topic" action="deletetopic" params="[id: sub.id]">
                                                <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                                </svg>
                                            </g:link>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </g:if>
                        <g:else>
                            <div class="test2">

                                <div class="row">
                                    <div class="col-md-3">
                                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar" style="margin-top: 20px">
                                    </div>
                                    <div class="col-md-3" style="margin-top: 30px">
                                        <a href="#">${sub.topic.topicName}</a>
                                        <h6 class="text-muted">@${sub.topic.createdBy.userName}</h6>
                                        <g:link controller="subscription" action="unsubscribe" params="[id: sub.topic.id]">Unsubscribe</g:link>
                                    </div>
                                    <div class="col-md-4" style="margin-top: 53px">
                                        <h6 class="text-muted">Subscriptions</h6>
                                        <a href="#">${linksharing3.Subscription.countByTopic(sub.topic)}</a>
                                        <div class="dropdown">
                                            <g:form controller="subscription" action="changeSeriousness" params="[id: sub.topic.id]">
                                                <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                                    <g:if test="${sub.seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                                        <option value="serious" selected>Serious</option>
                                                        <option value="very serious">Very Serious</option>
                                                        <option value="casual">Casual</option>
                                                    </g:if>
                                                    <g:elseif test="${sub.seriousness == linksharing3.Subscription.Seriousness.Casual}">
                                                        <option value="serious">Serious</option>
                                                        <option value="very serious">Very Serious</option>
                                                        <option value="casual" selected>Casual</option>
                                                    </g:elseif>
                                                    <g:else>
                                                        <option value="serious">Serious</option>
                                                        <option value="very serious" selected>Very Serious</option>
                                                        <option value="casual">Casual</option>
                                                    </g:else>
                                                </select>
                                            </g:form>
                                        </div>
                                    </div>
                                    <div class="col-md-2" style="margin-top: 53px">
                                        <h6 class="text-muted">Post</h6>
                                        <a href="#">${linksharing3.Resource.countByTopic(sub.topic)}</a><br>
                                        <a href="#">
                                            <svg width="30px" height="40px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </g:each>
                </g:else>
            </div>
            </g:if>
            <div class="space1">

            </div>
            <div class="test3">
                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Trending Topics</a>
                    </div>
                    <div class="col-lg -6"></div>
                </nav>

                <g:each in="${linksharing3.Topic.list(max: 5)}" var="top" >
                    <g:if test="${top.createdBy.id == u.id}">
                        <div class="row" id="trendingt">
                            <div class="col-md-3">
                                <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar" style="margin-top: 20px">
                            </div>
                            <div class="col-md-9" style="margin-top: 30px">
                               <div id="oldtopic" class="topicnamedit">
                              <g:link controller="topic" action="topicshow" params="[id: top.id]">${top.topicName}</g:link>
                               </div>
                                <div class="edit-topic">

                                        <input type="text" name="edit" style="margin-right: 5px; width: 30%;" id="edit">
                                        <input type="button" value="save" class="submit" onclick="edittopic(${top.id})" style="margin-right: 4px;">
                                        <input type="button" value="cancel" class="submit" onclick="edit2()" style="margin-right: 4px;">

                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <h6>@${top.createdBy.userName}</h6>
                                    </div>
                                    <div class="col-md-4">
                                        <h6 class="text-muted">Subscriptions</h6>
                                    </div>
                                    <div class="col-md-3">
                                        <h6 class="text-muted">Posts</h6>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5"></div>

                                <div class="col-md-4">
                                    <g:link controller="user" action="userprofile" params="[id: top.id]">${linksharing3.Subscription.countByTopic(top)}</g:link>
                                </div>
                                <div class="col-md-3">
                                    <g:link controller="user" action="userprofile" params="[id: top.id]">${linksharing3.Resource.countByTopic(top)}</g:link>
                                </div>
                                </div>
                            </div>
                            </div>
                        <div class="container">
                            <div class="container spacing">
                                <div class="row">
                                    <div class="col-md-4">
                                        <g:form controller="subscription" action="changeSeriousness" params="[id: top.id]">
                                            <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                                <g:if test="${linksharing3.Subscription.findByTopic(top).seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                                    <option value="serious" selected>Serious</option>
                                                    <option value="very serious">Very Serious</option>
                                                    <option value="casual">Casual</option>
                                                </g:if>
                                                <g:elseif test="${linksharing3.Subscription.findByTopic(top).seriousness == linksharing3.Subscription.Seriousness.Casual}">
                                                    <option value="serious">Serious</option>
                                                    <option value="very serious">Very Serious</option>
                                                    <option value="casual" selected>Casual</option>
                                                </g:elseif>
                                                <g:else>
                                                    <option value="serious">Serious</option>
                                                    <option value="very serious" selected>Very Serious</option>
                                                    <option value="casual">Casual</option>
                                                </g:else>
                                            </select>
                                        </g:form>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="dropdown">
                                            <g:form controller="topic" action="changePrivacy" params="[id: top.id]">
                                                <select class="box" id="privacy" name="privacy"  onchange="this.form.submit()">
                                                    <g:if test="${top.visibility == linksharing3.Topic.Visibility.Public}">
                                                        <option value="public" selected>Public</option>
                                                        <option value="private">Private</option>
                                                    </g:if>
                                                    <g:else>
                                                        <option value="public">Public</option>
                                                        <option value="private" selected>Private</option>
                                                    </g:else>
                                                </select>
                                            </g:form>
                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <a href="#" >
                                            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('specific-invitation-${top.topicName}').style.display='block'">
                                                <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                            </svg>
                                        </a>
                                    </div>

                                    <!-- Specific Invitation --->
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


                                    <div class="col-md-1">
                                        <a href="#">
                                            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg" id="editicon" onclick="edit()">
                                                <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                                                <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                                <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
                                            </svg>
                                        </a>
                                    </div>
                                    <div class="col-md-1">
                                        <g:link controller="topic" action="deletetopic" params="[id: top.id]">
                                            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                            </svg>
                                        </g:link>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:else>

                        <div class="row">
                            <div class="col-md-3">
                                <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                            </div>
                            <div class="col-md-9" style="margin-top: 20px">
                                <g:link controller="topic" action="topicshow">${top.topicName}</g:link>
                                <div class="space">

                                </div>
                                <div class="row">
                                    <div class="col-md-5" style="margin-bottom: 20px;">
                                        <h6 class="text-muted">@${top.createdBy.userName}</h6>
                                        <g:if test="${top.createdBy.userName == u.userName}">

                                        </g:if>
                                        <g:elseif test="${linksharing3.Subscription.findByTopicAndCreatedBy(top, u)}">
                                           <g:link controller="subscription" action="unsubscribe" params="[id: top.id]">
                                            Unsubscribe
                                           </g:link>
                                        </g:elseif>
                                        <g:else>
                                            <g:link controller="subscription" action="subscribe" params="[id: top.id]">
                                                Subscribe
                                            </g:link>
                                        </g:else>
                                    </div>
                                    <div class="col-md-4">
                                        <h6 class="text-muted">Subscriptions</h6>
                                        <a href="#">${linksharing3.Subscription.countByTopic(top)}</a>
                                    </div>
                                    <div class="col-md-3">
                                        <h6 class="text-muted">post</h6>
                                        <a href="#">${linksharing3.Resource.countByTopic(top)}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </g:else>
                </g:each>
            </div>
            <div class="space1">

            </div>

        </div>
        <div class="col-md-7">
            <div class="styling">
                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 40px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Inbox</a>
                    </div>
                    <div class="col-lg -6">
                        <span>
                            <i class="fa fa-search icon1"></i>
                            <input type="search" placeholder="Search..." class="form-control rounded-pill" style="height: 20px; width: 120px; margin-left: 140px" />
                        </span>
                    </div>
                </nav>
                <g:each in="${linksharing3.Resource.list()}" var="r" >
                  <g:if test="${linksharing3.ReadingItem.findByUserAndResource(u,r) && !linksharing3.ReadingItem.findByUserAndResource(u, r).isRead}">
                    <g:if test="${r.class==linksharing3.DocumentResource}">

                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-4" style="margin-top: 10px">
                                <h6>${r.createdBy.getFullName()}</h6>
                            </div>
                            <div class="col-md-3 text-muted" style="margin-top: 10px">
                                <h6>@${r.createdBy.userName}</h6>
                            </div>
                            <div class="col-md-5">
                                 <h6>${r.topic.topicName}</h6>
                            </div>
                        </div>
                        <h6>Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h6>
                        <i class="fa fa-facebook clear"></i>
                        <i class="fa fa-twitter clear"></i>
                        <i class="fa fa-google clear"></i>
                        <g:link class="cheat" controller="resource" action="download" params="[id: r.id]">Download All</g:link>
                        <g:link class="cheat" controller="readingItem" action="markAsRead" params="[id: r.id]">Mark as Read</g:link>
                        <g:link class="cheat" controller="resource" action="viewpost" params="[id: r.id]">View Post</g:link>
                    </div>
                </div>
                        </g:if>

                    <g:else>
                        <div class="row">
                            <div class="col-md-3">
                                <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                            </div>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-4" style="margin-top: 10px">
                                        <h6>${r.createdBy.getFullName()}</h6>
                                    </div>
                                    <div class="col-md-3 text-muted" style="margin-top: 10px">
                                        <h6>@${r.createdBy.userName}</h6>
                                    </div>
                                    <div class="col-md-5">
                                        <h6>${r.topic.topicName}</h6>
                                    </div>
                                </div>
                                <h6>Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h6>
                                <i class="fa fa-facebook clear"></i>
                                <i class="fa fa-twitter clear"></i>
                                <i class="fa fa-google clear"></i>
                                <a href="${linksharing3.LinkResource.findById(r.id).url}" class="cheat">View Full Site</a>
                                <g:link class="cheat" controller="readingItem" action="markAsRead" params="[id: r.id]">Mark as Read</g:link>
                                <g:link class="cheat" controller="resource" action="viewpost" params="[id: r.id]"></g:link>
                            </div>
                        </div>
                    </g:else>

                  </g:if>
                </g:each>

            </div>
        </div>
    </div>
</div>

<script>

    function edit()
    {
        let icon=document.getElementsByClassName("edit-topic");
        let cancel=document.getElementsByClassName("topicnamedit");
        icon[0].style.display='block';
        cancel[0].style.display='none';


    }
    function edit2()
    {
        var icon=document.getElementsByClassName("edit-topic");
        var cancel=document.getElementsByClassName("topicnamedit");
        icon[0].style.display='none';
        cancel[0].style.display='block';
    }
</script>


</body>
</html>


