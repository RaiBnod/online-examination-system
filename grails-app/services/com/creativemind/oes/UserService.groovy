package com.creativemind.oes

import grails.transaction.Transactional

import java.text.DateFormat
import java.text.SimpleDateFormat

@Transactional
class UserService {

    def userSave(def params) {
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd")
        User user=new User()
        if(params.originalId)
            user=User.findById(Integer.valueOf((String)params.originalId))
        user.userName=params.userName
        user.password=params.password
        user.userRole=params.userRole
        UserDemographics userDemographics=new UserDemographics()
        user.userDemographics=userDemographics
        //demographics
        user.userDemographics.firstName=params.firstName
        user.userDemographics.middleName=params.middleName
        user.userDemographics.lastName=params.lastName
        user.userDemographics.dob=(Date)formatter.parse((String)params.dob)
        user.userDemographics.phoneNumber=params.phoneNumber
        user.userDemographics.emailId=params.emailId
        user.userDemographics.gender=params.gender
        user.userDemographics.nationality=params.nationality
        user.userDemographics.maritalStatus=params.maritalStatus
        user.userDemographics.joinDate=new Date()

       //address

        UserAddress userAddress=new UserAddress()
        user.userAddress=userAddress
        user.userAddress.pemDistrict=params.pemDistrict
        user.userAddress.pemZone=params.pemZone
        user.userAddress.pemWardNo=params.pemWardNo
        user.userAddress.pemTole=params.pemTole
        user.userAddress.tempDistrict=params.tempDistrict
        user.userAddress.tempZone=params.tempZone
        user.userAddress.tempWardNo=params.tempWardNo
        user.userAddress.tempTole=params.tempTole

        //education
        UserEducation userEducation=new UserEducation()
        user.userEducation=userEducation
        user.userEducation.slcSchool=params.slcSchool
        user.userEducation.slcPercentage=params.slcPercentage
        user.userEducation.plus2School=params.plus2School
        user.userEducation.plus2Percentage=params.plus2Percentage
        user.userEducation.bachelorCollage=params.bachelorCollage
        user.userEducation.bachelorPercentage=params.bachelorPercentage

        if(user.save(flush: true)){
            return "success"
        }else{
            return "fail"
        }
    }
}
