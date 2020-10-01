package linksharing3

class AdminController {

    def index() { }

    def adminview(){
      User u= session.getAttribute("user1") as User
        render(view: "admin", model: [u:u])
    }
     def activate(){

             User user= session.getAttribute("user1") as User
             User u= User.get(params.get("id"))
           User u1= User.findById(params.get("id"))
              u.userName= u1.userName
            u.password= u1.password
         u.firstName= u1.firstName
         u.lastName= u1.lastName
         u.email= u1.email
         u.password= u.confirmPassword
         u.active= true
         u.save(flush: true)

         render(view: "admin", model: [u: user])
     }

    def deactivate(){
        User user= session.getAttribute("user1") as User
        User u= User.get(params.get("id"))
        println u
        User u1= User.findById(params.get("id"))
        println u1
        u.userName= u1.userName
        u.password= u1.password
        u.firstName= u1.firstName
        u.lastName= u1.lastName
        u.email= u1.email
        u.password= u.confirmPassword
        u.active= false
        u.save(flush: true)

        render(view: "admin", model: [u: user])
    }
}
