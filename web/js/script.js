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

	$(".crop-img").click(function() {
		$("#mainImg").attr('src', $(this).attr('src'));
	});

	$('#auth-submit').click(function()
	{
		$('#auth-submit-container').css('display', 'none');
		$('#auth-loading-container').css('display', 'block');

		$.ajax({
			type: 'POST',
			url: '/php/login.php',
			data: {
				login: $('#auth-login').val(),
				password: $('#auth-password').val(),
			},
			success: function(response)
			{
				if (response == 'Success')
				{
					window.location.replace("/pages/admin/index.php");
				}

				let responseMessage = '';
				if (response == 'Wrong data')
				{
					responseMessage = 'К сожалению, вы неправильно ввели логин или пароль! Попробуйте еще раз!';
					$('#auth-response').html(responseMessage);
					$('#auth-loading-container').css('display', 'none');
					$('#auth-submit-container').css('display', 'block');
				}
			},
			error: function (response)
			{
				console.log(response);
				$('#auth-response').html('Ошибка!');
				$('#auth-loading-container').css('display', 'none');
				$('#auth-submit-container').css('display', 'block');
			}
		});
	});

	$('#log-out').click(function()
	{
		$.ajax({
			type: 'POST',
			url: '/php/log-out.php',
			success: function(response)
			{
				if (response == 'Success')
				{
					if (window.location.pathname == '/pages/admin/index.php')
					{
						window.location.replace("/pages/admin/auth.php");
					} else {
						window.location.reload();
					}
				}
			},
		});
	});

    $('#edit-constants-submit').click(function()
	{
		$('#edit-constants-submit-container').css('display', 'none');
		$('#edit-constants-loading-container').css('display', 'block');

		$.ajax({
			type: 'POST',
			url: '/php/save-constants.php',
			data: {
				content: $('#constants-file-content').val(),
			},
			success: function(response)
			{
				if (response == 'Success')
				{
					window.location.reload();
				}

				let responseMessage = '';
				if (response == 'Empty')
				{
					responseMessage = 'Файл не может быть пустым';
					$('#edit-constants-response').html(responseMessage);
					$('#edit-constants-loading-container').css('display', 'none');
					$('#edit-constants-submit-container').css('display', 'block');
				}
			},
			error: function (response)
			{
				$('#edit-constants-response').html('Ошибка!');
				$('#edit-constants-loading-container').css('display', 'none');
				$('#edit-constants-submit-container').css('display', 'block');
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

function checkLoginParams()
{
	let login = $('#auth-login').val();
	let password = $('#auth-password').val();

	if (login.length != 0 && password.length != 0)
	{
		$('#auth-submit').removeAttr('disabled');
	} else {
		$('#auth-submit').attr('disabled', 'disabled');
	}
}

function editActive(id)
{
	let productActiveValue = Number($('#product-active-' + id).prop('checked'));

	$.ajax({
		type: 'POST',
		url: '/php/edit-product-active.php',
		data: {
			id: id,
			active: productActiveValue,
		}
	});
}
