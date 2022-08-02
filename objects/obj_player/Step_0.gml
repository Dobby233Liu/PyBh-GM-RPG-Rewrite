// Calculate x/y direction (can be -1, 0 or 1)
/*
 (How to read this totally useful
  comment
  corners: (xspd, yspd)
  edges:   x/yspd depending on axis)

               up 0-1
                 ^
                 |
    up-left      |     up-right
     0-1 0-1 \   |   / 1-0 0-1
               \ | /
                \|/
0-1 left <-----     -----> right 1-0
                /|\   x
               / | \
      down-l /   |   \ down-r
     0-1 1-0     |     1-0 0-1
                 | y
             down 1-0

    left+right or up+down = 1-1
        = 0 (cancel)
*/
var xdir = right_held_i() - left_held_i()
var ydir = down_held_i() - up_held_i()
// No direction angle math? [Megamind frown]

// Determine facing
if (xdir != 0) // Are we moving left/right?
    cur_facing = xdir < 0 ? ANIM_FACING_LEFT : ANIM_FACING_RIGHT
if (ydir != 0) // Are we moving up/down?
    cur_facing = ydir < 0 ? ANIM_FACING_UP : ANIM_FACING_DOWN

// Calculate x/y speed
var xspd = xdir * movement_speed
var yspd = ydir * movement_speed

// Check collision
// Are we hitting a wall at x axis if we move x at xspd?
if place_meeting(x + xspd, y, obj_wall) {
    // Don't move x at xspd so we don't run into a wall
    xspd = 0
}
// Are we hitting a wall at y axis if we move y at yspd?
if place_meeting(x, y + yspd, obj_wall) {
    // Don't move y at yspd so we don't run into a wall
    yspd = 0
}

// Add speed to position
x += xspd
y += yspd

// Set sprite based on facing
sprite_index = facing_sprites[cur_facing]

// Animate
if (xdir != 0 || ydir != 0) {
    if (image_speed == 0)
        image_index = 0
    image_speed = 1
} else {
    image_speed = 0
    image_index = 0
}