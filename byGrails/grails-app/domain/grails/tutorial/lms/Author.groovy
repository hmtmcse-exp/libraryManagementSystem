package grails.tutorial.lms

class Author {

    Integer id
    String name
    Date dob
    String bio

    static constraints = {
        name()
        dob(nullable: true)
        bio(nullable: true)
    }
}
