var FormValidation = function () {

    // basic validation
    var handleValidation1 = function () {
        // for more info visit the official plugin documentation: 
        // http://docs.jquery.com/Plugins/Validation

        var form1 = $('#insert');
        var error1 = $('.alert-danger', form1);
        var success1 = $('.alert-success', form1);

        form1.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",  // validate all fields including form hidden input
            rules: {
                name: {
                    minlength: 1,
                    required: true
                },
                batchSize: {
                    minlength: 1,
                    required: true,
                    number: true
                },
                efficiency: {
                    minlength: 1,
                    required: true,
                    number: true
                }
            },

            messages: { // custom messages for radio buttons and checkboxes
                name: {
                    required: "레시피 이름을 입력해주세요."
                },
                batchSize : {
                    required: "배치사이즈를 입력해주세요.",
                    number: "숫자로 입력해주세요."
                },
                efficiency : {
                    required: "수율을 입력해주세요.",
                    number: "숫자로 입력해주세요."
                }
            },

            invalidHandler: function (event, validator) { //display error alert on form submit
                success1.hide();
                error1.show();
                Metronic.scrollTo(error1, -100);
            },

            highlight: function (element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function (element) { // revert the change done by hightlight
                $(element)
                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
            },

            success: function (label) {
                label
                    .closest('.form-group').removeClass('has-error'); // set success class to the control group

            },

            submitHandler: function (form) {
                success1.show();
                error1.hide();
                form.submit();
            }
        });


    }


    return {
        //main function to initiate the module
        init: function () {

            handleValidation1();

        }

    };

}();
