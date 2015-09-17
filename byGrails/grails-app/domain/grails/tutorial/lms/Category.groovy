package grails.tutorial.lms

class Category {

    Integer id
    String name
    String description

    static hasMany = [book:Book]

    static constraints = {
        name(nullable: true)
        description(nullable: true)
    }

    static mapping = {
        description(type: 'text')
    }
}
