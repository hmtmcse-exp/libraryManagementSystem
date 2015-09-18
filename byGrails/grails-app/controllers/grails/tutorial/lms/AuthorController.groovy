package grails.tutorial.lms



class AuthorController {

    GlobalConfigService globalConfigService

    def index() {
        params.max = params.max?:globalConfigService.itemsPerPage();
        def list = Author.createCriteria().list(params) {
            if (params?.colName && params?.colValue){
                like(params.colName, "%" +  params.colValue + "%")
            }
            if (!params.sort){
                order("id","desc")
            }
        };
        [authorInstanceList:list,authorInstanceCount: Author.count(),params:params]
    }


    def show(Integer id) {
        if (id) {
            [authorInstance: Author.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
            return;
        }
    }


    def create() {
        [authorInstanceInstance: chainModel?.authorInstance]
    }


    def save() {
        params.dob = params.date("dob","dd-mm-yyyy")
        Author authorInstance = new Author(params)
        authorInstance.save(flush:true)
        if (authorInstance.hasErrors()){
            authorInstance.errors.each {
                println(it)
            }
            flash.message = [info:"Failed",success:false]
            redirect(action:"create", params:params)
        }else{
            flash.message = [info:"Created",success:true]
            redirect(action:"index")
        }
    }

    def edit(Integer id) {
        if (id){
            [authorInstance: Author.get(id)]
        }else{
            flash.message = [info:"Invalid Request",success:false]
            redirect(action:"index")
        }
    }

    def update() {
        params.dob = params.date("dob","dd-mm-yyyy")
        Author authorInstance = Author.get(params.id)
        if (authorInstance == null) {
            flash.message = [info:"Update Failed",success:false]
            redirect(action:"edit",params:params)
            return;
        }
        authorInstance.properties = params
        if (authorInstance.hasErrors()) {
            flash.message = [info:"Update Failed",success:false]
            redirect(action:"edit",params:params)
            return;
        }
        authorInstance.save(flush:true)
        if (authorInstance.hasErrors()){
            authorInstance.errors.each {
                println(it)
            }
            flash.message = [info:"Update Failed",success:false]
            redirect(action:"edit",params:params)
        }else{
            flash.message = [info:"Updated",success:true]
            redirect(action:"index")
        }
    }


    def delete(Integer id) {
        def authorInstance = Author.get(id);
        if (authorInstance != null) {
            authorInstance.delete(flush: true)
            flash.message = [info: "Deleted", success: true]
        } else {
            flash.message = [info: "Record Not Found", success: false]
        }
        redirect(action: "index")
    }

}
