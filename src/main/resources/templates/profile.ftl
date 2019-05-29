<#import "parts/common.ftl" as c>
<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label" for="forUserPassword"> Password: </label>
            <input class="col-sm-6" type="password" name="password" id="forUserPassword" placeholder="Password"/>
        </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label" > Email: </label>
                <input class="col-sm-6" type="email" name="email" placeholder="dub@dubsocial.com" value="${email!''}"/>
            </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>