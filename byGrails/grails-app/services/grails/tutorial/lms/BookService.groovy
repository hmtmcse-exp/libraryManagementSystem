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
}
