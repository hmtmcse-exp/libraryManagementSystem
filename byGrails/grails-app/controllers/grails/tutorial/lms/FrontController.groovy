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
            session["member"] = isExist
            flash.message = [info: "Account Already Exist", success: true]
            redirect(controller: "front",  action: "index")
        }else{
            if (memberService.save(params)){
                flash.message = [info: "Registration Complete", success: true]
                redirect(controller: "front", action: "index")
            }else{
                flash.message = [info: "Registration Can't Complete", success: false]
                redirect(controller: "front", action: "registration", params: params)
            }
        }
    }

    def borrowRequest(){
        def isExist = session["member"]?:null
        if (isExist != null){

        }else{
            flash.message = [info: "You have need to login or Register for send borrow request", success: true]
            redirect(controller: "front", action: "index")
        }


    }

    def bookDetails(){

    }

    def bookByCategory(){
        def bookList = bookService.bookByCategory(params)
        render(view:"index",model:[bookInstanceList: bookList.bookInstanceList, bookInstanceCount: bookList.bookInstanceCount, params: params])
    }

    def memberLogin(){

    }

    def loginMe(){
        def member = memberService.loginMe(params);
        if (member != null){
            session["member"] = member
            flash.message = [info: "Login Success", success: true]
            redirect(controller: "front", action: "books")
        }else{
            flash.message = [info: "Invalid Credential", success: false]
            redirect(controller: "front", action: "memberLogin")
        }
    }

    def books(){
        def isExist = session["member"]?:null
        if (isExist != null){

        }else{
            flash.message = [info: "You have need to login or Register for send borrow request", success: true]
            redirect(controller: "front", action: "index")
        }
    }
}
