"use strict";

// Class definition
var KTAppCalendar = function () {
    // Shared variables
    // Calendar variables
    var calendar;
    var data = {
        id: '',
        eventName: '',
        eventDescription: '',
        scheduleType: '',
        eventLocation: '',
        startDate: '',
        startTime: '',
        endDate: '',
        endTime: '',
        allDay: false
    };

    // Add event variables
    var eventName;
    var eventDescription;
    var scheduleType;
    var eventLocation;
    var startDatepicker;
    var startFlatpickr;
    var endDatepicker;
    var endFlatpickr;
    var startTimepicker;
    var startTimeFlatpickr;
    var endTimepicker
    var endTimeFlatpickr;
    var modal;
    var modalTitle;
    var form;
    var validator;
    var addButton;
    var submitButton;
    var cancelButton;
    var closeButton;

    // View event variables
    var viewEventName;
    var viewAllDay;
    var viewEventDescription;
    var viewScheduleType;
    var viewEventLocation;
    var viewStartDate;
    var viewEndDate;
    var viewModal;
    var viewEditButton;
    var viewDeleteButton;
    var viewStartTime;
    var viewEndTime;


    // Private functions
    $(function(){
    // function profilecalendarlistCall(){
		var request = $.ajax({
		  url: "/profilecalendar",
		  method: "GET",
		  dataType: "json"
		});

        request.done(function(data) {
            console.log(data);

        // Define variables
        var calendarEl = document.getElementById('kt_calendar_app');

        // Init calendar --- more info: https://fullcalendar.io/docs/initialize-globals
        var calendar = new FullCalendar.Calendar(calendarEl, {
            //locale: 'es', // Set local --- more info: https://fullcalendar.io/docs/locale
            initialView: 'dayGridMonth',
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth'
            },

            // ,timeGridWeek,timeGridDay

            navLinks: true, // can click day/week names to navigate views
            selectable: true,
            selectMirror: true,

            // Select dates action --- more info: https://fullcalendar.io/docs/select-callback
            select: function (arg) {
                formatArgs(arg);
                handleNewEvent();
            },

            // Click event --- more info: https://fullcalendar.io/docs/eventClick
            eventClick: function (arg) {
                formatArgs({
                    id: arg.event.id,
                    title: arg.event.title,
                    description: arg.event.extendedProps.description,
                    schedule: arg.event.extendedProps.schedule,
                    location: arg.event.extendedProps.location,
                    startStr: arg.event.startStr,
                    startTimeStr: arg.event.startTimeStr,
                    endTimeStr: arg.event.endTimeStr,
                    endStr: arg.event.endStr,
                    allDay: arg.event.allDay
                });
                
                handleViewEvent();
            },

            editable: true,
            dayMaxEvents: true, // allow "more" link when too many events
            events: data,

            // Handle changing calendar views --- more info: https://fullcalendar.io/docs/datesSet
            datesSet: function(){
            
            // do some stuff
            }
        });

        calendar.render();
        console.log(calendar);
        console.log("캘린더 로딩", calendar);
    });

    request.fail(function( jqXHR, textStatus ) {
        alert( "Request failed: " + textStatus );
      });
// };
    });

    // Init validator
    const initValidator = () => {
        // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
        validator = FormValidation.formValidation(
            form,
            {
                fields: {
                    'calendar_event_name': {
                        validators: {
                            notEmpty: {
                                message: '일정 이름을 입력해주세요'
                            }
                        }
                    },
                    'calendar_event_start_date': {
                        validators: {
                            notEmpty: {
                                message: '시작일을 입력해주세요'
                            }
                        }
                    },
                    'calendar_event_end_date': {
                        validators: {
                            notEmpty: {
                                message: '종료일을 입력해주세요'
                            }
                        }
                    }
                },

                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass: ''
                    })
                }
            }
        );
    }

    // Initialize datepickers --- more info: https://flatpickr.js.org/
    const initDatepickers = () => {
        startFlatpickr = flatpickr(startDatepicker, {
            enableTime: false,
            dateFormat: "Y-m-d",
        });

        endFlatpickr = flatpickr(endDatepicker, {
            enableTime: false,
            dateFormat: "Y-m-d",
        });

        startTimeFlatpickr = flatpickr(startTimepicker, {
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
        });

        endTimeFlatpickr = flatpickr(endTimepicker, {
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
        });
    }

    // Handle add button
    const handleAddButton = () => {
        addButton.addEventListener('click', e => {
            // Reset form data
            data = {
                id: '',
                eventName: '',
                eventDescription: '',
                scheduleType: '',
                startDate: new Date(),
                startTime: new Date(),
                endDate: new Date(),
                endTime: new Date(),
            };
            handleNewEvent();
        });
    }

    // Handle add new event
    const handleNewEvent = () => {
        // Update modal title
        modalTitle.innerText = "일정 등록";

        modal.show();

        // Select datepicker wrapper elements
        const datepickerWrappers = form.querySelectorAll('[data-kt-calendar="datepicker"]');

        // Handle all day toggle
        // const allDayToggle = form.querySelector('#kt_calendar_datepicker_allday');
        // allDayToggle.addEventListener('click', e => {
            // if (e.target.checked) {
                // datepickerWrappers.forEach(dw => {
                    // dw.classList.add('d-none');
                // });
            // } else {
                endFlatpickr.setDate(data.startDate, true, 'Y-m-d');
                datepickerWrappers.forEach(dw => {
                    dw.classList.remove('d-none');
                });
            // }
        // });

        populateForm(data);

        // Handle submit form
        submitButton.addEventListener('click', function (e) {
            // Prevent default button action
            e.preventDefault();

            // Validate form before submit
            if (validator) {
                validator.validate().then(function (status) {
                    console.log('validated!');

                    if (status == 'Valid') {
                        // Show loading indication
                        submitButton.setAttribute('data-kt-indicator', 'on');


                        // Disable submit button whilst loading
                        submitButton.disabled = true;

                        // Simulate form submission
                        setTimeout(function () {
                            // Simulate form submission
                            submitButton.removeAttribute('data-kt-indicator');

                            // Show popup confirmation 
                            Swal.fire({
                                text: "New event added to calendar!",
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            }).then(function (result) {
                                if (result.isConfirmed) {
                                    modal.hide();

                                    // Enable submit button after loading
                                    submitButton.disabled = false;

                                    // Detect if is all day event
                                    // let allDayEvent = false;
                                    // if (allDayToggle.checked) { allDayEvent = true; }
                                    // if (startTimeFlatpickr.selectedDates.length === 0) { allDayEvent = true; }

                                    // Merge date & time
                                    var startDateTime = moment(startFlatpickr.selectedDates[0]).format();
                                    var endDateTime = moment(endFlatpickr.selectedDates[endFlatpickr.selectedDates.length - 1]).format();
                                    // if (!allDayEvent) {
                                        const startDate = moment(startFlatpickr.selectedDates[0]).format('YYYY-MM-DD');
                                        const endDate = startDate;
                                        const startTime = moment(startTimeFlatpickr.selectedDates[0]).format('HH:mm:ss');
                                        const endTime = moment(endTimeFlatpickr.selectedDates[0]).format('HH:mm:ss');

                                        startDateTime = startDate + 'T' + startTime;
                                        endDateTime = endDate + 'T' + endTime;


                                    // }

                                    // Add new event to calendar
                                    // calendar.addEvent({
                                    //     id: uid(),
                                    //     title: eventName.value,
                                    //     description: eventDescription.value,
                                    //     schedule: scheduleType.value,
                                    //     location: eventLocation.value,
                                    //     start: startDateTime,
                                    //     end: endDateTime,
                                    //     allDay: allDayEvent
                                    // });

                                    location.href="employee/addevent";

                                    calendar.render();

                                    // Reset form for demo purposes only
                                    // form.reset();
                                }
                            });

                            form.submit(); // Submit form
                        }, 2000);
                    } else {
                        // Show popup warning 
                        Swal.fire({
                            text: "Sorry, looks like there are some errors detected, please try again.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });
                    }
                });
            }
        });
    }

    // 수정 이벤트 관리
    // Handle edit event
    const handleEditEvent = () => {
        // Update modal title
        modalTitle.innerText = "Edit an Event";

        modal.show();
        console.log("수정 일정!!! id",data.id);

        // Select datepicker wrapper elements
        const datepickerWrappers = form.querySelectorAll('[data-kt-calendar="datepicker"]');

        // Handle all day toggle
        // const allDayToggle = form.querySelector('#kt_calendar_datepicker_allday');
        // allDayToggle.addEventListener('click', e => {
            // if (e.target.checked) {
                // datepickerWrappers.forEach(dw => {
                    // dw.classList.add('d-none');
                // });
            // } else {
                endFlatpickr.setDate(data.endDate, true, 'Y-m-d');
                datepickerWrappers.forEach(dw => {
                    dw.classList.remove('d-none');
                });
            // }
        // });

        

        populateForm(data);

        // Handle submit form
        submitButton.addEventListener('click', function (e) {
            // Prevent default button action
            e.preventDefault();
            console.log("수정 일정2 id",data.id);

            $('#kt_modal_add_event_submit').on('click',function(){
                var sch_idx = data.id;
                console.log("삭제 일정!!!!!!!!!!!! id : " , data.id);
                console.log("삭제 일정 idx : " , sch_idx);
                
                $.ajax({
                    type:'post',
                    url:'/employee/delete.ajax',
                    data:{'sch_idx' : data.id},
                    dataType:'JSON',
                    success:function(data){
                        console.log(data,"번 일정 삭제");
                    },
                    error:function(e){
                        console.log(e);
                    }
                });
            });
            

            // Validate form before submit
            if (validator) {
                validator.validate().then(function (status) {
                    console.log('validated!');

                    if (status == 'Valid') {
                        // Show loading indication
                        submitButton.setAttribute('data-kt-indicator', 'on');

                        // Disable submit button whilst loading
                        submitButton.disabled = true;

                        // Simulate form submission
                        setTimeout(function () {
                            // Simulate form submission
                            submitButton.removeAttribute('data-kt-indicator');

                            // Show popup confirmation 
                            Swal.fire({
                                text: "새로운 일정이 등록되었습니다",
                                icon: "success",
                                buttonsStyling: false,
                                confirmButtonText: "확인",
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            }).then(function (result) {
                                if (result.isConfirmed) {
                                    modal.hide();                                                


                                    

                                    // Enable submit button after loading
                                    submitButton.disabled = false;

                                    // Remove old event
                                    // calendar.getEventById(data.id).remove();
                                    // calendar.getEventById(data.id).remove();
                                    // location.href="schDel.do?sch_idx="+data.id;
                                    console.log(data.id,"번 일정 삭제");

                                    // Detect if is all day event
                                    // let allDayEvent = false;
                                    // if (allDayToggle.checked) { allDayEvent = true; }
                                    // if (startTimeFlatpickr.selectedDates.length === 0) { allDayEvent = true; }

                                    // Merge date & time
                                    var startDateTime = moment(startFlatpickr.selectedDates[0]).format();
                                    var endDateTime = moment(endFlatpickr.selectedDates[endFlatpickr.selectedDates.length - 1]).format();
                                    // if (!allDayEvent) {
                                        const startDate = moment(startFlatpickr.selectedDates[0]).format('YYYY-MM-DD');
                                        const endDate = startDate;
                                        const startTime = moment(startTimeFlatpickr.selectedDates[0]).format('HH:mm:ss');
                                        const endTime = moment(endTimeFlatpickr.selectedDates[0]).format('HH:mm:ss');

                                        startDateTime = startDate + 'T' + startTime;
                                        endDateTime = endDate + 'T' + endTime;
                                    // }

                                    // Add new event to calendar
                                    // calendar.addEvent({
                                    //     id: uid(),
                                    //     title: eventName.value,
                                    //     description: eventDescription.value,
                                    //     schedule: scheduleType.value,
                                    //     location: eventLocation.value,
                                    //     start: startDateTime,
                                    //     end: endDateTime,
                                    //     allDay: allDayEvent
                                    // });

                                    // location.href="employee/addevent";


                                    calendar.render();
                                    console.log(data.id,"번 일정 등록");
                                    console.log(data.id,"번 일정 삭제");

                                    // Reset form for demo purposes only
                                    // form.reset();
                                }
                            });

                            form.submit(); // Submit form
                        }, 2000);
                    } else {
                        // Show popup warning 
                        Swal.fire({
                            text: "Sorry, looks like there are some errors detected, please try again.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });
                    }
                });
            }
        });
    }

    // Handle view event
    // 클릭이밴트
    $('#kt_modal_add_event_submit').on('click',function(){
        var sch_idx = data.id;
        console.log("삭제 일정 id : " , data.id);
        console.log("삭제 일정 idx : " , sch_idx);
        
        $.ajax({
            type:'post',
            url:'/employee/delete.ajax',
            data:{'sch_idx' : data.id},
            dataType:'JSON',
            success:function(data){
                console.log(data,"번 일정 삭제");
            },
            error:function(e){
                console.log(e);
            }
        });
    });

    const handleViewEvent = () => {
        viewModal.show();

        var startDDate = '';
        var startTTime = '';
        var endDDate = '';
        var endTTime = '';

        var sch_idx = data.id;
        console.log("클릭 일정 id : " , data.id);
        console.log("클릭 일정 idx : " , sch_idx);
        
        $.ajax({
            type:'post',
            url:'employee/scheduleinfo.ajax',
            data:{'sch_idx' : sch_idx},
            dataType:'JSON',
            success:function(data){
                console.log(data,"번 일정 상세보기 호출");
                console.log(data[0].sch_start_date,"시작일");
                console.log(data[0].sch_end_date,"종료일");
                console.log(data[0].sch_start_time,"시작시간");
                console.log(data[0].sch_end_time,"종료시간");

                startDDate = data[0].sch_start_date;
                startTTime = data[0].sch_start_time
                endDDate = data[0].sch_end_date;
                endTTime = data[0].sch_end_time;

                viewStartDate.innerText = startDDate;
                viewEndDate.innerText = endDDate;
                viewStartTime.innerText = startTTime;
                viewEndTime.innerText = endTTime;
        
                console.log("viewstartDate : " + startDDate);
                console.log("viewendDate : " + endDDate);
                console.log("viewstartTime : " + startTTime);
                console.log("viewEndTime : " + endTTime);

            },
            error:function(e){
                console.log(e);
            }
        });

        // Detect all day event
        // var eventNameMod;
        // var startDateMod;
        // var endDateMod;
        // var startTimeMod;
        // var EndTimeMod;

        // Generate labels
        // if (data.allDay) {
            // eventNameMod = 'All Day';
            // startDateMod = moment(data.startDate).format('Do MMM, YYYY');
            // endDateMod = moment(data.endDate).format('Do MMM, YYYY');

            // startDateMod = moment(data.startDate).format('YYYY.MM.DD');
            // endDateMod = moment(data.endDate).format('YYYY.MM.DD');

        // } else {
            // eventNameMod = '';
            // startDateMod = moment(data.startDate).format('Do MMM, YYYY - h:mm a');
            // endDateMod = moment(data.endDate).format('Do MMM, YYYY - h:mm a');

            // startDateMod = moment(data.startDate).format('YYYY.MM.DD');
            // startTimeMod = moment(data.startTime).format('HH:mm');
            // endDateMod = moment(data.endDate).format('YYYY.MM.DD');
            // EndTimeMod = moment(data.endTime).format('HH:mm');
            
        // }

        // Populate view data
        viewEventName.innerText = data.eventName;
        // viewAllDay.innerText = eventNameMod;
        viewEventDescription.innerText = data.eventDescription ? data.eventDescription : '--';
        // viewEventLocation.innerText = data.eventLocation ? data.eventLocation : '--';
        viewStartDate.innerText = startDDate;
        viewEndDate.innerText = endDDate;
        viewStartTime.innerText = startTTime;
        viewEndTime.innerText = endTTime;

        console.log("viewstartDate : " + startDDate);
        console.log("viewendDate : " + endDDate);
        console.log("viewstartTime : " + startTTime);
        console.log("viewEndTime : " + endTTime);
        
        

        if (data.scheduleType == 10) {
            viewScheduleType.innerText = '개인 일정';
            viewDeleteButton.style.display = 'inline-flex';
            viewEditButton.style.display = 'inline-flex';
            viewEventDescription.style.display = 'block';
            // if(data.endDate == ''){
            //     viewEndDate.style.display = 'none';
            //     console.log("viewenddate is ''");
            // }else{
            //     viewEndDate.style.display = 'inline-flex';
            //     console.log("viewenddate is not ''");
            // }
        } else if (data.scheduleType == 11) {
            viewScheduleType.innerText = '팀 일정';
            viewDeleteButton.style.display = 'inline-flex';
            viewEditButton.style.display = 'inline-flex';
            viewEventDescription.style.display = 'block';
            // if(data.endDate == ''){
            //     viewEndDate.style.display = 'none';
            //     console.log("viewenddate is ''");
            // }else{
            //     viewEndDate.style.display = 'inline-flex';
            //     console.log("viewenddate is not ''");
            // }        
        } else if (data.scheduleType == 12) {
            viewScheduleType.innerText = '출근';
            viewDeleteButton.style.display = 'none';
            viewEditButton.style.display = 'none';
            viewEventDescription.style.display = 'none';
            viewEndDate.innerText = ' - - ';
            console.log("출근 날짜 데이터 : " + viewEndDate);
            viewEndTime.innerText = ' : : ';
            console.log("출근 시간 데이터 : " + viewEndTime);
        } else if (data.scheduleType == 13) {
            viewScheduleType.innerText = '퇴근';
            viewDeleteButton.style.display = 'none';
            viewEditButton.style.display = 'none';
            viewEventDescription.style.display = 'none';
        } else if (data.scheduleType == 14) {
            viewScheduleType.innerText = '연차';
            viewDeleteButton.style.display = 'none';
            viewEditButton.style.display = 'none';
            viewEventDescription.style.display = 'block';
            // if(data.endDate == ''){
            //     viewEndDate.style.display = 'none';
            //     console.log("viewenddate is ''");
            // }else{
            //     viewEndDate.style.display = 'inline-flex';
            //     console.log("viewenddate is not ''");
            // }        
        } else if (data.scheduleType == 15) {
            viewScheduleType.innerText = '휴무';
            viewDeleteButton.style.display = 'none';
            viewEditButton.style.display = 'none';
            viewEventDescription.style.display = 'block';
            // if(data.endDate == ''){
            //     viewEndDate.style.display = 'none';
            //     console.log("viewenddate is ''");
            // }else{
            //     viewEndDate.style.display = 'inline-flex';
            //     console.log("viewenddate is not ''");
            // }
        } else {
            viewScheduleType.innerText = '--'; // 기본적으로 지정된 값이 없을 경우 '--'를 표시합니다.
        }
        // viewScheduleType.innerText = data.scheduleType ? data.scheduleType : '--';

    }

    // Handle delete event
    const handleDeleteEvent = () => {
        viewDeleteButton.addEventListener('click', e => {
            e.preventDefault();
            console.log(calendar);
            console.log(data.id);

            Swal.fire({
                text: "정말 해당 일정을 삭제하시겠습니까?",
                icon: "warning",
                showCancelButton: true,
                buttonsStyling: false,
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, return",
                customClass: {
                    confirmButton: "btn btn-primary",
                    cancelButton: "btn btn-active-light"
                }
            }).then(function (result) {
                if (result.value) {

                    // calendar.getEventById(data.id).remove();
                    // location.href="/employee/schedule/delete?sch_idx="+data.id;

                    $.ajax({
                        type:'post',
                        url:'/employee/delete.ajax',
                        data:{'sch_idx' : data.id},
                        dataType:'JSON',
                        success:function(data){
                            console.log(data,"번 일정 삭제");
                            location.href="/employee/home";
                        },
                        error:function(e){
                            console.log(e);
                        }
                    });


                    console.log("del",data.id);
                    console.log("del",calendar);

                    viewModal.hide(); // Hide modal				
                } else if (result.dismiss === 'cancel') {
                    Swal.fire({
                        text: "Your event was not deleted!.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-primary",
                        }
                    });
                }
            });
        });
    }

    // Handle edit button
    const handleEditButton = () => {
        viewEditButton.addEventListener('click', e => {
            e.preventDefault();

            viewModal.hide();
            handleEditEvent();
        });
    }

    // Handle cancel button
    const handleCancelButton = () => {
        // Edit event modal cancel button
        cancelButton.addEventListener('click', function (e) {
            e.preventDefault();

            Swal.fire({
                text: "Are you sure you would like to cancel?",
                icon: "warning",
                showCancelButton: true,
                buttonsStyling: false,
                confirmButtonText: "Yes, cancel it!",
                cancelButtonText: "No, return",
                customClass: {
                    confirmButton: "btn btn-primary",
                    cancelButton: "btn btn-active-light"
                }
            }).then(function (result) {
                if (result.value) {
                    form.reset(); // Reset form	
                    modal.hide(); // Hide modal				
                } else if (result.dismiss === 'cancel') {
                    Swal.fire({
                        text: "Your form has not been cancelled!.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn btn-primary",
                        }
                    });
                }
            });
        });
    }

    // Handle close button
    const handleCloseButton = () => {
        // Edit event modal close button
        closeButton.addEventListener('click', function (e) {
            e.preventDefault();

            Swal.fire({
                text: "일정 등록을 취소하시겠습니까?",
                icon: "warning",
                showCancelButton: true,
                buttonsStyling: false,
                confirmButtonText: "확인",
                cancelButtonText: "취소",
                customClass: {
                    confirmButton: "btn btn-primary",
                    cancelButton: "btn btn-active-light"
                }
            }).then(function (result) {
                if (result.value) {
                    form.reset(); // Reset form	
                    modal.hide(); // Hide modal				
                } else if (result.dismiss === 'cancel') {
                    Swal.fire({
                        text: "일정 취소에 오류가 발생했습니다 잠시 후 다시 시도해주세요.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "확인",
                        customClass: {
                            confirmButton: "btn btn-primary",
                        }
                    });
                }
            });
        });
    }

    // Handle view button
    const handleViewButton = () => {
        const viewButton = document.querySelector('#kt_calendar_event_view_button');
        viewButton.addEventListener('click', e => {
            e.preventDefault();

            hidePopovers();
            handleViewEvent();
        });
    }

    // Helper functions

    // Reset form validator on modal close
    const resetFormValidator = (element) => {
        // Target modal hidden event --- For more info: https://getbootstrap.com/docs/5.0/components/modal/#events
        element.addEventListener('hidden.bs.modal', e => {
            if (validator) {
                // Reset form validator. For more info: https://formvalidation.io/guide/api/reset-form
                validator.resetForm(true);
            }
        });
    }

    // Populate form 
    const populateForm = () => {
        eventName.value = data.eventName ? data.eventName : '';
        eventDescription.value = data.eventDescription ? data.eventDescription : '';
        scheduleType.value = data.scheduleType ? data.scheduleType : '';
        // eventLocation.value = data.eventLocation ? data.eventLocation : '';
        startFlatpickr.setDate(data.startDate, true, 'Y-m-d');

        // Handle null end dates
        // const endDate = data.endDate ? data.endDate : moment(data.startDate).format();
        // endFlatpickr.setDate(endDate, true, 'Y-m-d');
        endFlatpickr.setDate(data.endDate, true, 'Y-m-d');

        // const allDayToggle = form.querySelector('#kt_calendar_datepicker_allday');
        const datepickerWrappers = form.querySelectorAll('[data-kt-calendar="datepicker"]');
        // if (data.allDay) {
        //     allDayToggle.checked = true;
        //     datepickerWrappers.forEach(dw => {
        //         dw.classList.add('d-none');
        //     });
        // } else {
            startTimeFlatpickr.setDate(data.startDate, true, 'Y-m-d H:i');
            endTimeFlatpickr.setDate(data.startDate, true, 'Y-m-d H:i');
            endFlatpickr.setDate(data.startDate, true, 'Y-m-d H:i');
            // allDayToggle.checked = false;
            datepickerWrappers.forEach(dw => {
                dw.classList.remove('d-none');
            });
        // }
    }

    // Format FullCalendar reponses
    const formatArgs = (res) => {
        data.id = res.id;
        data.eventName = res.title;
        data.eventDescription = res.description;
        data.scheduleType = res.schedule;
        data.eventLocation = res.location;
        data.startDate = res.startStr;
        data.startTime = res.startTimeStr;
        data.endTime = res.endTimeStr;
        data.endDate = res.endStr;
        data.allDay = res.allDay;
    }

    // Generate unique IDs for events
    const uid = () => {
        return Date.now().toString() + Math.floor(Math.random() * 1000).toString();
    }

    return {
        // Public Functions
        init: function () {
            // Define variables
            // Add event modal
            const element = document.getElementById('kt_modal_add_event');
            form = element.querySelector('#kt_modal_add_event_form');
            eventName = form.querySelector('[name="calendar_event_name"]');
            eventDescription = form.querySelector('[name="calendar_event_description"]');
            scheduleType = form.querySelector('[name="schedule_type"]');
            eventLocation = form.querySelector('[name="calendar_event_location"]');
            // startDatepicker = form.querySelector('#kt_calendar_datepicker_start_date');
            startDatepicker = form.querySelector('[name="event_start_date"]');
            // endDatepicker = form.querySelector('#kt_calendar_datepicker_end_date');
            endDatepicker = form.querySelector('[name="event_end_date"]');
            startTimepicker = form.querySelector('#kt_calendar_datepicker_start_time');
            endTimepicker = form.querySelector('#kt_calendar_datepicker_end_time');
            addButton = document.querySelector('[data-kt-calendar="add"]');
            submitButton = form.querySelector('#kt_modal_add_event_submit');
            cancelButton = form.querySelector('#kt_modal_add_event_cancel');
            closeButton = element.querySelector('#kt_modal_add_event_close');
            modalTitle = form.querySelector('[data-kt-calendar="title"]');
            modal = new bootstrap.Modal(element);

            // View event modal
            const viewElement = document.getElementById('kt_modal_view_event');
            viewModal = new bootstrap.Modal(viewElement);
            viewEventName = viewElement.querySelector('[data-kt-calendar="event_name"]');
            viewAllDay = viewElement.querySelector('[data-kt-calendar="all_day"]');
            viewEventDescription = viewElement.querySelector('[data-kt-calendar="event_description"]');
            viewScheduleType = viewElement.querySelector('[data-kt-calendar="schedule_type"]');
            viewEventLocation = viewElement.querySelector('[data-kt-calendar="event_location"]');
            viewStartDate = viewElement.querySelector('[data-kt-calendar="event_start_date"]');
            viewStartTime = viewElement.querySelector('[data-kt-calendar="event_start_time"]');
            viewEndDate = viewElement.querySelector('[data-kt-calendar="event_end_date"]');
            viewEndTime = viewElement.querySelector('[data-kt-calendar="event_end_time"]');
            viewEditButton = viewElement.querySelector('#kt_modal_view_event_edit');
            viewDeleteButton = viewElement.querySelector('#kt_modal_view_event_delete');

            initValidator();
            initDatepickers();
            handleEditButton();
            handleAddButton();
            handleDeleteEvent();
            handleCancelButton();
            handleCloseButton();
            resetFormValidator(element);
        }
    };
}();

// On document ready
KTUtil.onDOMContentLoaded(function () {
    KTAppCalendar.init();
});
