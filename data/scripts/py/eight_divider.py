from pathlib import Path

name=input('Palette name (exclude .hex extension): ')
with open('{0}/{1}.hex'.format(Path(__file__).parent, name), 'r') as pal:
    pal_lines: list=pal.read().splitlines()
    pal_new: list=[]
    for line in pal_lines:
        col=int(line, 16)
        r, g, b=col>>16, (col&(0x00ff00))>>8, col&(0x0000ff)
        if(col!=0xffffff and col!=0x00ff00):
            r//=8
            g//=8
            b//=8
            r*=8
            g*=8
            b*=8
        col_new=(r<<16)|(g<<8)|b
        pal_new.append('{:06x}'.format(col_new))
    with open('{0}/{1}_5bit.hex'.format(Path(__file__).parent, name), 'w+') as pal_5bit:
        pal_5bit.write('\n'.join(pal_new))