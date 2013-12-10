$(function() {
	var $voto = $('.voto');

	$voto.on('ajax:beforeSend', function() {
		$(this).find('input').attr('disabled', true);
	});

	$voto.on('ajax:error', function() {
		replaceButton(this, 'icon-remove', '#B94A48');
	});

	$voto.on('ajax:success', function() {
		replaceButton(this, 'icon-ok', '#468847');
	});

	function replaceButton(container, icon_class, color) {
		$(container).find('input:submit').replaceWith($('<i/>').addClass(icon_class).css('color', color));
	};
});