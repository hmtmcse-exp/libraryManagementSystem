package grails.tutorial.lms

import org.xhtmlrenderer.pdf.BookmarkElement


class MemberService {

    public static Integer borrowNumber = 3
    public static Integer borrowExpiry = 15


    def save(def params) {
        Member memberInstance = new Member(params)
        memberInstance.save(flush: true)
        if (memberInstance.hasErrors()) {
            memberInstance.errors.each {
                println(it)
            }
            return false
        } else {
            return true
        }
    }


    def update(def params){
        Member memberInstance = Member.get(params.id)
        if (memberInstance == null) {
            return false;
        }
        memberInstance.properties = params
        if (memberInstance.hasErrors()) {
            return false;
        }
        memberInstance.save(flush: true)
        if (memberInstance.hasErrors()) {
            memberInstance.errors.each {
                println(it)
            }
            return false
        } else {
            return true
        }
    }

    def isExistMember(String roll ){
        def isExist = Member.findByRoll(roll);
        if (isExist != null && isExist.id){
            return isExist
        }else{
            return  null
        }
    }

    def loginMe(def params){
        def isExist = Member.findByRollAndPassword(params.roll,params.password);
        if (isExist != null && isExist.id){
            return isExist
        }else{
            return  null
        }
    }

    def addToBorrowList(def params){
        def map = [:]
        map.success = false
        if (params != null && params.memberID && params.bookID){
            Book book = Book.get(params.bookID);
            Member member = Member.get(params.memberID)
            if (book != null && member != null){
                BorrowBook borrowBook = new BorrowBook();
                borrowBook.member = member;
                borrowBook.book = book
                borrowBook.borrowDate = new Date();
                borrowBook.save(flush: true);
                if (borrowBook.hasErrors()){
                    map.message = "Can't Add to Borrow List"
                    return map
                }else{
                    mep.success = true
                    return map
                }
            }else{
                map.message = "Invalid Request"
                return map
            }
        }else{
            map.message = "Invalid Request"
          return map
        }
    }

    def getBorrowListByMemberId(def params){
        def map = [:]
        map.success = false
        if (params != null && params.memberID){
            Member member = Member.get(params.memberID)
            def bookList = BorrowBook.findByMember(member);
            map.success = true
            map.bookList = bookList.book
            return map
        }else{
            map.message = "Invalid Request"
            return map
        }
    }


}