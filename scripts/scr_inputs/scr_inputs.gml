/// @description Checks if the left key is held
/// @returns {Bool}
function left_held() {
	return keyboard_check(vk_left)
}
/// @description Checks if the left key is held
/// @returns {Real} Returns 1 if so, else return 0
function left_held_i() {
	return left_held() ? 1 : 0
}

/// @description Checks if the right key is held
/// @returns {Bool}
function right_held() {
	return keyboard_check(vk_right)
}
/// @description Checks if the right key is held
/// @returns {Real} 1 if the key is held, else return 0
function right_held_i() {
	return right_held() ? 1 : 0
}

/// @description Checks if the up key is held
/// @returns {Bool}
function up_held() {
	return keyboard_check(vk_up)
}
/// @description Checks if the up key is held
/// @returns {Real} 1 if the key is held, else return 0
function up_held_i() {
	return up_held() ? 1 : 0
}

/// @description Checks if the down key is held
/// @returns {Bool}
function down_held() {
	return keyboard_check(vk_down)
}
/// @description Checks if the down key is held
/// @returns {Real} 1 if the key is held, else return 0
function down_held_i() {
	return down_held() ? 1 : 0
}