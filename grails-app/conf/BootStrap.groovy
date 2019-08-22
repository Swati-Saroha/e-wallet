class BootStrap {

    def bootStrapService

    def init = { servletContext ->
        bootStrapService.initRole()
        bootStrapService.initAdmin()
        bootStrapService.savAdminRole()

    }
    def destroy = {
    }
}
