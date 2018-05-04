STDOUT.sync = true # DO NOT REMOVE
# Solve this puzzle by writing the shortest code.
# Whitespaces (spaces, new lines, tabs...) are counted in the total amount of chars.
# These comments should be burnt after reading!

# lx: the X position of the light of power
# ly: the Y position of the light of power
# tx: Thor's starting X position
# ty: Thor's starting Y position
@lx, @ly, @tx, @ty = gets.split(" ").collect {|x| x.to_i}

# game loop
loop{
 r=gets.to_i
 x = @lx == @tx ? '' : (@lx > @tx ? (@tx+=1; 'E') : (@tx-=1; 'W'))
 y = @ly == @ty ? '' : (@ly > @ty ? (@ty+=1; 'S') : (@ty-=1; 'N'))
 puts y+x
}