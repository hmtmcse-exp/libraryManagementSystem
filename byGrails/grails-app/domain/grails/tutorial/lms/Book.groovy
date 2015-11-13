package grails.tutorial.lms

class Book {
    Integer id
    String name
    String isbn
    Integer copy
    Double price
    String code
    String edition
    String description
    Date dateCreated
    Date lastUpdated

    static belongsTo =[author:Author,category:Category,publisher:Publisher]
    static hasMany = [category: Category, author: Author]

    static constraints = {
        name()
        isbn(nullable: true)
        copy()
        price(nullable: true)
        author(nullable: true)
        edition()
        description(nullable: true)
    }

    static mapping = {
        description(type: 'text')
    }
}
