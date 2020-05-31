.PHONY: kreuung-ching

kreuung-ching:
	rsync --delete -ratv $(ROOT)/kreuung-ching/app/platforms/browser/www/ kreuung-ching/

publish: kreuung-ching
	( find index.html kreuung-ching LICENSE -print0 | xargs -0 git add ) \
	&& git commit -am 'Update' && git push
