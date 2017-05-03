head = ":autocmd FileType python     :iabbrev <leader>self "

import sys 
try:
    fileName = sys.argv[1]
except:
    print "please give the file name"
    raise Exception

fh = open(fileName, 'r')
lines = fh.readlines()
lines =[x.rstrip() for x in lines]
fh.close()

for i in lines:

    head += i
    head += "<enter><esc>i"

print head

fh = open("generateVim.txt", 'w')

i = 0
while i < len(head):
    j = head[i]


    fh.write(j)
    i += 1

fh.close()
