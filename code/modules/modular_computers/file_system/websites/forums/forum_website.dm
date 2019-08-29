

/datum/website/forums/on_access()
	forum_generate_content()
	..()


/datum/website/forums/proc/forum_generate_content()

	//HEADER

	content += "<table width=\"100%\" cellspacing=\"5\" cellpadding=\"5px\" style=\"height: 64px; color: white; background-color: navy; width: 100%;\"> \
			<tbody><tr style=\"height: 64px;\"><td style=\"height: 64px;\"><h1 style=\"text-align: center;\">[title]</h1></td></tr></tbody> \
			</table>"


	//TOP LINKS

	content += "<h4>Register - Login - Search - Member List - View Newest Posts<br /><br /></h4>"


	//CATEGORY

	for(var/C in available_categories)
		var/list/c_posts

		for(var/list/datum/forum_thread/T in threads)
			if(T.category == C)
				c_posts += T

		content += "<table cellpadding=\"5\" style=\"height: 32px; width: 100%; background-color: grey; color: white; border-style: solid; \
		margin-left: auto; margin-right: auto;\" cellspacing=\"5\"><tbody> \
		<tr style=\"height: 32px;\"><td style=\"height: 32px;\">[C]</td> \
		</tr></tbody></table>"





/datum/website/forums/nanotrasen
	title = "NT Official Forums"
	name = "nanotrasen.gov.nt/forums"