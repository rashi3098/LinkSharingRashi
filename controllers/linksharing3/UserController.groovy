package linksharing3

import grails.converters.JSON

class UserController {
  def index(){
    redirect(url: request.getHeader("referer"))
  }

  def editprofile(){
    User u= session.getAttribute("user1") as User
    int subcount= Subscription.countByCreatedBy(u)
    int topicCount= Topic.countByCreatedBy(u)
    render(view: "editprofile", model: [u:u, subcount: subcount, topicCount: topicCount])
  }

  def updateprofile() {
    User u= session.getAttribute("user1") as User
    def user= User.get(u.id as long)
    user.firstName= params.get("firstname")
    user.lastName= params.get("lastname")
    user.userName= params.get("username")
    user.email= user.email
    user.password= user.password
    user.confirmPassword= user.password
    if(user.save(flush:true)){
      flash.message= "profile updated"
    }
    session.setAttribute("user1", user)
    redirect(controller: "user", action: "editprofile")
  }

   def updatepassword(){
     User u= session.getAttribute("user1") as User
     User user= User.get(u.id)
     user.password= params.get("password")
     if(user.password== params.get("confirmpassword")){
       user.confirmPassword= user.password
     }
     else{
       render(view: "../error")
     }
     user.firstName= user.firstName
     user.lastName= user.lastName
     user.email= user.email
     user.confirmPassword= user.password
     user.save(flush: true)
     session.setAttribute("user1", user)
     redirect(controller: "user", action: "editprofile")
   }

   def userprofile(){
   def user= User.get(params.id)
     int subcount= Subscription.countByCreatedBy(user)
     int topicCount= Topic.countByCreatedBy(user)
     render(view: "userprofile", model: [u: user, subcount: subcount, topicCount: topicCount])
   }


  def forgotpassword1(){
    User user = User.findByEmail(params.email)
     if(user){
       if(params.pass== params.cpass){
         user.firstName= user.firstName
         user.lastName= user.lastName
         user.email= user.email
         user.password= params.pass
         user.confirmPassword= user.password
         user.save(flush: true)
         render([m: "Password Changed"] as JSON)
       }
       else{
         render([m: "password and confirmpassword don't match"] as JSON)
       }
     }
    else{
       render([m: "Wrong Email"] as JSON)
     }
  }


  /* def resetpassword(){
   User u= User.get(params.get("id") as long)
    u.password= params.get("password")
    if(u.password==params.get("confirmpassword")){
      u.confirmPassword= u.password
        u.firstName= u.firstName
        u.lastName= u.lastName
        u.email= u.email
        u.save(flush: true)
        session.setAttribute("user1", u)
        render(view: "../index")
    }
    else{
      flash.message= "password mismatch"
    }

  }

   */
}
