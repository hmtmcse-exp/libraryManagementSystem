package grails.tutorial.lms


class PublisherController {

    GlobalConfigService globalConfigService

    def index() {
        params.max = params.max ?: globalConfigService.itemsPerPage();
        def list = Publisher.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        };
        [publisherInstanceList: list, publisherInstanceCount: Publisher.count(), params: params]
    }


    def show(Integer id) {
        if (id) {
            [publisherInstance: Publisher.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
            return;
        }
    }


    def create() {
        [publisherInstanceInstance: chainModel?.publisherInstance]
    }


    def save() {
        Publisher publisherInstance = new Publisher(params)
        publisherInstance.save(flush: true)
        if (publisherInstance.hasErrors()) {
            publisherInstance.errors.each {
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
            [publisherInstance: Publisher.get(id)]
        } else {
            flash.message = [info: "Invalid Request", success: false]
            redirect(action: "index")
        }
    }

    def update() {
        Publisher publisherInstance = Publisher.get(params.id)
        if (publisherInstance == null) {
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
            return;
        }

        publisherInstance.properties = params

        if (publisherInstance.hasErrors()) {
            flash.message = [info: "Update Failed", success: false]
            redirect(action: "edit", params: params)
            return;
        }
        publisherInstance.save(flush: true)
        if (publisherInstance.hasErrors()) {
            publisherInstance.errors.each {
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
        def publisherInstance = Publisher.get(id);
        if (publisherInstance != null) {
            publisherInstance.delete(flush: true)
            flash.message = [info: "Deleted", success: true]
        } else {
            flash.message = [info: "Record Not Found", success: false]
        }
        redirect(action: "index")
    }

}
