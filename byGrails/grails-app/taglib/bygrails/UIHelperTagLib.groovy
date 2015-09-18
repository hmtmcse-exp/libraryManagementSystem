package bygrails

import grails.tutorial.lms.Category

class UIHelperTagLib {
    static namespace = "uiHelper"

    def bookCategory = { attrs, body ->
        def category = Category.list();
        out << g.link(controller:"front", action:"index", class:"list-group-item"){g.message(code:"home", default:"Category")}
        category.each {cat ->
            out << g.link(controller:"front", action:"index", class:"list-group-item"){"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+ cat.name}
        }
    }

}
