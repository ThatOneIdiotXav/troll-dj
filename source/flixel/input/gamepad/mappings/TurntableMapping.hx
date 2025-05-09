package flixel.input.gamepad.mappings;

import flixel.input.gamepad.id.TurntableID;
import flixel.input.gamepad.mappings.FlxGamepadMapping;

class TurntableMapping extends FlxGamepadMapping {
	override function initValues():Void {
		leftStick = TurntableID.TURNTABLE_ANALOG_STICK;
		rightStick = TurntableID.FADERDIAL_ANALOG_STICK;
	}

	override public function getID(rawID:Int):FlxGamepadInputID {
		return switch (rawID) {
			case TurntableID.GREEN: A;
			case TurntableID.RED: B;
			case TurntableID.BLUE: X;
			case TurntableID.EUPHORIA: Y;
			case TurntableID.SELECT: BACK;
			case TurntableID.START: START;

			// case id if (id == leftStick.rawLeft): LEFT_STICK_DIGITAL_LEFT;
			case id if (id == leftStick.rawDown): LEFT_STICK_DIGITAL_DOWN;
			case id if (id == leftStick.rawUp): LEFT_STICK_DIGITAL_UP;
			// case id if (id == leftStick.rawRight): LEFT_STICK_DIGITAL_RIGHT;

			case id if (id == rightStick.rawLeft): RIGHT_STICK_DIGITAL_LEFT;
			case id if (id == rightStick.rawDown): RIGHT_STICK_DIGITAL_DOWN;
			case id if (id == rightStick.rawUp): RIGHT_STICK_DIGITAL_UP;
			case id if (id == rightStick.rawRight): RIGHT_STICK_DIGITAL_RIGHT;

			default: NONE;
		}
	}

	override public function getRawID(ID:FlxGamepadInputID):Int {
		return switch (ID) {
			case A: TurntableID.GREEN;
			case B: TurntableID.RED;
			case X: TurntableID.BLUE;
			case Y: TurntableID.EUPHORIA;
			case BACK: TurntableID.SELECT;
			case START: TurntableID.START;
			case LEFT_STICK_DIGITAL_DOWN: TurntableID.TURNTABLE_DOWN;
			case LEFT_STICK_DIGITAL_UP: TurntableID.TURNTABLE_UP;
			case RIGHT_STICK_DIGITAL_LEFT: TurntableID.EFFECT_DIAL_LEFT;
			case RIGHT_STICK_DIGITAL_DOWN: TurntableID.FADER_LEFT;
			case RIGHT_STICK_DIGITAL_UP: TurntableID.FADER_RIGHT;
			case RIGHT_STICK_DIGITAL_RIGHT: TurntableID.EFFECT_DIAL_RIGHT;
			default: -1;
		}
	}

	override function getInputLabel(id:FlxGamepadInputID) {
		return switch (id) {
			case A: "green";
			case B: "red";
			case X: "blue";
			case Y: "euphoria";
			case BACK: "select";
			case START: "start";

			default: super.getInputLabel(id);
		}
	}
}
