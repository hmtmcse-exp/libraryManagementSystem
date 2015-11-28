package grails.tutorial.lms

class BorrowBooks {

    Integer id
    Book book
    Member member
    Date borrowDate
    Date returnDate
    Boolean isReturn = false;

    static constraints = {
    }
}
