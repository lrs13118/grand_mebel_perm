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

    $('#edit-product-submit').click(function()
	{
		$('#edit-product-submit-container').css('display', 'none');
		$('#edit-product-loading-container').css('display', 'block');

		let images = {
			main_img: $('input[id="img-mainImg"]').val(),
			img_0: $('input[id="img-0"]').val(),
			img_1: $('input[id="img-1"]').val(),
			img_2: $('input[id="img-2"]').val(),
		}

		$.ajax({
			type: 'POST',
			url: '/php/edit-product.php',
			dataType: 'json',
			data: {
				product_id: $('#product-id').val(),
				main_img: $('input[name="img"]:checked').val(),
				images: images,
				active: Number($('#edit-product-active').prop('checked')),
				main_cat: $('#edit-product-main-cat').val(),
				cat: $('#edit-product-cat').val(),
				pod_cat: $('#edit-product-pod-cat').val(),
				title: $('#edit-product-title').val(),
				price: $('#edit-product-price').val(),
				maker: $('#edit-product-maker').val(),
				height: $('#edit-product-height').val(),
				width: $('#edit-product-width').val(),
				depth: $('#edit-product-depth').val(),
				other_dimensions: $('#edit-product-other-dimensions').val(),
				description: $('#edit-product-description').val(),
				additionally: $('#edit-product-additionally').val(),
				folding_mechanism: $('#edit-product-folding-mechanism').val(),
				filling: $('#edit-product-filling').val(),
				metal_frame: Number($('#edit-product-metal-frame').prop('checked')),
				removable_case: Number($('#edit-product-removable-case').prop('checked')),
				angle_universal: Number($('#edit-product-angle-universal').prop('checked')),
				niche_under_taundry: Number($('#edit-product-niche-under-taundry').prop('checked')),
				wallpaper_protection: Number($('#edit-product-wallpaper-protection').prop('checked')),
				adjustable_headrests: Number($('#edit-product-adjustable-headrests').prop('checked')),
				backrest_positions: Number($('#edit-product-backrest-positions').prop('checked')),
				price0: $('#edit-product-price0').val(),
				price1: $('#edit-product-price1').val(),
				price2: $('#edit-product-price2').val(),
				price3: $('#edit-product-price3').val(),
			},
			success: function(response)
			{
				console.log(response);

				$('#edit-product-loading-container').css('display', 'none');
				$('#edit-product-submit-container').css('display', 'block');
			},
			error: function (response)
			{
				console.log(response);
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
