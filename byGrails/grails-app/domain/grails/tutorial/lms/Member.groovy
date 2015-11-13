package grails.tutorial.lms

class Member {

    Integer id
    String firstName
    String lastName
    String gender
    String email
    String mobile
    String address
    Date dateCreated
    Date lastUpdated
    Boolean isApprove = false
    String roll

    static constraints = {
        firstName()
        lastName(nullable: true)
        gender()
        email()
        mobile(nullable: true)
        address(nullable: true)
        roll()
        isApprove()
    }

    static mapping = {
        address(type: 'text')
    }
}
