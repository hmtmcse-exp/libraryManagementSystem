package grails.tutorial.lms

class Author {

    Integer id
    String name
    Date dob
    String bio
    Date dateCreated
    Date lastUpdated

    static hasMany = [book:Book]

    static constraints = {
        name()
        dob(nullable: true)
        bio(nullable: true)
    }

    static mapping = {
        bio(type: 'text')
    }
}
