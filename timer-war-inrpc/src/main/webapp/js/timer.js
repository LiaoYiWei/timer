/**
 * Created by panqingqing on 16/1/26.
 */
$(document).ready(function () {
    /*form验证*/
    jQuery("#baseForm").validationEngine();

    /*表格分页*/
    $('#dataTables').DataTable({
        responsive: true
    });
})
