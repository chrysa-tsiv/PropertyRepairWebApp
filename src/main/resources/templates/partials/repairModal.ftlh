<div class="modal fade" id="removeRepair" tabindex="-1" role="dialog" aria-labelledby="removeTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="removeTitle">Confirm delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">Are you sure you want to delete this repair?</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <form action="/delete-repair" method="delete" class="modal-delete-action">
                    <button class="btn btn-danger" type="submit">DELETE</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
const $modalElement1= $('#removeRepair');
$modalElement1.on('show.bs.modal', function (event) {
let id = $(event.relatedTarget).closest('[data-id]').data('id');
let $modalDeleteButton= $('.modal-delete-action');
$($modalDeleteButton).attr('action', id+'/delete-repair');});
</script>