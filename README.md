<h1> Thank you letter generator - README </h1>
<h2> Version 1.0: June 8, 2016 </h2>

<p>-This is a very simple application, designed to make writing thank you letters a bit less tedious.
<br>
-There are five types of models in this version: </p>
<ul>
	<li>user</li>
	<li>letter</li>
	<li>greeting</li>
	<li>body</li>
	<li>closing</li>
</ul>
<p>-The form to create a letter will prompt a user to choose a greeting (either from the preset list, or one that they create), body, and closing. They will also input a 'to_name' so the app knows who to address the letter to, and specify a letter type, to make sorting easier (sorting will be available in future releases.)</p>
<p>-The project comes with a seed file, with several greeting, body, and closing examples to choose from. Just use rake db:seed if you'd like to include the examples on the 'new_letter' page.</p>
<p>-For the next version, I'm working on implementing AJAX calls to enable users to preview letters on the 'new_letter' page. In the mean time, the app's basic functions work. You can create greetings, bodies, closings, and ultimately letters. You can view saved letters on the letters index page, and delete any that you don't want to keep (I didn't see a need for individual show pages).</p>
<p>-I created this app as part of a goal of mine to create some simple, yet useful programs that I could add to my portfolio. My hope is that although the site is not super complicated, it can still be used to save people time and make routines more efficient. I hope you enjoy it!</p>

