.PHONY: kreuung-ching

kreuung-ching:
	rsync --delete -ratv $(ROOT)/kreuung-ching/app/platforms/browser/www/ kreuung-ching/
