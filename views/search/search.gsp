<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 08/09/20
  Time: 1:57 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search</title>
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
    .et {
        color: white;
    }
    .spacing {
        margin-top: 20px;
    }
    .avatar{

        width: 100px;
        height:100px;
        border: 2px solid black;
        margin-left: 8px;
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
        margin-top: 15px;
    }
    .clear{
        padding-right: 2px;
        font-size: 10px;
    }
    .clear1{

        margin-left: 14px;
    }
    .clear2{
        margin-left: 14px;
    }
    .clear3{
        margin-left: 14px;
    }
    .cheat {
        font-size: 12px;
        padding-left: 25px;
    }
    .cheat1{
        font-size: 10px;
        padding-left: 10px;
    }
    .avatar{

        width: 100px;
        height:100px;
        border: 2px solid black;
        margin-left: 8px;
        margin-top: 10px;
    }
    .asterick{
        margin-left: 14px;
        padding-top: 10px;
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

    </style>
</head>
<body>

<nav class="navbar sticky-top navbar-light bg-dark">
    <div class="container col-lg-8">
        <a class="navbar-brand" href="#" style="color: white">Link Sharing</a>
    </div>
    <div class="container col-lg-4">
        <span>
            <i class="fa fa-search icon"></i>
            <input type="search" placeholder="Search..." class="form-control rounded-pill"/>
        </span>

    </a>
        <a href="#" class="et">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-link-45deg" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('Modal-url').style.display='block'">
                <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
                <path d="M5.712 6.96l.167-.167a1.99 1.99 0 0 1 .896-.518 1.99 1.99 0 0 1 .518-.896l.167-.167A3.004 3.004 0 0 0 6 5.499c-.22.46-.316.963-.288 1.46z"/>
                <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
                <path d="M10 9.5a2.99 2.99 0 0 0 .288-1.46l-.167.167a1.99 1.99 0 0 1-.896.518 1.99 1.99 0 0 1-.518.896l-.167.167A3.004 3.004 0 0 0 10 9.501z"/>
            </svg>
        </a>
        <a href="#" class="et">
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
                Uday
            </button>
            <button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Profile</a>
                <a class="dropdown-item" href="#">Logout</a>
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





<div class="container">
    <div class="row">
        <div class="col-md-6">

            <div class="styling">


                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Trending Topics</a>
                    </div>
                    <div class="col-lg -6"></div>
                </nav>

               <g:each in="${linksharing3.Topic.list(max: 5)}" var="top">
                   <g:if test="${!top.createdBy.id==u.id}">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9" style="margin-top: 20px">
                        <g:link controller="topic" action="topicshow" params="[id: top.id]">${top.topicName}</g:link>
                        <div class="space">

                        </div>
                        <div class="row">
                            <div class="col-md-5" style="margin-bottom: 20px;">
                                <g:link controller="user" action="userprofile" params="[id: top.createdBy.id]"><h6 class="text-muted">@${top.createdBy.userName}</h6></g:link>
                                <g:if test="${top.createdBy.id==u.id}">

                                </g:if>
                                <g:elseif test="${linksharing3.Subscription.findByTopicAndCreatedBy(top, u)}">
                                <g:link controller="subscription" action="subscribe" params="[id: top.id]">Unsubscribe</g:link>
                                </g:elseif>
                                <g:else>
                                    <g:link controller="subscription" action="unsubscribe">Subscribe</g:link>
                                </g:else>
                            </div>
                            <div class="col-md-4">
                                <h6 class="text-muted">Subscriptions</h6>
                                <g:link controller="user" action="userprofile" params="[id: top.createdBy.id]">${linksharing3.Subscription.countByTopic(top)}</g:link>
                            </div>
                            <div class="col-md-3">
                                <h6 class="text-muted">post</h6>
                                <g:link controller="user" action="userprofile" params="[id: top.createdBy.id]">${linksharing3.Resource.countByTopicAndCreatedBy(top, u)}</g:link>
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
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-8">

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">

                            </div>
                            <div class="col-md-4">
                                <h6 class="text-muted">Subscriptions</h6>
                            </div>
                            <div class="col-md-3">
                                <h6 class="text-muted">Topics</h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <h6 class="text-muted">@${top.createdBy.userName}</h6>
                            </div>
                            <div class="col-md-4">
                                <a href="#">${linksharing3.Subscription.countByTopic(top)}</a>
                            </div>
                            <div class="col-md-3">
                                <a href="#">${linksharing3.Resource.countByTopic(top)}</a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container">
                    <div class="container spacing">
                        <div class="row">
                            <div class="col-md-4">

                                <div class="dropdown">
                                    <g:form controller="subscription" action="changeSeriousness" params="[id: top.id]">
                                        <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                            <g:if test="${linksharing3.Subscription.findByTopicAndCreatedBy(top, u).seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                                <option value="serious" selected>Serious</option>
                                                <option value="very serious">Very Serious</option>
                                                <option value="casual">Casual</option>
                                            </g:if>
                                            <g:elseif test="${linksharing3.Subscription.findByTopicAndCreatedBy(top, u).seriousness == linksharing3.Subscription.Seriousness.Casual}">
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
                            <div class="col-md-1">
                                <a href="#" >
                                    <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('specific-invitation-${top.topicName}').style.display='block'">
                                        <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                    </svg>
                                </a>

                                <!-- Specific Invitation -->
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
                                    <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('Modal-doc').style.display='block'">
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
                   </g:else>
               </g:each>
            </div>



            <!-- Top Post -->


            <div class="styling">
                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Top Rated</a>
                    </div>
                    <div class="col-lg -6"></div>
                </nav>
            <g:each in="${linksharing3.ResourceRating.list(max: 5, order: "desc")}" var="ri">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-5" style="margin-top: 10px">
                                <h6>${ri.resource.createdBy.getFullName()}</h6>
                            </div>
                            <div class="col-md-4 text-muted" style="margin-top: 10px">
                                <h6>@${ri.resource.createdBy.firstName}</h6>
                            </div>
                            <div class="col-md-3">
                                <a href="#" class="asterick">${ri.resource.topic.topicName}</a>
                            </div>
                        </div>
                        <h6>Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h6>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <i class="fa fa-facebook clear1"></i>
                        <i class="fa fa-twitter clear2"></i>
                        <i class="fa fa-google clear3"></i>
                    </div>
                    <div class="col-md-8">
                        <g:if test="${ri.resource.class== linksharing3.DocumentResource}">
                        <g:link controller="resource" action="download" params="[id: ri.resource.id]" class="cheat">Download All</g:link>
                        <g:link controller="readingItem" action="markAsRead" params="[id: ri.resource.id]" class="cheat">Mark as Read</g:link>
                        <g:link controller="resource" action="viewpost" params="[id: ri.resource.id]" class="cheat">View Post</g:link>
                        </g:if>
                        <g:else>
                            <g:link href="${linksharing3.LinkResource.findById(ri.resource.id).url}" class="cheat">View Full Site</g:link>
                            <g:link controller="readingItem" action="markAsRead" params="[id: ri.resource.id]" class="cheat">Mark as Read</g:link>
                            <g:link controller="resource" action="viewpost" params="[id: ri.resource.id]" class="cheat">View Post</g:link>
                        </g:else>
                    </div>

                </div>

            </g:each>

            </div>
        </div>




        <!--   Search for test    -->


        <div class="col-md-6">
            <div class="styling">
                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Search For ${searchElement}</a>
                    </div>
                    <div class="col-lg -6"></div>
                </nav>
               <g:each in="${linksharing3.Topic.findAllByTopicNameIlike("%${searchElement}%")}" var="top">
                   <g:each in="${linksharing3.Resource.findAllByTopic(top)}" var="rs">
                       <g:if test="${rs.class== linksharing3.DocumentResource}">

                <div class="row">
                    <div class="col-md-3">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-5" style="margin-top: 10px">
                                <h6>${rs.createdBy.getFullName()}</h6>
                            </div>
                            <div class="col-md-3 text-muted" style="margin-top: 10px">
                                <h6>@${rs.createdBy.userName}</h6>
                            </div>
                            <div class="col-md-4">
                                <a href="#" class="asterick">${rs.topic.topicName}</a>
                            </div>
                        </div>
                        <h6>Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h6>
                        <div class="row">
                            <div class="col-md-2">
                                <i class="fa fa-facebook clear"></i>
                                <i class="fa fa-twitter clear"></i>
                                <i class="fa fa-google clear"></i>
                            </div>
                            <div class="col-md-10">
                                <g:link controller="resource" action="download" class="cheat" params="[id: rs.id]">Download All</g:link>
                                <g:if test="${!linksharing3.ReadingItem.findByUserAndResource(u, rs).isRead}">
                                    <g:link controller="readingItem" action="markAsRead" params="[id:  rs.id]" class="cheat1">Mark As Read</g:link>

                                </g:if>
                                <g:link controller="resource" action="viewpost" params="[id: rs.id]">View Post</g:link>
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
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-5" style="margin-top: 10px">
                                <h6>${rs.topic.createdBy.getFullName()}</h6>
                            </div>
                            <div class="col-md-3 text-muted" style="margin-top: 10px">
                                <h6>@${rs.topic.createdBy.userName}</h6>
                            </div>
                            <div class="col-md-4">
                                <a href="#" class="asterick">${rs.topic.topicName}</a>
                            </div>
                        </div>
                        <h6>Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</h6>
                        <div class="row">
                            <div class="col-md-2">
                                <i class="fa fa-facebook clear"></i>
                                <i class="fa fa-twitter clear"></i>
                                <i class="fa fa-google clear"></i>
                            </div>
                            <div class="col-md-10">
                                <a href="#" class="cheat1">View full site</a>
                                <g:if test="${!linksharing3.ReadingItem.findByUserAndResource(u, rs).isRead}">
                                    <g:link controller="readingItem" action="markAsRead" params="[id:  rs.id]" class="cheat1">Mark As Read</g:link>

                                </g:if>
                                <g:link controller="resource" action="viewpost" params="[id: rs.id]">View Post</g:link>
                            </div>
                        </div>
                    </div>
                </div>
              </g:else>
                   </g:each>
               </g:each>
            </div>
        </div>
    </div>

</div>
</body>
</html>