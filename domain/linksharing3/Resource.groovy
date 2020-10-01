package linksharing3

class Resource {

    String description
    User createdBy
    Topic topic
    Date dateCreated
    Date lastUpdated
    static hasMany = [
            ratings : ResourceRating,
            readingItems: ReadingItem
    ]
    static mapping = {
        tablePerHierarchy :true
    }
    static belongsTo = [topic: Topic]

    static constraints = {
        description(blank: false)
    }
}
