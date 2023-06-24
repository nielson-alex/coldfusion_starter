<cfparam name="url.q" default=1 />
<cfset question=" , What is your name?, What is your age?, What is your profession?" />
<cfset fromUrl=ListGetAt(question, url.q) />

<cfoutput>
	<ul>
		<li><a href="/MyTestSite/?q=2">What is your name?</a></li>
		<li><a href="/MyTestSite/?q=3">What is your age?</a></li>
		<li><a href="/MyTestSite/?q=4">What is your profession?</a></li>
	</ul>
		<button id="btn">Click Me</button>
	<br />
	<script>
		function myFunc() {
			console.log(fromUrl);
		}

		document.getElementById("btn").addEventListener("click", myFunc);
	</script>
	The user asked for the question : <strong>#fromUrl#</strong>
</cfoutput>

