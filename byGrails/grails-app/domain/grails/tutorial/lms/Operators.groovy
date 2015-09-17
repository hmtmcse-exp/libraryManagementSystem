package grails.tutorial.lms

class Operators {

    Integer id
    String name
    String password
    String email


    static constraints = {
        name()
        email()
        password()
    }
}
