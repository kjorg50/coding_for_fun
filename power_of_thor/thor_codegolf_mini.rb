a,b,c,d=gets.split.map(&:to_i)
loop{
 x=a==c ? '':(a>c ? (c+=1;'E'):(c-=1;'W'))
 y=b==d ? '':(b>d ? (d+=1;'S'):(d-=1;'N'))
 puts y+x
}