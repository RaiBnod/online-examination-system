package com.creativemind.oes


class UserController {
    def userService

    def index() {
        def userList = User.list()
        render(view: 'user', model: [userList: userList])
    }

    def edit() {
        User user = new User()
        if (params.id)
            user = User.findById(Integer.valueOf((String) params.id))
        render(view: 'user_edit', model: [user: user])
    }

    def userAdd() {
        userService.userSave(params)
        redirect(action: 'index')
    }

    def userView() {
        User user = User.findById(Integer.valueOf((String) params.id))
        render(view: "user_show", model: [user: user])
    }

    def delete() {
        User user = User.findById(Integer.valueOf((String) params.id))
        if (user.delete(flush: true))
            flash.message = "Delete Successful"
        else
            flash.message = "Delete Unsuccessful"
        index()
    }

    def userLogin() {
        User user = User.findByUserName((String) params.userName)
        if (user) {
            if (user.password.equalsIgnoreCase(params.password)) {
                session.setAttribute("userName", user.userName)
                session.setAttribute("role", user.userRole)
                redirect(controller: "questionSet", action: "index")
            } else {
                flash.message = "Please insert correct password"
            }
        } else {
            flash.message = "No such user found"
        }
        render(view: "../index")
    }
}
