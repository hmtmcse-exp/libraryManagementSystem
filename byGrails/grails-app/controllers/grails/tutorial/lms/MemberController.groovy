package grails.tutorial.lms


class MemberController {

    GlobalConfigService globalConfigService
    MemberService memberService

    def index() {
        params.max = params.max ?: globalConfigService.itemsPerPage();
        def list = Member.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        };
        [memberInstanceList: list, memberInstanceCount: Member.count(), params: params]
    }


    def show(Integer id) {
        if (id) {
            [memberInstance: Member.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
            return;
        }
    }


    def create() {
        [memberInstanceInstance: chainModel?.memberInstance]
    }


    def save() {
        if (memberService.save(params)){
            flash.message = [info: "Created", success: true]
            redirect(action: "index")
        }else{
            flash.message = [info: "Failed", success: false]
            redirect(action: "create", params: params)
        }
    }

    def edit(Integer id) {
        if (id) {
            [memberInstance: Member.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
        }
    }

    def update() {
        if (memberService.update(params)){
            flash.message = [info: "Updated", success: true]
            redirect(action: "index")
        }else{
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
        }
    }


    def delete(Integer id) {
        def memberInstance = Member.get(id);
        if (memberInstance != null) {
            memberInstance.delete(flush: true)
            flash.message = [info: "Deleted", success: true]
        } else {
            flash.message = [info: "Record Not Found", success: false]
        }
        redirect(action: "index")
    }

    def getPendingMember(){

    }

}
