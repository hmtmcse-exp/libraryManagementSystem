package bygrails

import grails.tutorial.lms.Category

class UIHelperTagLib {
    static namespace = "uiHelper"

    def bookCategory = { attrs, body ->
        def category = Category.list();
        out << g.link(controller:"front", action:"index", class:"list-group-item"){g.message(code:"home", default:"Category")}
        category.each {cat ->
            out << g.link(controller:"front", action:"bookByCategory", params:['cat':cat.id],  class:"list-group-item"){"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+ cat.name}
        }
    }

    def getUserMenu  = { attrs, body ->

        def isExist = session["member"]?:null
        if (isExist != null){
            out << g.link(controller:"front", action:"books", class:"list-group-item"){g.message(code:"login", default:"My Books")}
            out << g.link(controller:"front", action:"logout", class:"list-group-item"){g.message(code:"login", default:"Logout")}
        }else{
            out << g.link(controller:"front", action:"registration", class:"list-group-item"){g.message(code:"registration", default:"Registration")}
            out << g.link(controller:"front", action:"memberLogin", class:"list-group-item"){g.message(code:"login", default:"Login")}
        }
    }

}
