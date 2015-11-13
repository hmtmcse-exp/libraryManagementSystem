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

    def bookByCategory(def params) {
        def category = Category.get(params.cat)
        def list = Book.createCriteria().list(params) {
            eq("category",category)
            if (!params.sort) {
                order("id", "desc")
            }
        };
        return [bookInstanceList: list, bookInstanceCount: 0, params: params]
    }
}
