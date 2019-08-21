class BootStrap {

    def bootStrapService

    def init = { servletContext ->
        bootStrapService.initAdmin()
    }
    def destroy = {
    }
}
