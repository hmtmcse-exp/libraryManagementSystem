package grails.tutorial.lms

class Publisher {


    Integer id
    String name
    String address
    Date dateCreated
    Date lastUpdated

    static hasMany = [book:Book]

    static constraints = {
        name()
        address(nullable: true)
    }

    static mapping = {
        address(type: 'text')
    }
}
