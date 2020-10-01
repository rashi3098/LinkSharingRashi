package linksharing3

class ReadingItem {

    boolean isRead
    Resource resource
    User user

    static constraints = {
        resource(unique: ['user'])
    }

    static belongsTo = [
            resource: Resource,
            user    : User
    ]
}
