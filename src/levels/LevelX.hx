//------------------------------------------------------------------------------------------
package levels;
	
	import assets.*;
	
	import gx.levels.*;
	
	import objects.messages.*;
	
	import kx.*;
	import kx.collections.*;
	import kx.geom.*;
	import kx.task.*;
	import kx.world.*;
	import kx.world.collision.*;
	import kx.world.logic.*;
	import kx.world.sprite.*;
	import kx.xml.*;
	import kx.xmap.*;
	
	import openfl.geom.*;
	import openfl.text.*;
	import openfl.utils.*;
		
//------------------------------------------------------------------------------------------
	class LevelX extends _LevelX {
		private var m_zoneStartedListenerID:Int;
		private var m_zoneFinishedListenerID:Int;
		
//------------------------------------------------------------------------------------------
		public function new () {
			super ();
		}
	
//------------------------------------------------------------------------------------------
		public override function setup (__xxx:XWorld, args:Array<Dynamic> /* <Dynamic> */):Void {
			super.setup (__xxx, args);
		}
		
//------------------------------------------------------------------------------------------
		public override function setupX ():Void {
			super.setupX ();
	
//			m_zoneStartedListenerID = G.appX.addZoneStartedListener (onZoneStarted);
//			m_zoneFinishedListenerID = G.appX.addZoneFinishedListener (onZoneFinished);
		}
		
//------------------------------------------------------------------------------------------
		public override function cleanup ():Void {
			super.cleanup ();
			
//			G.appX.removeZoneStartedListener (m_zoneStartedListenerID);
//			G.appX.removeZoneFinishedListener (m_zoneFinishedListenerID);
		}
				
//------------------------------------------------------------------------------------------
	}

//------------------------------------------------------------------------------------------
// }