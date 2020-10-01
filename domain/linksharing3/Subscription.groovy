package linksharing3

class Subscription {

    Topic topic
    User createdBy
    Date dateCreated
    Seriousness seriousness

    static belongsTo = [createdBy: User,
                        topic:Topic]

    static constraints = {
        topic(unique: ['createdBy'])
        seriousness(nullable: false)
        createdBy(nullable: false)
    }
    enum Seriousness{
        Serious,
        VerySerious,
        Casual
    }


}
