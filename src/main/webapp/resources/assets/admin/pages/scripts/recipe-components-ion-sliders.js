var ComponentsIonSliders = function () {

    return {
        //main function to initiate the module
        init: function () {

            $("#range_1").ionRangeSlider({
                min: 0,
                max: 5000,
                from: 1000,
                to: 4000,
                type: 'double',
                step: 1,
                prefix: "$",
                prettify: false,
                hasGrid: true
            });


            $("#updateLast").on("click", function () {

                $("#range_3").ionRangeSlider("update", {
                    min: Math.round(10000 + Math.random() * 40000),
                    max: Math.round(200000 + Math.random() * 100000),
                    step: 1,
                    from: Math.round(40000 + Math.random() * 40000),
                    to: Math.round(150000 + Math.random() * 80000)
                });

            });

        }

    };

}();
