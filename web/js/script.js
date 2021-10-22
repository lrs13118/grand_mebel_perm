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
		$redirectPage = $('#backurl').val();
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
					if ($redirectPage == '')
					{
						window.location.replace("/pages/admin/index.php");
					} else {
						window.location.replace($redirectPage);
					}
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
			dataType: 'json',
			data: {
				title: $('#edit-constant-title').val(),
				logo: $('#edit-constant-logo').val(),
				address: $('#edit-constant-address').val(),
				working_hours: $('#edit-constant-working-hours').val(),
				instagram_link: $('#edit-constant-instagram-link').val(),
				instagram: $('#edit-constant-instagram').val(),
				vk_link: $('#edit-constant-vk-link').val(),
				email: $('#edit-constant-email').val(),
				admin_email: $('#edit-constant-admin-email').val(),
				phone_irina: $('#edit-constant-phone-irina').val(),
				phone_kristina: $('#edit-constant-phone-kristina').val(),
			},
			success: function(response)
			{
				if (response.status == 'success')
				{
					$('#edit-constants-response').html(response.text);
					$('#edit-constants-loading-container').css('display', 'none');
					$('#edit-constants-submit-container').css('display', 'block');
					setTimeout('$("#edit-constants-response").html("")', 4000);
				}

				if (response.status == 'error')
				{
					$('#edit-constants-response').html(response.text);
					$('#edit-constants-loading-container').css('display', 'none');
					$('#edit-constants-submit-container').css('display', 'block');
				}
			},
			error: function (response)
			{
				console.log(response);
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
				$('#edit-product-loading-container').css('display', 'none');
				$('#edit-product-submit-container').css('display', 'block');

				if (response.status == 'success')
				{
					$('#edit-product-response').html(response.text);
					setTimeout ('$("#edit-product-response").html("")', 6000);
				}

				if (response.status == 'error')
				{
					$('#edit-product-response').html(response.error);
					setTimeout ('$("#edit-product-response").html("")', 6000);
				}
			},
			error: function (response)
			{
				console.log(response);
				$('#edit-product-response').html('Ошибка при сохранении данных');
				setTimeout ('$("#edit-product-response").html("")', 6000);
			}
		});
	});

	$("#edit-product-main-cat").on('change', function()
	{
		let mainCatId = this.value;
		let catSelect = $("#edit-product-cat");
		let catContainer = $("#edit-product-cat-container");
		let podCatContainer = $("#edit-product-prod-cat-container");

		$('#kitchens-container').addClass('hidden');
		$('.edit-product-price').val('0')
		if (mainCatId == '2')
		{
			$('#softfurniture-container').removeClass('hidden');
		} else {
			$('#softfurniture-container').addClass('hidden');
			$('#edit-product-folding-mechanism-not-selected-option').prop('selected', true);
			$('#edit-product-filling').val('');
			$('#edit-product-metal-frame').prop('checked', false);
			$('#edit-product-removable-case').prop('checked', false);
			$('#edit-product-angle-universal').prop('checked', false);
			$('#edit-product-niche-under-taundry').prop('checked', false);
			$('#edit-product-wallpaper-protection').prop('checked', false);
			$('#edit-product-adjustable-headrests').prop('checked', false);
			$('#edit-product-backrest-positions').prop('checked', false);
		}

		if (mainCatId == '' || mainCatId == 41)
		{
			catContainer.addClass("hidden");
			podCatContainer.addClass("hidden");
		} else {
			$.ajax({
				type: 'POST',
				url: '/php/get-product-categories.php',
				dataType: 'json',
				data: {
					data_type: 'cat',
					main_cat_id: mainCatId,
				},
				success: function(data)
				{
					catSelect.empty();

					let optionNotSelected = $('<option>', {'for': 'edit-product-cat', 'value': 0, 'selected': 'selected', text: 'Не выбрано'});

					catSelect.append(optionNotSelected);

					let length = Object.keys(data).length;
					for (let i = 0;i < length; i++)
					{
						let option = $('<option>', {'for': 'edit-product-cat', 'value': data[i]['id'], text: data[i]['title']});
						catSelect.append(option);
					}

					catContainer.removeClass("hidden");
					podCatContainer.addClass("hidden");
				},
				error: function (response)
				{
					console.log(response);
				}
			});
		}
	});

	$("#edit-product-cat").on('change', function()
	{
		let catId = this.value;
		let podCatSelect = $("#edit-product-prod-cat");
		let podCatContainer = $("#edit-product-prod-cat-container");

		if (catId == '10')
		{
			$('#kitchens-container').removeClass('hidden');
		} else {
			$('#kitchens-container').addClass('hidden');
		}

		$.ajax({
			type: 'POST',
			url: '/php/get-product-categories.php',
			dataType: 'json',
			data: {
				data_type: 'prod_cat',
				cat_id: catId,
			},
			success: function(data)
			{
				let length = Object.keys(data).length;
				if (length > 0)
				{
					podCatContainer.removeClass("hidden");

					podCatSelect.empty();

					let optionNotSelected = $('<option>', {'for': 'edit-product-prod-cat', 'value': 0, 'selected': 'selected', text: 'Не выбрано'});

					podCatSelect.append(optionNotSelected);

					for (let i = 0;i < length; i++)
					{
						let option = $('<option>', {'for': 'edit-product-prod-cat', 'value': data[i]['id'], text: data[i]['title']});
						podCatSelect.append(option);
					}

					podCatContainer.removeClass("hidden");
				} else {
					podCatContainer.addClass("hidden");
				}
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

function processedRequest(id)
{
	let processedRequestValue = Number($('#request-status-' + id).prop('checked'));

	$.ajax({
		type: 'POST',
		url: '/php/processed-request.php',
		data: {
			id: id,
			processed: processedRequestValue,
		}
	});
}
