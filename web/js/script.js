$(document).ready (function()
{
	$(".menu-icon").click(function()
	{
		$(".top-header-mob-wrapper").slideToggle(300);
	});

	$(".catalog-menu-icon").click(function()
	{
		$(".bottom-header-mob-wrapper").slideToggle(300);
	});

	$('#request-submit').click(function()
	{
		$('#request-submit-container').css('display', 'none');
		$('#request-loading-container').css('display', 'block');

		$.ajax({
			type: 'POST',
			url: '/php/requesthandler.php',
			data: {
				name: $('#request-name').val(),
				phone: $('#request-phone-number').val(),
				email: $('#request-email').val(),
				message: $('#request-message').val(),
			},
			success: function(response)
			{
				let responseMessage = '';
				if (response == 'Mailing')
				{
					responseMessage = 'Спасибо, нам не нужна рассылка!';
				}
				if (response == 'Success')
				{
					responseMessage = 'Ваш запрос успешо отправлен!';
				}
				if (response == 'Wrong data')
				{
					responseMessage = 'Введите верные номер телефона или емейл!';
				}
				if (response == 'Empty message')
				{
					responseMessage = 'Сообщение не может быть пустым!';
				}
				if (response == 'Empty message and wrong data')
				{
					responseMessage = 'Сообщение не может быть пустым!<br>Введите верные номер телефона или емейл!';
				}
				$('#request-response').html(responseMessage);
				$('#request-loading-container').css('display', 'none');
				$('#request-submit-container').css('display', 'block');
				if (response == 'Mailing' || response == 'Success')
				{
					$('#request-name').val("");
					$('#request-phone-number').val("");
					$('#request-email').val("");
					$('#request-message').val("");
					$('#request-form-container').css('display', 'none');
					setTimeout ('$("#request-response").html(""), $("#request-form-container").css("display", "block")', 6000);
				}
			},
			error: function (response)
			{
				console.log(response);
				$('#request-response').html('Ошибка!');
				$('#request-loading-container').css('display', 'none');
				$('#request-submit-container').css('display', 'block');
				$('#request-form-container').css('display', 'none');
				setTimeout ('$("#request-response").html(""), $("#request-form-container").css("display", "block")', 4000);
			}
		});
	});
});

function checkParams()
{
	let name = $('#request-name').val();
	let phone = $('#request-phone-number').val();
	let email = $('#request-email').val();
	let message = $('#request-message').val();

	if (name.length != 0 && (email.length >= 6 || phone.length >= 10) && message.length != 0)
	{
		$('#request-submit').removeAttr('disabled');
	} else {
		$('#request-submit').attr('disabled', 'disabled');
	}
}

$(".crop-img").click(function() {
	$("#mainImg").attr('src', $(this).attr('src'));
});
