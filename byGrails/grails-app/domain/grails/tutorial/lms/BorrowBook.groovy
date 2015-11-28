package grails.tutorial.lms

class BorrowBook {

    Integer id
    Book book
    Member member
    Date borrowDate
    Date returnDate
    Boolean isReturn = false;

    static constraints = {
    }
}
