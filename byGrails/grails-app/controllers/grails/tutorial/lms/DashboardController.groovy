package grails.tutorial.lms

class DashboardController {

    BookService bookService

    def index() {
        def bookList = bookService.bookList(params)
        [bookInstanceList: bookList.bookInstanceList, bookInstanceCount: bookList.bookInstanceCount, params: params]
    }
}
