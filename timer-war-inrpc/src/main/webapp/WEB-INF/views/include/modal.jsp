<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Delete Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="deleteModalLabel">是否删除</h4>
            </div>
            <form id="delete_form" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label" id="delete_content"></label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-info" data-dismiss="modal">关闭</button>
                </div>
            </form>
        </div>
    </div>
</div>