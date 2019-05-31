<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Message Editor
</a>


<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}" name="text" value="<#if message??>${message.text}</#if>" placeholder="Введите сообщение"/>
            </div>
            <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
            </#if>
            <div class="form-group">
                <input type="text" class="form-control" name="tag" placeholder="Тэг" value="<#if message??>${message.tag}</#if>">
            </div>
            <div class="form-group">
                <div class="custom-file" >
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</div>