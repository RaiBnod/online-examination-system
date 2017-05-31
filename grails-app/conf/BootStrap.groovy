import com.creativemind.oes.SecRole
import com.creativemind.oes.SecUserSecRole
import com.creativemind.oes.User

class BootStrap {
    def springSecurityService

    def init = { servletContext ->
        def userRole = SecRole.findByAuthority("ROLE_USER") ?: new SecRole(authority: "ROLE_USER").save(flush: true)
        def adminRole = SecRole.findByAuthority("ROLE_ADMIN") ?: new SecRole(authority: "ROLE_ADMIN").save(flush: true)

        def user = User.findByUsername("user") ?: new User(username: "user", password: springSecurityService.encodePassword("user")).save(flush: true)
        def admin = User.findByUsername("admin") ?: new User(username: "admin", password: springSecurityService.encodePassword("admin")).save(flush: true)


        SecUserSecRole.findBySecRole(SecRole.findByAuthority("ROLE_USER")) ?:
                SecUserSecRole.create(user, userRole, true)

        SecUserSecRole.findBySecRole(SecRole.findByAuthority("ROLE_ADMIN")) ?:
                SecUserSecRole.create(admin, adminRole, true)
    }
    def destroy = {
    }
}
