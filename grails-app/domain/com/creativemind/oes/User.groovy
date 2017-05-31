package com.creativemind.oes

class User extends SecUser {
    UserDemographics userDemographics
    UserAddress userAddress
    UserEducation userEducation
    static constraints = {

    }
    static embedded = ['userDemographics', 'userAddress', 'userEducation']
    static hasMany = [results: Results]
}
