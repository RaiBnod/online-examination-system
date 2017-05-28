import com.creativemind.oes.User
import com.creativemind.oes.UserAddress
import com.creativemind.oes.UserDemographics
import com.creativemind.oes.UserEducation

class BootStrap {

    def init = { servletContext ->
        User user=new User()
        user.userName="adminUser"
        user.userRole="admin"
        user.password="admin@321"
        user.userAddress=new UserAddress()
        user.userEducation=new UserEducation()
        user.userDemographics=new UserDemographics()
        user.save(flush: true)
    }
    def destroy = {
    }
}
