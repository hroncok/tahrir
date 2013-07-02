<%inherit file="master.mak"/>
<div class="page">
	<div class="grid-100">
		<h1 class="section-header">Profile</h1>
	</div>

	<div class="clear"></div>

	<!-- COLUMN 1 (Left)-->
	<div class="grid-25">
		<table>
			<tr><td>${self.functions.avatar_thumbnail(user, 64, 33)}</td>
			<td><strong>${user.nickname}</strong></td></tr>
			<tr><td>Email</td><td>
			% if user.email:
				${user.email}
			% else:
				<span class="weak">None.</span>
			% endif
			</td></tr>
			<tr><td>Website</td><td>
			% if user.website:
				${user.website}
			% else:
				<span class="weak">None.</span>
			% endif
			</td></tr>
			<tr><td>Bio</td><td>
			% if user.bio:
				${user.bio}
			% else:
				<span class="weak">None.</span>
			% endif
			</td></tr>
		</table>
	</div>
	<!-- COLUMN 2 (Right)-->
	<div class="grid-50">
		<h3>Badges Earned</h3>
		<div class="grid-container">
		% for i, badge in enumerate(user_badges):
			% if i % 3 == 0:
		</div>
		<div class="grid-container">
			% endif
			${self.functions.badge_thumbnail(badge, 64, 25)}
		% endfor
		</div>
	</div>
    
	<div class="clear spacer"></div>
</div>
