<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 07/09/20
  Time: 12:00 PM
--%>

<%@ page import="linksharing3.Topic" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
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

    .btn3{
        width: 140px;
        margin-left: 10px;
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
        padding-bottom: 15px;
    }
    .test1{
        border-top: 2px solid black;
    }
    .test2{
        border-top: 2px solid black;

    }
    .space{
        margin-top: 20px;
    }
    .styling{

        margin-top: 25px;
        margin-left: 20px;
        border: 2px solid black;
        border-radius: 6px;

    }
    .clear{
        padding-right: 4px;
    }
    .cheat {
        font-size: 15px;
        padding-left: 25px;
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
        margin-left: 10px;

    }

    </style>
</head>
<body>

<nav class="navbar sticky-top navbar-light bg-dark">
    <div class="container col-lg-8">
        <a class="navbar-brand" href="#" style="color: white;">Link Sharing</a>
    </div>
    <div class="container col-lg-4">
        <span>
            <i class="fa fa-search icon"></i>
            <input type="search" placeholder="Search..." class="form-control rounded-pill"/>
        </span>

    </a>
        <a href="#" class="et" style="color: white;">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-link-45deg" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('Modal-url').style.display='block'">
                <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
                <path d="M5.712 6.96l.167-.167a1.99 1.99 0 0 1 .896-.518 1.99 1.99 0 0 1 .518-.896l.167-.167A3.004 3.004 0 0 0 6 5.499c-.22.46-.316.963-.288 1.46z"/>
                <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
                <path d="M10 9.5a2.99 2.99 0 0 0 .288-1.46l-.167.167a1.99 1.99 0 0 1-.896.518 1.99 1.99 0 0 1-.518.896l-.167.167A3.004 3.004 0 0 0 10 9.501z"/>
            </svg>
        </a>
        <a href="#" class="et" style="color: white;">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('Modal-doc').style.display='block'">
                <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
            </svg>
        </a>
        <div class="btn-group">
            <button type="button" class="btn" style="color: white">
                <svg width="25px" height="25px" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                </svg>
                ${u.userName}
            </button>
            <button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <g:link controller="user" action="editprofile" class="dropdown-item" params="[id: u.id]">Profile</g:link>
                <g:if test="${u.admin}">
                    <g:link controller="admin" action="adminview" params="[id: u.id]" class="dropdown-item">Users</g:link>
                    <g:link class="dropdown-item">Topics</g:link>
                    <g:link class="dropdown-item">Posts</g:link>
                    <g:link controller="login" action="logout" class="dropdown-item">Logout</g:link>
                </g:if>
                <g:else>
                    <g:link controller="user" action="editprofile" params="[id: u.id]" class="dropdown-item">Profile</g:link>
                    <g:link controller="login" action="logout" class="dropdown-item">Logout</g:link>
                </g:else>
            </div>
        </div>
    </div>

</nav>




<!-- Doc Resource   -->



<div class="modal-document">

    <div id="Modal-doc" class="modal">


        <div class="modal-content">

            <div class="mheading">Share Document</div>
            <form name="upload">


                <div class="container" style="padding:10px">
                    <label for="doctext">Document*</label>

                    <input type="file"  name="myFile" id="doctext" >
                    <br><br><br>
                    <label for="document">Description*</label>
                    <textarea id="document" name="document" rows="6" cols="50" style="margin-left:30px"></textarea>
                    <br><br><br>

                    <label for="t-doc">Topic*</label>

                    <select id="t-doc" name="t-doc" style="margin-left:30px; width:75px">

                        <option value="t.topicName1">Grails</option>
                        <option value="t.topicName2">Ruby</option>
                        <option value="t.topicName3">R</option>
                        <option value="t.topicName4">MS office</option>

                    </select>

                    <br><br><br>
                    <input type="submit" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-doc').style.display='none'">
                    <input type="submit" value="share" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-doc').style.display='none'">

                    <br><br>

                </div>


            </form>


        </div>

    </div>
</div>



<!-- Link Resource -->

<div class="modal-link">

    <div id="Modal-url" class="modal">


        <div class="modal-content">

            <div class="mheading">Share Link</div>
            <form name="upload">


                <div class="container" style="padding:10px">
                    <label for="url">Link*</label>
                    <input type="url" name="url" id="url" style="margin-left:30px">

                    <br><br><br>
                    <label for="url-des">Description*</label>
                    <textarea id="url-des" name="url-des" rows="6" cols="50" style="margin-left:30px"></textarea>
                    <br><br><br>

                    <label for="t-url">Topic*</label>


                    <select id="t-url" name="t-doc" style="margin-left:30px; width:75px">

                        <option value="topicName1">Grails</option>
                        <option value="topicName2">Ruby</option>
                        <option value="topicName3">C++</option>
                        <option value="topicName4">Java</option>
                        <option value="topicName5">Python</option>


                    </select>

                    <br><br><br>
                    <input type="submit" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-url').style.display='none'">
                    <input type="submit" value="share" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-url').style.display='none'">

                    <br><br>

                </div>


            </form>


        </div>

    </div>
