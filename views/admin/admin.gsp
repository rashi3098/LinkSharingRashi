<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 08/09/20
  Time: 1:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin(View)</title>
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
    .mheading{

        padding:10px;
        border: 3px #787878;
        border-radius: 5px;
        border-top-left-radius: 7px;
        border-top-right-radius: 7px;

        background-color:#80aaff;
    }
    .spacing{
        margin-top: 30px;
        border-left: 2px solid black;
        border-right: 2px solid black;
        border-top: 2px solid black;
    }
    .box {
        width: 120px;

        border: 1px solid black;

        color: black;
        background-color: #eee;
        border-radius: 5px;
        margin-left: 210px;


    }

    </style>
</head>
<body>

<!-- NavBars -->

<nav class="navbar sticky-top navbar-light bg-dark">
    <div class="container col-lg-6">
        <a class="navbar-brand" href="#" style="color: white">Link Sharing</a>
    </div>
    <div class="container col-lg-6">
        <span>
            <i class="fa fa-search icon"></i>
            <input type="search" placeholder="Search..." class="form-control rounded-pill"/>
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
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-link-45deg" fill="currentColor" xmlns="http://www.w3.org/2000/svg" loading="lazy" onclick="document.getElementById('Modal-url').style.display='block'">
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
                <a class="dropdown-item" href="#">User</a>
                <a class="dropdown-item" href="#">Topics</a>
                <a class="dropdown-item" href="#">Posts</a>
                <a class="dropdown-item" href="#">Logout</a>
            </div>
        </div>
    </div>

</nav>



<!-- Modal Topic -->

<div class="modal-topic">

    <div id="Modal-topic" class="modal">


        <div class="modal-content">

            <div class="mheading">Create Topic</div>
            <form name="create-topic">


                <div class="container" style="padding:10px">
                    <label for="name">Name*</label>
                    <input type="text" name="topicname" class="input" id="name" style="float:right"><br><br><br>

                    <label for="visi">Visibility*</label>

                    <select id="visi" name="visi" style="float:right">
                        <option value="public">Public</option>
                        <option value="private">Private</option>
                    </select>
                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-topic').style.display='none'">
                    <input type="submit" value="save" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-topic').style.display='none'" >

                    <br><br>

                </div>


            </form>


        </div>

    </div>
</div>



<!-- Doc Resource -->
<div class="modal-document">

    <div id="Modal-document" class="modal">


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

                        <option value="topicName">Grails</option>
                        <option value="topicName1">Grails1</option>
                        <option value="topicName2">Grails2</option>

                    </select>

                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-document').style.display='none'">
                    <input type="submit" value="share" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-document').style.display='none'">

                    <br><br>

                </div>


            </form>


        </div>

    </div>
</div>



<!-- Link Resource  -->


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

                        <option value="topicName">Grails</option>
                        <option value="topicName1">Groovy</option>
                        <option value="topicName2">R</option>
                        <option value="topicName3">Python</option>


                    </select>

                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-url').style.display='none'">
                    <input type="submit" value="share" class="submit" style="float:right; margin-right:4px;" onclick="document.getElementById('Modal-url').style.display='none'">

                    <br><br>

                </div>


            </form>


        </div>

    </div>
</div>

</div>



<!-- Send invitation --->

<div class="modal-invitation">

    <div id="Modal-invite" class="modal">


        <div class="modal-content">

            <div class="mheading">Send Invitation</div>
            <form >


                <div class="container" style="padding:10px">
                    <label for="name">Email*</label>
                    <input type="email" name="email" class="input" id="email" style="float:right"><br><br><br>

                    <label for="visi">Topic*</label>

                    <select id="evisi" name="evisi" style="float:right">
                        <option value="public">Public</option>
                        <option value="private">Private</option>
                    </select>
                    <br><br><br>
                    <input type="button" value="cancel" class="submit" style="float:right; margin-right:4px;" onclick=" document.getElementById('Modal-invite').style.display='none'">
                    <input type="submit" value="invite" class="submit" style="float:right; margin-right:4px;" onclick=" document.getElementById('Modal-invite').style.display='none'" >

                    <br><br>

                </div>


            </form>


        </div>

    </div>
</div>


<!-- Table of Admin -->


<div class="container">
    <nav class="navbar spacing et navbar-light bg-dark">
        <div class="container col-lg-6">
            <a href="#">Users</a>
        </div>
        <div class="col-lg-6">
            <select class="box" id="selectuser" name="selectuser" onclick="this.form.submit()" >
            <g:each in="${linksharing3.User.list()}" var="ts">
                <option>${ts.firstName}</option>
            </g:each>
            </select>
        </div>
    </nav>
    <table class="table table-stripped table-bordered" id="myTable">
        <thead>
        <tr>
            <th scope="col" onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(1)')" style="cursor:pointer">Id</th>
            <th scope="col" onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(1)')" style="cursor: pointer;">UserName</th>
            <th scope="col" onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(1)')" style="cursor: pointer">Email</th>
            <th scope="col" onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(1)')" style="cursor: pointer">FirstName</th>
            <th scope="col" onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(1)')" style="cursor: pointer">LastName</th>
            <th scope="col" onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(1)')" style="cursor: pointer">Active</th>
            <th scope="col" onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(1)')" style="cursor: pointer">Manage</th>
        </tr>
        </thead>
        <tbody>
          <g:each in="${linksharing3.User.list()}" var="t">
              <tr class="item">
                  <td>${t.id}</td>
                  <td>${t.userName}</td>
                  <td>${t.email}</td>
                  <td>${t.firstName}</td>
                  <td>${t.lastName}</td>
                  <g:if test="${t.active}">
                      <td>Yes</td>
                      <td>
                          <g:if test="${!t.admin}">
                          <g:link controller="admin" action="deactivate" params="[id: t.id]">Deactivate</g:link>
                          </g:if>
                      </td>
                  </g:if>
                  <g:else>
                      <td>No</td>
                      <td><g:link controller="admin" action="activate" params="[id: t.id]">Activate</g:link></td>
                  </g:else>
              </tr>
          </g:each>
        </tbody>
    </table>
</div>

</body>
</html>