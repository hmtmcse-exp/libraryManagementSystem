package grails.tutorial.lms


class BookService {

    GlobalConfigService globalConfigService

    def bookList(def params) {
        params.max = params.max ?: globalConfigService.itemsPerPage();
        def list = Book.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        };
       return [bookInstanceList: list, bookInstanceCount: Book.count(), params: params]
    }

    def bookByCategory(def params) {
        def category = Category.get(params.cat)
        def list = Book.createCriteria().list(params) {
            eq("category",category)
            if (!params.sort) {
                order("id", "desc")
            }
        };
        return [bookInstanceList: list, bookInstanceCount: 0, params: params]
    }

    def getPendingBorrowBook(){
        def borrowBooks = BorrowBook.createCriteria().list {
            eq("isPending",true)
        }
        return borrowBooks
    }

    def getReturnBorrowBook(){
        def borrowBooks = BorrowBook.createCriteria().list {
            and {
                eq("isReturnRequest",true)
                eq("isReturn",false)
                eq("isPending",false)
            }

        }
        return borrowBooks
    }

    def approveBorrowBookByID(Integer id = 0){
        if (id != 0){
            def borrowBook = BorrowBook.get(id)
            borrowBook.isPending = false
            borrowBook.save(flush: true)
            if (borrowBook.hasErrors()){
                return false
            }else{
                return true
            }
        }else{
            return false
        }
    }

    def returnBorrowBookByID(Integer id = 0){
        if (id != 0){
            def borrowBook = BorrowBook.get(id)
            borrowBook.isReturn = true
            borrowBook.save(flush: true)
            if (borrowBook.hasErrors()){
                return false
            }else{
                return true
            }
        }else{
            return false
        }
    }

    def returnRequestBorrowBookByID(Integer id = 0){
        if (id != 0){
            def borrowBook = BorrowBook.get(id)
            borrowBook.isReturnRequest = true
            borrowBook.save(flush: true)
            if (borrowBook.hasErrors()){
                return false
            }else{
                return true
            }
        }else{
            return false
        }
    }

    def searchBook(def params) {
        def books = Book.createCriteria().list() {
                like("name", "%" + params.term + "%")
        };
        def list = []
        def map = [:]
        books.each {book ->
            map.put("label",book.name)
            map.put("id",book.id)
            list.add(map)
        }
        return list;
    }


}
