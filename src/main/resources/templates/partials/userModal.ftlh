<div class="modal fade" id="removeUser" tabindex="-1" role="dialog" aria-labelledby="removeTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="removeTitle">Confirm delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">Are you sure you want to delete this user?<br/>By deleting this user, all user's repairs will be also deleetd.</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <form action="/delete-user" method="delete" class="modal-delete-action">
                    <button class="btn btn-danger" type="submit">DELETE</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
const $modalElement= $('#removeUser');
$modalElement.on('show.bs.modal', function (event) {
let id = $(event.relatedTarget).closest('[data-id]').data('id');
let fname = document.getElementById(id+'-fname').innerText;
let lname = document.getElementById(id+'-lname').innerText;
let $titleElement= $('.modal-title');
$titleElement.text(() => 'Confirm delete '+ fname+' '+lname);
let $modalDeleteButton= $('.modal-delete-action');
$($modalDeleteButton).attr('action', id+'/delete-user');});
</script>