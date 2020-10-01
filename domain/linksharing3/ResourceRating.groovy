package linksharing3

class ResourceRating {

    Resource resource
    User createdBy
    Integer score
    static belongsTo = [
            createdBy:User,
            resource:Resource
    ]
    static constraints = {
        resource(unique: ['createdBy'], nullable: false)
        createdBy(nullable: false)
        score(min: 1, max: 5, nullable: false)
    }
}
