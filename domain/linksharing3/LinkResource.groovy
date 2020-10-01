package linksharing3

class LinkResource extends Resource {

    String url

    static constraints = {
        url(blank: false, url: true)
    }
}
