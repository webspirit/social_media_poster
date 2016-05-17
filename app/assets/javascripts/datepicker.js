$(function () {
    $('#post_datepicker').datetimepicker({
        format: 'ddd DD/MM/YYYY, hh:mm A',
        defaultDate: Date.now(),
        minDate: Date.now(), 
        showTodayButton: true,
        icons: {
            today: 'glyphicon glyphicon-pushpin'
        }
    });
});