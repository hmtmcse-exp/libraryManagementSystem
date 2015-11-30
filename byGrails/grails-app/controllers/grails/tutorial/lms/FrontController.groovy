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
            flash.message = [info: "Account Already Exist. Please Login.", success: true]
            redirect(controller: "front",  action: "memberLogin")
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
            params.memberID = isExist.id
            def result = memberService.addToBorrowList(params);
            if (result.success == true){
                flash.message = [info: "Book Added Successfully", success: true]
                redirect(controller: "front", action: "books")
            }else{
                flash.message = [info: result.message, success: false]
                redirect(controller: "front", action: "index")
            }
        }else{
            flash.message = [info: "You have need to login or Register for send borrow request", success: true]
            redirect(controller: "front", action: "memberLogin")
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
            if (member.isApprove == false){
                session["member"] = member
                flash.message = [info: "Member Not Approved Yet, Please Contact with librarian", success: true]
            }else{
                session["member"] = member
                flash.message = [info: "Login Success", success: true]
            }
            redirect(controller: "front", action: "books")
        }else{
            flash.message = [info: "Invalid Credential", success: false]
            redirect(controller: "front", action: "memberLogin")
        }
    }

    def books(){
        def isExist = session["member"]?:null
        if (isExist != null){
            def list = memberService.getBorrowListByMemberId(isExist.id)
            if (list.success == true){
                [bookInstanceList: list.bookList]
            }else{
                flash.message = [info: list.message, success: false]
                redirect(controller: "front", action: "index")
            }
        }else{
            flash.message = [info: "You have need to login or Register for send borrow request", success: true]
            redirect(controller: "front", action: "index")
        }
    }


    def show() {
        if (params.bookID) {
            [bookInstance: Book.get(params.bookID)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(controller: "front", action: "index")
            return;
        }
    }

    def logout() {
        session.invalidate()
        flash.message = [info: "Successfully Logout", success: false]
        redirect(controller: "front", action: "index")
    }
}
