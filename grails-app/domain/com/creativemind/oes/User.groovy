package com.creativemind.oes

class User {
    String userName
    String password
    String userRole;
    UserEducation userEducation
    UserDemographics userDemographics
    UserAddress userAddress
    static constraints = {
        userRole inList: ["admin","user"]
        userRole(nullable: false)
        userName(nullable: false)
        password(nullable: false)
    }
    static embedded = ['userAddress','userDemographics', 'userEducation']
    static hasMany = [results:Results]
}
