package grails.tutorial.lms


class CategoryController {

    GlobalConfigService globalConfigService

    def index() {
        params.max = params.max ?: globalConfigService.itemsPerPage();
        def list = Category.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        };
        [categoryInstanceList: list, categoryInstanceCount: Category.count(), params: params]
    }


    def show(Integer id) {
        if (id) {
            [categoryInstance: Category.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
            return;
        }
    }


    def create() {
        [categoryInstanceInstance: chainModel?.categoryInstance]
    }


    def save() {
        Category categoryInstance = new Category(params)
        categoryInstance.save(flush: true)
        if (categoryInstance.hasErrors()) {
            categoryInstance.errors.each {
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
            [categoryInstance: Category.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
        }
    }

    def update() {
        Category categoryInstance = Category.get(params.id)
        if (categoryInstance == null) {
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
            return;
        }

        categoryInstance.properties = params

        if (categoryInstance.hasErrors()) {
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
            return;
        }
        categoryInstance.save(flush: true)
        if (categoryInstance.hasErrors()) {
            categoryInstance.errors.each {
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
        def categoryInstance = Category.get(id);
        if (categoryInstance != null) {
            categoryInstance.delete(flush: true)
            flash.message = [info: "Deleted", success: true]
        } else {
            flash.message = [info: "Record Not Found", success: false]
        }
        redirect(action: "index")
    }

}
