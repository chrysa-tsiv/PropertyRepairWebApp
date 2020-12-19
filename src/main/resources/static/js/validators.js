window.onload = function() {
    $('#create-repair').validate({
        rules: {
            cost: {
                required: true
            },
            address: {
                required: true,
                minlength:4
            },
            description: {
                required: true,
                maxlength:255
            }
        },
        messages: {
            cost: {
                required: 'Please insert the cost.'
            },
            address: {
                required: 'Please insert the address.',
                minlength:'min length is 4'
            },
            description: {
                required: 'Please insert the description.',
                maxlength: 'max length is 250'
            }
        }

    });
}
