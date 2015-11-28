package grails.tutorial.lms


class MemberService {

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
        def isExist = Member.findByRollAndPassword(params.roll,params.passsword);
        if (isExist != null && isExist.id){
            return isExist
        }else{
            return  null
        }
    }


}
