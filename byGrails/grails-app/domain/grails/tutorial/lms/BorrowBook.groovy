package grails.tutorial.lms

class BorrowBook {

    Integer id
    Book book
    Member member
    Date borrowDate
    Date returnDate
    Boolean isReturn = false;
    Boolean isReturnRequest = false;
    Boolean isPending = true;

    static constraints = {
        returnDate(nullable: true)
    }
}
