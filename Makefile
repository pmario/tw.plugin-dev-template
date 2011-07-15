# Start at a Makefile or managing build activities.
# Expects a 'cook' script somewhere on the $PATH.
# See 'cook' in this directory for a sample you can use.
# For now users the OSX specific "open" to run a test file. This
# will need to change.
#
# create a file OPEN_COMMAND and add:
# gnome-open  .. if you use ubuntu gnome OR
# open .. if you use OSX

OPEN=`cat OPEN_COMMAND`

clean:
	rm *.html || true
	rm *.jar || true
	rm *.js || true

upstream: clean upstream.html
	$(OPEN) upstream.html

test: clean tests.html
	$(OPEN) tests.html
	
tests.html:
	cook $(PWD)/tests.html.recipe tests.html

upstream.html: 
	cook $(PWD)/upstream.html.recipe upstream.html

