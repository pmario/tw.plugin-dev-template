# Start at a Makefile or managing build activities.
# Expects a 'cook' script somewhere on the $PATH.
# See 'cook' in this directory for a sample you can use.
# For now users the OSX specific "open" to run a test file. This
# will need to change.
#

clean:
	rm *.html || true
	rm *.jar || true
	rm *.js || true

upstream: clean upstream.html
	open upstream.html

test: clean tests.html
	open tests.html
	
tests.html:
	cook $(PWD)/tests.html.recipe tests.html

upstream.html: 
	cook $(PWD)/upstream.html.recipe upstream.html

