# $< is the name of the prerequisite (.scad)
# $@ is the name of the target (.stl/.png/.gif)
# % matches any nonempty string

# given an stl target, it has a scad file with the same name as a prerequisite
%.stl: %.scad
	@# simply export the stl model
	openscad $< -o $@


%.png: %.scad
	@# export an image in high res to keep details
	openscad --autocenter --viewall --imgsize=10000,10000 --colorscheme DeepOcean $< -o $@
	@# resize the image ("antialiasing filter", instead of directly exporting a smaller image)
	convert $@ -resize 10% $@


%.gif: %.scad
	@# create a temporary directory for storing frames of the gif
	mkdir tmp/
	@# export one image (frame) every two degrees of camera angle
	iter=1; while [[ iter -le 180 ]]; do \
		degrees=$$(( iter * 2 )); \
		openscad -o tmp/frame_$$(printf "%03d" $$iter).png $< --autocenter --viewall --camera=0,0,0,60,0,$$degrees,0 --colorscheme DeepOcean ; \
		((iter = iter + 1)) ; \
	done
	@# generate the gif by appending the frames
	convert -delay 0.05 -loop 0 tmp/frame_*.png $@
	@# delete the temporary directory
	rm -rf tmp/


clean:
	@# delete all the files previously generated through make
	rm -f *.stl *.png *.gif

