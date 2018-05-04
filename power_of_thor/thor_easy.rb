STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

# light_x: the X position of the light of power
# light_y: the Y position of the light of power
# initial_tx: Thor's starting X position
# initial_ty: Thor's starting Y position
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}

# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    x_dir = ""
    if @light_x > @initial_tx 
        x_dir = "E"
        @initial_tx = @initial_tx + 1
    elsif @light_x < @initial_tx
        x_dir = "W"
        @initial_tx = @initial_tx - 1
    else
        x_dir = ""
    end

    y_dir = ""
    if @light_y > @initial_ty 
        y_dir = "S"
        @initial_ty = @initial_ty + 1
    elsif @light_y < @initial_ty
        y_dir = "N"
        @initial_ty = @initial_ty - 1
    else
        y_dir = ""
    end

    # A single line providing the move to be made: N NE E SE S SW W or NW
    puts y_dir + x_dir
end