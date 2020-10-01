package linksharing3

class SearchController {

    def index() { }

    def search(){
   User u= session.getAttribute("user1") as User
        render(view: "search", model: [searchElement: params.get("searchElement"), u:u])
    }
}
