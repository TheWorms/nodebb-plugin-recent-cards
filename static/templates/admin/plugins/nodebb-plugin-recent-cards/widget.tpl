<label>
	Categorie<br />
	<small>Définissez les ID de catégorie sur lesquels vous souhaitez afficher ce widget (séparés par des virgules)</small>
</label>
<input type="text" class="form-control" name="cid" placeholder="0" />

<label>
	Sujets de la Catégorie<br />
	<small>Définissez les ID de catégorie à partir desquels vous souhaitez extraire les sujets (séparés par des virgules)</small>
</label>
<input type="text" class="form-control" name="topicsFromCid" placeholder="0" />

<label>Sélectionnez Groupes pour afficher les sujets</label>
<select name="fromGroups" class="form-control" multiple size="10">
	<!-- BEGIN groups -->
	<option value="{groups.name}">{groups.name}</option>
	<!-- END groups -->
</select>

<label for="teaserPost">Message d'accroche</label>
<select class="form-control" id="teaserPost" name="teaserPost">
	<option value="first">Premier message</option>
	<option value="last-post">Dernier message</option>
</select>

<label for="sortBy">Trier les sujets</label>
<select class="form-control" id="sortBy" name="sort">
	<option value="create">Récemment créé</option>
	<option value="recent">Récemment répondu</option>
	<option value="posts">Messages populaires</option>
	<option value="votes">Meilleur note</option>
</select>
