package grails.tutorial.lms

class Books {
  Integer id
  String name
  String author
  String category
  String isbn
  String publisherName
  String number_of_copy
  Integer price
  String code
  String edition
  String supplierName
//  static belongsTo =[authors:Author]
    static constraints = {


      publisherName nullable: true
      code nullable: true
      price nullable: true
      edition nullable: true
      isbn nullable: true

    }
}
