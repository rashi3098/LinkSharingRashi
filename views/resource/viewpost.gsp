<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 09/09/20
  Time: 1:16 AM
--%>

<%@ page import="linksharing3.Subscription" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View Post</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="extensions/multiple-sort/bootstrap-table-multiple-sort.js"></script>
    <script src="https://www.w3schools.com/lib/w3.js"></script>
    <style type="text/css">
    .icon{
        color: grey;
        z-index: 1.5;
        position: absolute;
        width: 2em;
        height: 2em;
        line-height: 2em;
        padding-left: 11px;
    }

    input[type= search]{
        width: 190px;
        padding-left: 15px;
        margin-top: 8px;
    }
    .et {
        color: white;
    }
    .avatar{

        width: 85px;
        height:85px;
        border: 2px solid black;
        margin-left: 8px;
        margin-top: 10px;
    }
    .avatar1{
        width: 70px;
        height: 70px;
        margin-left: 8px;
        border: 2px solid black;

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
    .styling{
        margin-top: 30px;
        border: 2px solid black;
        border-radius: 6px;
        padding-bottom: 10px;
    }
    .outermargin{
        border-top: 2px solid black;

        margin-top: 8px;
    }
    .cheat {
        font-size: 14px;
        padding-left: 25px;
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

    </style>
</head>
<body>

<nav class="navbar sticky-top navbar-light bg-dark">
    <div class="container col-lg-7">
        <a class="navbar-brand" href="#" style="color: white">Link Sharing</a>
    </div>
    <div class="container col-lg-5">
        <span>
            <g:form controller="search" action="search">
            <i class="fa fa-search icon"></i>
            <input type="search" placeholder="Search..." class="form-control rounded-pill"/>
            </g:form>
        </span>

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
                ${u.firstName}
            </button>
            <button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <g:if test="${u.admin}">
                    <g:link controller="user" action="editprofile" class="dropdown-item">Profile</g:link>
                    <g:link controller="admin" action="adminview" class="dropdown-item">Users</g:link>
                    <a href="#" class="dropdown-item">Topics</a>
                    <a href="#" class="dropdown-item">Posts</a>
                    <g:link controller="login" action="logout" class="dropdown-item">Logout</g:link>

                </g:if>
                <g:else>
                    <g:link controller="user" action="editprofile" class="dropdown-item">Profile</g:link>
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

<!--  Posts Created By  -->

<div class="container">
    <div class="row">
        <div class="col-md-7">
            <div class="styling">
                <div class="row">
                    <div class="col-md-2">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar">
                    </div>
                    <div class="col-md-4" style="margin-top: 20px;">
                        <h6>${u.getFullName()}</h6>
                        <h6 class="text-muted">@${u.userName}</h6>
                    </div>
                    <div class="col-md-6" style="margin-top: 20px;">
                        <a href="#" style="padding-left: 240px;">${r.topic.topicName}</a>
                        <h6 style="padding-left: 180px;" class="text-muted" style="font-size: 30px;">${r.dateCreated.getDateTimeString()}</h6>
                    </div>
                </div>
                <h6 style="margin-left: 10px; margin-right: 10px; margin-top: 10px;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. </h6>
                <div class="row">
                    <div class="col-md-5">
                        <i class="fa fa-facebook clear1"></i>
                        <i class="fa fa-twitter clear2"></i>
                        <i class="fa fa-google clear3"></i>
                    </div>
                    <div class="col-md-7">
                        <g:link class="cheat" controller="resource" action="delete" params="[id: r.id]">Delete</g:link>
                        <a href="#" class="cheat">Edit</a>
                        <g:if test="${r.class==linksharing3.DocumentResource}">
                        <g:link class="cheat" controller="resource" action="download" params="[id: r.id]">DownLoad All</g:link>
                        </g:if>
                        <g:else>
                        <g:link href="${linksharing3.LinkResource.findById(r.id).url}">View Full Site</g:link>
                        </g:else>
                    </div>
                </div>

            </div>
        </div>

        <!-- Trending Topics  -->


        <div class="col-md-5">
            <div class="styling">
                <nav class="navbar navbar-light bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container col-lg-6">
                        <a class="navbar-brand py-0" href="#" style="margin-right: 10px">Trending Topics</a>
                    </div>
                    <div class="col-lg -6"></div>
                </nav>
                <g:each in="${linksharing3.Topic.list(max: 5)}" var="top">
                    <g:if test="${top.createdBy.id== u.id}">
                <div class="row" style="margin-top: 20px;">
                    <div class="col-md-2">
                        <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar1">
                    </div>
                    <div class="col-md-5">
                        <h6 style="margin-left: 10px;">${top.createdBy.getFullName()}</h6>
                        <h6 class="text-muted" style="margin-left: 10px;">@${top.createdBy.userName}</h6>
                        <g:link controller="subscription" action="subscribe" params="[id: top.id]" style="margin-left: 10px;">Subscribe</g:link>
                    </div>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-7">
                                <h6></h6>
                                <h6 class="text-muted" style="margin-top: 27px;">Subscriptions</h6>
                                <a href="#">${linksharing3.Subscription.countByTopic(top)}</a>
                            </div>
                            <div class="col-md-5">
                                <a href="#">${top.topicName}
                                <h6 class="text-muted" style="margin-top: 4px;">Posts</h6>
                                <a href="#">${linksharing3.Resource.countByTopic(top)}</a>
                            </div>
                        </div>
                    </div>
                </div>
                    </g:if>
                    <g:else>
                <div class="outermargin">
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-md-2">
                            <img src="https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-male-user-icon.png" alt="Avatar" class="avatar1">
                        </div>
                        <div class="col-md-5">
                            <h6 style="margin-left: 10px;">${top.createdBy.getFullName()}</h6>
                            <h6 class="text-muted" style="margin-left: 10px;">@${top.createdBy.userName}</h6>
                            <div class="dropdown">
                                <g:form controller="subscription" action="changeSeriousness" params="[id: top.id]">
                                    <select class="box" id="seriousness" name="serious" onchange="this.form.submit()">
                                        <g:if test="${linksharing3.Subscription.findByTopic(top).seriousness == linksharing3.Subscription.Seriousness.Serious}">
                                            <option value="serious" selected>Serious</option>
                                            <option value="very serious">Very Serious</option>
                                            <option value="casual">Casual</option>
                                        </g:if>
                                        <g:elseif test="${Subscription.findByTopic(top).seriousness == linksharing3.Subscription.Seriousness.Casual}">
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
                            <div class="row">
                                <div class="col-md-7">
                                    <h6></h6>
                                    <h6 class="text-muted" style="margin-top: 27px;">Subscriptions</h6>
                                    <a href="#">${linksharing3.Subscription.countByTopic(top)}</a>
                                </div>
                                <div class="col-md-5">
                                    <a href="#">${top.topicName}</a>
                                    <h6 class="text-muted" style="margin-top: 4px;">Posts</h6>
                                    <a href="#">${linksharing3.Resource.countByTopic(top)}</a>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-3">

                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-6">
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
                            <div class="col-md-3">
                                <a href="#" style="margin-left: 35px;">Edit</a>
                            </div>
                            <div class="col-md-3">
                                <g:link controller="topic" action="deletetopic" params="[id: top.id]">Delete</g:link>
                            </div>

                        </div>
                    </div>
                </div>
                </div>
                    </g:else>
                </g:each>
            </div>
        </div>

    </div>

</div>

</body>
</html>