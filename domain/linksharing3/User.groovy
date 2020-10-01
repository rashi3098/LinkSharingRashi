package linksharing3

class User {

    String email;
    String userName;
    String password;
    String firstName;
    String lastName;
    byte[] photo;
    Boolean admin;
    Boolean active;

    String confirmPassword
    static transients = ['fullName', 'confirmPassword']
    static hasMany = [
            topics       : Topic,
            subscriptions: Subscription,
            resources    : Resource,
            readingItems : ReadingItem
    ]
    static mapping = {
        id(sort: 'desc')
    }

    static constraints = {
        email(unique: true, email: true, blank: false)
        userName(unique: true, blank: false)
        password(minSize: 5, blank: false)
        firstName(blank: false)
        lastName(blank: false)
        photo(nullable: true)
        admin(nullable: true)
        active(nullable: true)
        confirmPassword(bindable: true, nullable: true, blank: true)

    }

    String getFullName() {
        [firstName, lastName].findAll { it }.join(' ')

    }
}