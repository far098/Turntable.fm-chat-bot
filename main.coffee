###
 main.coffee

 Loader.
###


load = (imports) ->
	[first, rest] = [imports[0], imports[1..imports.length]]
	$.getScript(first, ->
		load(rest) if rest
	)


libs = [
	'http://cdnjs.cloudflare.com/ajax/libs/datejs/1.0/date.min.js'
	'https://www.google.com/jsapi'
]

code = [
	'jquery.mousewheel.min.js'
	'config.js'
	'util.js'
	'ttextend.js'
	'ttbot.js'
	'ui.js'
]

codePath = 'http://localhost/'

codeImports = (codePath + c for c in code)
libs.push c for c in codeImports
load(libs)
