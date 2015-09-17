package grails.tutorial.lms

class Publisher {


    Integer id
    String name
    String address


    static constraints = {
        name()
        address(nullable: true)
    }
}
