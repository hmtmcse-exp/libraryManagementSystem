package grails.tutorial.lms


class BookController {

    GlobalConfigService globalConfigService
    BookService bookService

    def index() {
       def bookList = bookService.bookList(params)
        [bookInstanceList: bookList.bookInstanceList, bookInstanceCount: bookList.bookInstanceCount, params: params]
    }


    def show(Integer id) {
        if (id) {
            [bookInstance: Book.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
            return;
        }
    }


    def create() {
        [bookInstanceInstance: chainModel?.bookInstance]
    }


    def save() {

        Book bookInstance = new Book(params)
        if (params.author.id){
//           def author = Author.createCriteria().list {
//               'in'('id',[1,2])
//            }
//            bookInstance.addToAuthor(author);
        }
        bookInstance.save(flush: true)
        if (bookInstance.hasErrors()) {
            bookInstance.errors.each {
                println(it)
            }
            flash.message = [info: "Failed", success: false]
            redirect(action: "create", params: params)
        } else {
            flash.message = [info: "Created", success: true]
            redirect(action: "index")
        }
    }

    def edit(Integer id) {
        if (id) {
            [bookInstance: Book.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
        }
    }

    def update() {
        Book bookInstance = Book.get(params.id)
        if (bookInstance == null) {
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
            return;
        }

        bookInstance.properties = params

        if (bookInstance.hasErrors()) {
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
            return;
        }
        bookInstance.save(flush: true)
        if (bookInstance.hasErrors()) {
            bookInstance.errors.each {
                println(it)
            }
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
        } else {
            flash.message = [info: "Updated", success: true]
            redirect(action: "index")
        }
    }


    def delete(Integer id) {
        def bookInstance = Book.get(id);
        if (bookInstance != null) {
            bookInstance.delete(flush: true)
            flash.message = [info: "Deleted", success: true]
        } else {
            flash.message = [info: "Record Not Found", success: false]
        }
        redirect(action: "index")
    }



    def getPendingBorrowBook(){
        def bookList = bookService.getPendingBorrowBook()
        [bookInstanceList: bookList]
    }

    def approveBorrowBookByID(){
        Integer id = params.int("borrowID")?:0
        def isGiven = bookService.approveBorrowBookByID(id)
        if (isGiven){
            flash.message = [info: "Given", success: true]
            redirect(controller: "book", action: "index")
        }else {
            flash.message = [info: "Can't Able to Given", success: false]
            redirect(controller: "book", action: "index")
        }
    }

}