</div>

</div>




<div class="container-fluid">
    <div class="row">
        <div class="col-md-5">
            <div class="test">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9" style="padding-left: 30px;">
                        <h3>${u.getFullName()}</h3>
                        <h5 class="text-muted">@${u.userName}</h5>
                        <div class="row">
                            <div class="col-md-3">
                                <h6 class="text-muted">Subcriptions</h6>
                                <a href="#">${linksharing3.Subscription.countByCreatedBy(u)}</a>
                            </div>
                            <div class="col-md-9">
                                <h6 class="text-muted et2" style="padding-left: 10px">Topics</h6>
                                <a href="#" class="et2" style="padding-left: 10px">${linksharing3.Topic.countByCreatedBy(u)}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="space">

            </div>
            <div class="test">
                <nav class="navbar  navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Topics</a>
                    </div>
                    <div class="container col-lg-6">

                    </div>
                </nav>

                <g:each in="${linksharing3.Topic.findAllByCreatedBy(u, [max: 5])}" var="rs">
                    <g:if test="${u.id == rs.createdBy.id}">
                <div class="test2">
                    <div class="row">
                        <div class="col-md-6" style="padding-left: 26px">
                            <a href="#">${rs.topicName}</a>
                        </div>
                        <div class="col-md-3">
                            <h6 class="text-muted">Subscriptions</h6>
                        </div>
                        <div class="col-md-3" style="padding-left: 26px">
                            <h6 class="text-muted">Posts</h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">

                            <div class="row">
                                <div class="col-md-9">
                                    <g:form controller="subscription" action="changeSeriousness" params="[id: rs.id]">
                                        <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                            <g:if test="${linksharing3.Subscription.findByTopic(rs).seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                                <option value="serious" selected>Serious</option>
                                                <option value="very serious">Very Serious</option>
                                                <option value="casual">Casual</option>
                                            </g:if>
                                            <g:elseif test="${linksharing3.Subscription.findByTopic(rs).seriousness == linksharing3.Subscription.Seriousness.Casual}">
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
                                <div class="col-md-3">
                                    <a href="#" class="et">
                                        <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('specific-invitation-${rs.topicName}').style.display='block'">
                                            <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                        </svg>
                                    </a>
                                </div>
