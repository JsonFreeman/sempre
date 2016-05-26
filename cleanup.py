import fileinput, re
listline = []
toke = []
count = -1
parsed = 0
for line in fileinput.input():
    if line.replace(' ','')[0:4] == 'iter':
        count += 1
        listline.append(toke)
        print(toke[1][21:-2])
        if 'Pred' in toke[13]:
            print('Parsed!!: ', re.findall('\(value \(string "(.*)"\)\)',toke[13])[0])
            parsed += 1
        else:
            print("Unparsed...")
        toke = [line]
        print("Processed: {} Parsed: {}\n".format(count,parsed))
    else:
        toke.append(line)
    

