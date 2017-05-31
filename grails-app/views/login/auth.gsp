<%--
  Created by IntelliJ IDEA.
  User: raibnod
  Date: 5/31/17
  Time: 12:02 PM
--%>
<!DOCTYPE html>
<html lang="en">

<body>

<div class="modal fade" id="sign-in" role="dialog" aria-labelledby="signInLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="signInLabel">Sign In</h4>
            </div>

            <g:if test='${flash.message}'>
                <div class='login_message'>${flash.message}</div>
            </g:if>

            <div class="modal-body">
                <form action="${postUrl}" id="loginForm" method="post" name="loginForm" autocomplete='off' role="form">

                    <div class="form-group">
                        <input type="text" name="j_username" id="username" placeholder="Username"
                               class="form-control" required>
                    </div>

                    <div class="form-group">
                        <input type="password" name="j_password" id="passwordMenu" placeholder="Password"
                               class="form-control" required>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-6">
                                <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                                       <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                <label>Remember me</label>
                            </div>

                            <div class="col-xs-6 align-right">
                                <p class="help-block"><a href="${createLink(uri: '/register/forgotPassword')}"
                                                         class="text-green">Forgot password?</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="btn-group-justified">
                            <input type="submit" value="Sign In" class="btn btn-block btn-primary">
                        </div>
                    </div>

                    <p class="help-block">Don't have an account? <a href="${createLink(uri: '/register/user')}"
                                                                    class="modal-su text-green">Sign Up</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>