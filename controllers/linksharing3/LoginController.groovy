package linksharing3

import grails.converters.JSON

class LoginController {



    def index() {


    }

  def loginprocess(params) {
  User u= User.findByUserNameAndPassword(params.uname, params.psw)
      if (u) {
          if (u.active) {
              session.setAttribute("user1", u)
              redirect(controller: 'dashboard', action: "dashboard")
          } else {
              flash.message = "User is not active"
          }
      }
      else {
          flash.message = "User not found"
          redirect url: request.getHeader("Referer")
      }

  }
    def logout() {
        session.invalidate()
        render(view: "/index")
    }
    def register() {
        if(!User.findByEmail(params.email)) {
            if(!User.findByUserName(params.userName)) {
                if (params.get("password")==params.get("confirmPassword")){
                User u = new User(firstName: params.firstName, lastName: params.lastName, email: params.email, userName: params.userName, password: params.password, confirmPassword: params.confirmPassword, admin: false, active: true)
                    u.validate()
                   if(u.hasErrors()){
                       if(u.errors.hasFieldErrors("firstName"))
                           render([m: "Enter First Name"] as JSON)
                       if(u.errors.hasFieldErrors("lastName"))
                           render([m: "Enter Last Name"] as JSON)
                       if(u.errors.hasFieldErrors("email"))
                           render([m: "Enter Email"] as JSON)
                       if(u.errors.hasFieldErrors("userName"))
                           render([m: "Enter UserName"] as JSON)
                       if(u.errors.hasFieldErrors("password"))
                           render([m: "Enter password"] as JSON)
                       if(u.errors.hasFieldErrors("confirmPassword"))
                           render([m: "Enter Confirm Password"] as JSON)
                   }
                    else
                       u.save(flush: true)
                    render([m: "user created"] as JSON)
                }
                else{
                    render([m: "password and confirmPassword Do not match"] as JSON)
                }

            }
            else{
                render([m: "UserName Already Exists"] as JSON)
            }
        }
        else{
            render([m: "Email already Exists"] as JSON)
        }
}

}