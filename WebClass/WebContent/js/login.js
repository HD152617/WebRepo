$(document).ready(function () {
	  $('#loginForm').submit(function (event) {
		  		event.preventDefault();
		  		var id= $('#id').val();
		  		var pwd= $('#pwd').val();
		  		console.log(id, pwd);
		$.post("http://httpbin.org/post",
		  				{"id":id,"pwd":pwd},
		  				function(data){
		  					var myModal = $('#myModal');
		  					myModal.modal();
		  					myModal.find('.modal-body').text(data.form.id+'님 로그인 되었습니다.');
		  				});
		  		});
  });