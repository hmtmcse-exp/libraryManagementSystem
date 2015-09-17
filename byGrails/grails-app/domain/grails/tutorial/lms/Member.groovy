package grails.tutorial.lms

class Member {

    Integer id
    String firstName
    String lastName
    String userName
    String gender
    String email

    String phoneNo
    String address
    String intake
    String department

    static constraints = {
        email nullable: true
        lastName nullable: true
        firstName nullable: true
        address nullable: true

    }
}