<!-- Send Specific Invitation ---->
                                <div class="modal-invitation" >
                                    <div class="modal" id="specific-invitation-${rs.topicName}">
                                        <div class="modal-content">
                                            <div class="mheading">
                                                Send Invitation
                                            </div>

                                            <g:form controller="subscription" action="invite">
                                                <div class="container" style="padding: 10px;">
                                                    <label for="email-${rs.topicName}">Email*</label>
                                                    <input type="email" class="input" name="email" id="email-${rs.topicName}"  required><br><br>

                                                    <label for="specific-topic-${rs.topicName}">For Topic :</label>
                                                    <input id="specific-topic-${rs.topicName}" type="radio" name="invitetopic" value="${rs.topicName}">${rs.topicName}<br><br>

                                                    <button type="button" class="btn btn-secondary" onclick="document.getElementById('specific-invitation-${rs.topicName}').style.display='none'" >Close</button>
                                                    <button type="submit" class="btn btn-primary" onclick="document.getElementById('specific-invitation-${rs.topicName}').style.display='none'">Invite</button>
                                                </div>
                                            </g:form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-3">
                            <a href="#">${linksharing3.Topic.countByCreatedBy(u)}</a>
                        </div>
                        <div class="col-md-3" style="padding-left: 26px">
                            <a href="#">${linksharing3.Subscription.countByCreatedBy(u)}</a>
                        </div>
                    </div>
                </div>
                    </g:if>
                    <g:else>
                        <div class="test2">
                <div class="row">
                    <div class="col-md-6" style="padding-left: 26px">
                        <a href="#">${rs.topicName}</a>
                    </div>
                    <div class="col-md-3">
                        <h6 class="text-muted">Subscriptions</h6>
                    </div>
                    <div class="col-md-3" style="padding-left: 26px">
                        <h6 class="text-muted">Posts</h6>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6" style="padding-left: 26px">
                        <g:link controller="subscription" action="subscribe" params="[id: rs.id]">Subscribe</g:link>
                    </div>
                    <div class="col-md-3">
                        <a href="#">${linksharing3.Subscription.countByTopic(rs)}</a>
                    </div>
                    <div class="col-md-3" style="padding-left: 26px">
                        <a href="#">${linksharing3.Resource.countByTopic(rs)}</a>
                    </div>
                </div>
                        </div>
                    </g:else>
                </g:each>
            </div>

            <div class="space">

            </div>

            <div class="test">
                <nav class="navbar  navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Subscriptions</a>
                    </div>
                    <div class="container col-lg-6">

                    </div>
                </nav>
                <g:each in="${linksharing3.Subscription.findAllByCreatedBy(u, [max: 5])}" var="rs">
                <div class="test2">
                    <div class="row">
                        <div class="col-md-6" style="padding-left: 30px; padding-top: 10px">
                            <g:link controller="topic" action="topicshow" params="[id: rs.topic.id]">${rs.topic.topicName}</g:link>
                        </div>
                        <div class="col-md-3">
                            <h6 class="text-muted" style="padding-top: 10px;">Subscriptions</h6>
                        </div>
                        <div class="col-md-3" style="padding-left: 26px">
                            <h6 class="text-muted" style="padding-top: 10px;">Posts</h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">

                            <div class="row">
                                <div class="col-md-9">
                                    <div class="dropdown">
                                        <g:form controller="subscription" action="changeSeriousness" params="[id: rs.topic.id]">
                                            <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                                <g:if test="${rs.seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                                    <option value="serious" selected>Serious</option>
                                                    <option value="very serious">Very Serious</option>
                                                    <option value="casual">Casual</option>
                                                </g:if>
                                                <g:elseif test="${rs.seriousness == linksharing3.Subscription.Seriousness.Casual}">
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
                                <div class="col-md-3">
                                    <a href="#" class="et">
                                        <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('specific-invitation-${rs.topic.topicName}').style.display='block'">
                                            <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                        </svg>
                                    </a>
                                </div>

                                <!-- Send Specific Invitation -->
                                <div class="modal-invitation" >
                                    <div class="modal" id="specific-invitation-${rs.topic.topicName}">
                                        <div class="modal-content">
                                            <div class="mheading">
                                                Send Invitation
                                            </div>

                                            <g:form controller="subscription" action="invite">
                                                <div class="container" style="padding: 10px;">
                                                    <label for="email-${rs.topic.topicName}">Email*</label>
                                                    <input type="email" class="input" name="email" id="email-${rs.topic.topicName}"  required><br><br>

                                                    <label for="specific-topic-${rs.topic.topicName}">For Topic :</label>
                                                    <input id="specific-topic-${rs.topic.topicName}" type="radio" name="invitetopic" value="${rs.topic.topicName}">${rs.topic.topicName}<br><br>

                                                    <button type="button" class="btn btn-secondary" onclick="document.getElementById('specific-invitation-${rs.topic.topicName}').style.display='none'" >Close</button>
                                                    <button type="submit" class="btn btn-primary" onclick="document.getElementById('specific-invitation-${rs.topic.topicName}').style.display='none'">Invite</button>
                                                </div>
                                            </g:form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-3">
                            <a href="#">${linksharing3.Subscription.countByTopic(linksharing3.Topic.findByCreatedBy(u))}</a>
                        </div>
                        <div class="col-md-3" style="padding-left: 26px">
                            <a href="#">${linksharing3.Resource.countByTopic(rs.topic)}</a>
                        </div>
                    </div>
                </div>
                </g:each>
            </div>
            <div class="space">

            </div>
        </div>

        <div class="col-md-7">
            <div class="styling">
                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Posts</a>
                    </div>
                    <div class="col-lg -6">
                        <span>
                            <i class="fa fa-search icon1"></i>
                            <input type="search" placeholder="Search..." class="form-control rounded-pill" style="height: 20px; width: 120px; margin-left: 140px" />
                        </span>
                    </div>
                </nav>
<g:each in="${linksharing3.Resource.findAllByCreatedBy(u, [max: 20])}" var="num" >
    <g:if test="${num.class==linksharing3.DocumentResource}">
                <div class="row">
                    <div class="col-md-12" style="padding-left: 26px">
                        <g:link controller="topic" action="topicshow" params="[id: num.topic.id]">${num.topic.topicName}</g:link>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" style="padding-left: 26px">
                        <h6>Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h6>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4" style="padding-left: 26px">
                        <i class="fa fa-facebook clear"></i>
                        <i class="fa fa-twitter clear"></i>
                        <i class="fa fa-google clear"></i>
                    </div>

                    <div class="col-md-8">
                        <g:link controller="resource" class="cheat" action="download" params="[id: num.id]">Download All</g:link>
                        <g:link controller="resource" action="viewpost" params="[id: num.id]" class="cheat">View Post</g:link>
                    </div>
                </div>
                    </g:if>
                    <g:else>
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 26px">
                                <a href="#">${num.topic.topicName}</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-left: 26px">
                                <h6>Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4" style="padding-left: 26px">
                                <i class="fa fa-facebook clear"></i>
                                <i class="fa fa-twitter clear"></i>
                                <i class="fa fa-google clear"></i>
                            </div>

                            <div class="col-md-8">
                                <a href="${linksharing3.LinkResource.findById(num.id).url}" class="cheat">View Site</a>
                                <g:link controller="resource" action="viewpost" params="[id: num.id]" class="cheat">View Post</g:link>
                            </div>
                    </div>
                    </g:else>

                <div class="test1">

                </div>
</g:each>
            </div>
        </div>
    </div>
</div>


</body>
</html>