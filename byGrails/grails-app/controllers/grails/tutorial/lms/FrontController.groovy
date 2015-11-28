package grails.tutorial.lms

class FrontController {

    BookService bookService
    MemberService memberService

    def index() {
        def bookList = bookService.bookList(params)
        [bookInstanceList: bookList.bookInstanceList, bookInstanceCount: bookList.bookInstanceCount, params: params]
    }

    def registration(){

    }

    def registerMe(){
        def isExist = memberService.isExistMember(params.roll);
        if (isExist != null){
            flash.message = [info: "Account Already Exist", success: true]
            redirect(action: "index")
        }else{
            if (memberService.save(params)){
                flash.message = [info: "Registration Complete", success: true]
                redirect(action: "index")
            }else{
                flash.message = [info: "Registration Can't Complete", success: false]
                redirect(action: "registration", params: params)
            }
        }
    }

    def borrowRequest(){

    }

    def borrowBookDetails(){

    }

    def bookByCategory(){
        def bookList = bookService.bookByCategory(params)
        render(view:"index",model:[bookInstanceList: bookList.bookInstanceList, bookInstanceCount: bookList.bookInstanceCount, params: params])
    }
}
