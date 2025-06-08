K:="report"
D:=00
EX:=9

all: push 

push:
	git add ex*/ 
	git commit -m "$(K)"
	git push origin develop

dirs:
	@number=0 ; while [ $$number -le $(EX) ] ; do \
		NUM=$$(printf "%02d" $$number); \
		mkdir -p ex$$NUM ; \
		touch ex$$NUM/day$(D)_ex$$NUM.sql ; \
		number=$$((number + 1)) ; \
	done