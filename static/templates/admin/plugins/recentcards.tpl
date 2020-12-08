<div class="row">
	<div class="col-lg-9">
		<div class="panel panel-default">
			<div class="panel-heading">Derniers Sujets</div>
			<div class="panel-body">
				<form role="form" id="recentcards">
					<div class="form-group">
						<div class="checkbox">
							<label for="enableCarousel">
								<input type="checkbox" data-key="enableCarousel" id="enableCarousel" name="enableCarousel" />
								Activer le mode Carousel
							</label>
						</div>

						<div class="checkbox">
							<label for="enableCarouselPagination">
								<input type="checkbox" data-key="enableCarouselPagination" id="enableCarouselPagination" name="enableCarouselPagination" />
								Activer la pagination pour le carrousel
							</label>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="panel panel-default">
			<div class="panel-heading">Panneau de configuration</div>
			<div class="panel-body">
				<button class="btn btn-primary" id="save">Sauvegarder</button>
			</div>
		</div>
	</div>
</div>

<script>
require(['settings'], function(settings) {

	settings.sync('recentcards', $('#recentcards'));

	$('#save').click( function (event) {
		settings.persist('recentcards', $('#recentcards'), function(){
			socket.emit('admin.settings.syncRecentCards');
			app.alertSuccess('Veuillez redémarrer votre forum pour valider les modifications.');
		});
	});
});
</script>