
function makeAjaxCall(form, successHandler, errorHandler) {
	$.ajax({
		url : $(form).attr("action"),
		data : $(form).serialize(),
		method : $(form).attr("method") ? $(form).attr("method") : "GET",
		success : successHandler,
		error : errorHandler,
		complete : function() {
			form.reset();
		}
	});
}
