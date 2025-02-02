.PHONY: success should-pass should-fail

success:
	echo OK  # this line will run normally

should-pass:
	cat unexisting.txt
	echo GOOD  # this line won't(!!!) run, since as far as `make` is concerned - the above line failed

should-fail:
	cat unexisting.txt
	echo BAD  # shouldn't reach this line

extra:
	echo EXTRA
