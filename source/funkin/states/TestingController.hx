package funkin.states;

import flixel.text.FlxText;
import flixel.input.gamepad.id.TurntableID;

import Std;

class TestingController extends MusicBeatState
{
	var gaypad:flixel.input.gamepad.FlxGamepad;
	var vis:FlxText;

	override function create() {
		super.create();

		gaypad = FlxG.gamepads.firstActive;
		vis = new FlxText(100, 0, 0, "", 16);
		add(vis);
	}

	override function update(elapsed:Float) {
		super.update(elapsed);

		if (gaypad != null) {
			vis.text = 'GREEN:${Std.string(gaypad.pressed.A)}
			RED:${Std.string(gaypad.pressed.B)}
			BLUE:${Std.string(gaypad.pressed.X)}
			EUPHORIA:${Std.string(gaypad.pressed.Y)}
			SELECT:${Std.string(gaypad.pressed.BACK)}
			START:${Std.string(gaypad.pressed.START)}
			EFFECT DIAL:${Std.string(gaypad.getAxisRaw(3))}
			CROSSFADE:${Std.string(gaypad.getAxisRaw(2))}
			TURNTABLE:${Std.string(gaypad.getAxisRaw(1))}
			';
			for (i in 0...5) {
				vis.text += 'AXIS $i: ${gaypad.getAxisRaw(i)}\n';
			}
		} else {
			gaypad = FlxG.gamepads.firstActive;
		}
	}
}