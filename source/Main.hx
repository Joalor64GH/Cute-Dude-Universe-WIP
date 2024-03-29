package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	var gameWidth:Int = 1280; // Width of the game in pixels (might be less / more in actual pixels depending on your zoom).
	var gameHeight:Int = 720; // Height of the game in pixels (might be less / more in actual pixels depending on your zoom).
	var zoom:Float = -1; // If -1, zoom is automatically calculated to fit the window dimensions.
	var framerate:Int = 60; // How many frames per second the game should run at.
	#if HAXEFLIXEL_LOGO
	var skipSplash:Bool = false;
	#else
	var skipSplash:Bool = true; // CRINGE! Why would you hide it????
	#end
	var startFullscreen:Bool = false; // Whether to start the game in fullscreen on desktop targets'
	
	// You can pretty much ignore everything from here on - your code should go in your states.
	
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, MainMenuState));
	}
}