K?="report"
D?=02
EX?=10

all: push

push:
	git add ex*/
	git commit -m $(K)
	git push origin develop

dirs:
	number=0 ; while [[ $$number -le $$EX ]] ; do \
	NUM=$$(printf "%02d" $$number); \
	mkdir ex$$NUM ; \
	touch ex$$NUM/day$(D)_ex$$NUM.sql ;\
	((number = $$number + 1)) ; \
	done
# clean:
# 	rm -rf ex*
