package grails.tutorial.lms

class Category {

    Integer id
    String name
    String description

    static constraints = {
        name(nullable: true)
        description(nullable: true)
    }
}
