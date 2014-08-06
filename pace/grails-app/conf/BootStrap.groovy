import myproject.Role
import myproject.User
import myproject.UserRole


class BootStrap {

    def init = { servletContext ->

        def idolUserRole = Role.findByAuthority('ROLE_USER')?:new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole =Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def accountRole =Role.findByAuthority('ROLE_ACCOUNT') ?: new Role(authority: 'ROLE_ACCOUNT').save(failOnError: true)

        def tabulatorRole1 =Role.findByAuthority('TABULATOR1') ?: new Role(authority: 'TABULATOR1').save(failOnError: true)
        def tabulatorRole2 =Role.findByAuthority('TABULATOR2') ?: new Role(authority: 'TABULATOR2').save(failOnError: true)
        def homeAssignmentRole =Role.findByAuthority('HOME_ASSIGNMENT_ROLE') ?: new Role(authority: 'HOME_ASSIGNMENT_ROLE').save(failOnError: true)

        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'admin',
                email: 'admin@damyant.com',
                studyCentreId: 1,
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create adminUser, adminRole
        }
//        def user =  new User()
//        user.username = "admin"
//        user.password = "admin"
//        user.email = "admin@damyant.com"
//        user.enabled = true
//        user.accountExpired = false
//        user.accountLocked = false
//        user.passwordExpired = false
//        user.validate();
//        user.save(flush:true)
//        UserRole.create adminUser, adminRole

    }
    def destroy = {
    }
}
