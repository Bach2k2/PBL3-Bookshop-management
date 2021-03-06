<%--
Edit profile
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/css/edit-profile.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container rounded bg-white mt-5 mb-5">
    <form action="post" action="/customer?action=edit-profile">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5"
                                                                                             src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQF2psCzfbB611rnUhxgMi-lc2oB78ykqDGYb4v83xQ1pAbhPiB&usqp=CAU"><span
                        class="font-weight-bold">Amelly</span><span
                        class="text-black-50">amelly12@bbb.com</span><span> </span></div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3"><h4 class="text-right">Profile
                        Settings</h4></div>
                    <div class="row mt-2">
                        <div class="col-md-6"><label class="labels">Name</label><input type="text" class="form-control"
                                                                                       placeholder="first name"
                                                                                       value="">
                        </div>
                        <div class="col-md-6"><label class="labels">Surname</label><input type="text"
                                                                                          class="form-control"
                                                                                          value=""
                                                                                          placeholder="surname">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">PhoneNumber</label><input type="text"
                                                                                               class="form-control"
                                                                                               placeholder="enter phone number"
                                                                                               value=""></div>
                        <div class="col-md-12"><label class="labels">Address</label><input type="text"
                                                                                           class="form-control"
                                                                                           placeholder="enter address"
                                                                                           value=""></div>
                        <div class="col-md-12"><label class="labels">Email ID</label><input type="text"
                                                                                            class="form-control"
                                                                                            placeholder="enter email id"
                                                                                            value=""></div>
                        <div class="col-md-12"><label class="labels">Education</label><input type="text"
                                                                                             class="form-control"
                                                                                             placeholder="education"
                                                                                             value=""></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Country</label><input type="text"
                                                                                          class="form-control"
                                                                                          placeholder="country"
                                                                                          value="">
                        </div>
                        <div class="col-md-6"><label class="labels">State/Region</label><input type="text"
                                                                                               class="form-control"
                                                                                               value=""
                                                                                               placeholder="state">
                        </div>
                    </div>
                    <div class="mt-5 text-center">
                        <button class="btn btn-primary profile-button" type="button">Save Profile</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center experience">
                        <span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i
                            class="fa fa-plus"></i>&nbsp;Experience</span>
                    </div>
                    <br>
                    <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text"
                                                                                                       class="form-control"
                                                                                                       placeholder="experience"
                                                                                                       value=""></div>
                    <br>
                    <div class="col-md-12"><label class="labels">Additional Details</label><input type="text"
                                                                                                  class="form-control"
                                                                                                  placeholder="additional details"
                                                                                                  value=""></div>
                </div>
            </div>
        </div>

</form>
</div>
</body>
</html>

