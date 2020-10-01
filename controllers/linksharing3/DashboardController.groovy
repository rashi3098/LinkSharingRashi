package linksharing3

class DashboardController {

    def index() {

    }
    def dashboard(){
        User u= session.getAttribute("user1") as User
        render(view: "Dashboard", model: [u:u])
    }
}

