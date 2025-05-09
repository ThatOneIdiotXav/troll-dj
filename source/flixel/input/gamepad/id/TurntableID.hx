package flixel.input.gamepad.id;

import flixel.input.gamepad.FlxGamepadAnalogStick;

enum abstract TurntableID(Int) to Int {
	public static inline var GREEN = 6;
	public static inline var RED = 7;
	public static inline var BLUE = 8;
	public static inline var EUPHORIA = 9;
	public static inline var SELECT = 10;
	public static inline var START = 12;

	// fake bois
	public static inline var FADER_LEFT = 16;
	public static inline var FADER_RIGHT = 17;
	public static inline var EFFECT_DIAL_LEFT = 18;
	public static inline var EFFECT_DIAL_RIGHT = 19;
	public static inline var TURNTABLE_DOWN = 20;
	public static inline var TURNTABLE_UP = 21;

	/**
	 * 0: crossfader
	 * 1: unused
	 * 2: unused
	 * 3: effect dial
	 * 4: turntable
	 */
	
	// left stick
	public static var TURNTABLE_ANALOG_STICK = new FlxGamepadAnalogStick(1, 4, { // -1, 3
		left: null,
		down: TURNTABLE_DOWN,
		up: TURNTABLE_UP,
		right: null
	});

	// right stick
	public static var FADERDIAL_ANALOG_STICK = new FlxGamepadAnalogStick(3, 0, { // 2, 5
		left: EFFECT_DIAL_LEFT,
		down: FADER_LEFT,
		up: FADER_RIGHT,
		right: EFFECT_DIAL_RIGHT
	});
}
