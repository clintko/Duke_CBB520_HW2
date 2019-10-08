KEYS = ["label", "seq", "label2", "qscore"]

def stream_fastq(fpath):
    """stream over the given fastq file"""
    with open(fpath, 'r') as fp:
        ### initialization        
        dct  = dict()
        
        ### iterate through the file
        for cnt, line in enumerate(fp):
            # yield the results for every four lines and
            # reset the dictionary
            if (cnt != 0) and (cnt % 4 == 0):
                yield dct
                dct = dict()
                
            # process each line and add to a dictionary 
            idx  = cnt % 4
            key  = KEYS[idx]
            line = line.strip()
            dct[key] = line

def write_fastq(fpath, read):
    """append"""
    with open(fpath, 'a+') as fp:
        for key in KEYS:
            line = str(read[key]) + "\n"
            fp.write(line)