package grails.tutorial.lms

class Operator {

    Integer id
    String name
    String password
    String email
    Date dateCreated
    Date lastUpdated


    static constraints = {
        name()
        email()
        password()
    }
}
