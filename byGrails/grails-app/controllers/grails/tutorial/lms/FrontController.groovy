package grails.tutorial.lms

class FrontController {

    BookService bookService

    def index() {
        def bookList = bookService.bookList(params)
        [bookInstanceList: bookList.bookInstanceList, bookInstanceCount: bookList.bookInstanceCount, params: params]
    }

    def registration(){

    }

    def borrowRequest(){

    }

    def borrowBookDetails(){

    }

    def bookByCategory(){

    }
}
