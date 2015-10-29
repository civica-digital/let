import os, sys
from PIL import Image

size = 300, 300
folder = sys.argv[1:]

for infile in os.listdir(sys.argv[1]):
    infile = sys.argv[1] + infile
    outfile = os.path.splitext(infile)[0] + "-tb.jpg"
    if infile != outfile:
        try:
            im = Image.open(infile)
            im.thumbnail(size)
            im.save(outfile, "JPEG")
        except IOError:
            print "cannot create thumbnail for", infile
