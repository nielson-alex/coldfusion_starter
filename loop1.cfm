<cfset questionList=" , What is your name?, What is your age?, What is your profession?" />
<cfset answerList=" , Alex, 33, Web Developer" />
<cfparam name="url.q" default=" " type="any" />
<cfset fromUrl=#ListContains(questionList, url.q)# />

<cfoutput>
  Q : <strong>#ListGetAt(questionList, fromUrl)#</strong>
  A : <strong>#ListGetAt(answerList, fromUrl)#</strong>
</cfoutput>

<cfoutput>
  <ul>
    <cfloop list="#questionList#" index="iQuestion">
      <li key="#iQuestion#">
        <a href="?q=#iQuestion#">#iQuestion#</a>
      </li>
    </cfloop>
  </ul>
</cfoutput>
