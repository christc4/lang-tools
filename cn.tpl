<h2>Pinyin</h2>
<div>
	<form action="" method="POST" enctype="multipart/form-data">
	<input type="search" name="pinyin_query" placeholder="Type 中文…" required>
	<input type="checkbox" id="search_this_directory" name="search_app_search_directory" value="search_app_search_directory">
	<label for="search_this_directory">Generate HTML <code>ruby</code>?</label><br>
	<input type="submit" value="Get pinyin">
	</form>
</div> 

% if (! ~ $"post_arg_pinyin_query '') { 

%	pinyin=`{echo $post_arg_pinyin_query | pinyin-tool}
	<p>%($"pinyin%)
% } 

<br>

% if(! ~ $#post_arg_search_app_search_directory 0){

	<pre>
%	echo '<ruby>'$post_arg_pinyin_query'<rt>'$pinyin'</rt></ruby>' | escape_html
	</pre>

% }

<h2>Chinese to English</h2>
<div>
	<form action="" method="POST" enctype="multipart/form-data">
	<input type="search" name="searching_query1" placeholder="中文 to EN" required>
	<input type="submit" value="Translate">
	</form>
</div> 

% if (! ~ $"post_arg_searching_query1 '') { 
	<pre>
%		trans -no-ansi :en "$post_arg_searching_query1" 
	</pre>
% } 

<h2>English to Chinese</h2>
<div>
	<form action="" method="POST" enctype="multipart/form-data">
	<input type="search" name="searching_query2" placeholder="EN to 中文" required>
	<input type="submit" value="Translate">
	</form>
</div> 

% if (! ~ $"post_arg_searching_query2 '') { 
	<pre>
%		trans -no-ansi :zh "$post_arg_searching_query2" 
	</pre>
% } 
