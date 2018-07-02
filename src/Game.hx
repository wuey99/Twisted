//------------------------------------------------------------------------------------------
package;
//	import assets.*;
	
	import openfl.display.*;
	import openfl.events.*;
	import openfl.geom.*;
	import openfl.media.*;
	import openfl.system.*;
	import openfl.ui.*;
	import openfl.utils.*;
	
	import gx.*;
	import gx.levels.*;
	import gx.messages.*;
	import gx.messages.level.*;
	import gx.mickey.*;
	import gx.zone.*;
	
	import kx.*;
	import kx.bitmap.*;
	import kx.collections.*;
	import kx.game.*;
	import kx.geom.*;
	import kx.keyboard.*;
	import kx.resource.*;
	import kx.signals.*;
	import kx.sound.*;
	import kx.task.*;
	import kx.type.*;
	import kx.world.*;
	import kx.world.logic.*;
	import kx.xmap.*;
	import kx.xml.*;
	
	import objects.oracle.*;
	import levels.*;
	
//------------------------------------------------------------------------------------------
	class Game extends GApp {
		
		private var m_levelPropsMap:Map<String, LevelPropsX>; // <String, LevelPropsX>
		
//------------------------------------------------------------------------------------------
		public function new () {
			super ();
		}
		
		//------------------------------------------------------------------------------------------
		public override function setup (
			__assetsClass:Class<Dynamic> /* <Dynamic> */,
			__mickeyXClass:Class<Dynamic> /* <Dynamic> */,
			__parent:Dynamic /* */,
			__timerInterval:Float=32, 
			__layers:Int=4
		):Void {	
			trace (": Game: setup: ");
			
			super.setup (__assetsClass, __mickeyXClass, __parent, __timerInterval, __layers);
			
			G.setup (cast this /* as Game */, m_XApp);
			
			__initLogicClassNames ();
			__initLevelProps ();
	
			getZoneManager ().setup (
				xxx,
				m_XApp,
				PLAYFIELD_LAYER,
				__zoneObjectsMap,
				__zoneObjectsMapNoKill,
				null, 	// Horz_GateX,
				null,	// Vert_GateX,
				null,	// Horz_Door
				null,	// Vert_Door
				null,	// Gate_ArrowX
				null,	// WaterCurrentX,
				StarterRingControllerX
			);
			
			addTask ([
				XTask.WAIT, 0x0400,
				
				function ():Void {
//					openfl.Assets.getFont("fonts/BITWISE.TTF");
					
					this.cacheAllMovieClips ();
				},
				
				XTask.WAIT, 0x0400,
				
				function ():Void {
					G.appX.setupSignals ();
				},
				
				function ():Void {
					initLevel ("Intro");
				},
				
				function ():Void {
					#if true
					var __oracleObject:OracleX = cast xxx.getXLogicManager ().initXLogicObjectFromPool (
						// parent
						null,
						// logicObject
						OracleX,
						// item, layer, depth
						null, G.appX.PLAYFIELD_LAYER + 0, 9999999999,
						// x, y, z
						700/2, 550/2, 0,
						// scale, rotation
						1.0, 0
					) /* as OracleX */;
					#end
				},
				
				function (__state:Float = -1):Void {
					switch (__state) {
						case -1:
//							G.appX.launchGamestate (GameLoopX);
							// break;
					}
				},

				XTask.RETN,
			]);	
		}

//------------------------------------------------------------------------------------------
		public function __initLogicClassNames ():Void {
			initLogicClassNames ([
				"__OctoTron", OracleX,
			]);
		}
		
//------------------------------------------------------------------------------------------
		public override function logicClassNameToClass (__logicClassName:String):Dynamic /* */ {
			return m_logicClassNameToClass.get (XType.replace(__logicClassName, "$", "__"));
		}
		
//------------------------------------------------------------------------------------------
		public override function getLevelProps (__levelName:String):LevelPropsX {
			return m_levelPropsMap.get (__levelName);
		}

//------------------------------------------------------------------------------------------
		public function __initLevelProps ():Void {
			m_levelPropsMap = new Map<String, LevelPropsX> (); // <String, LevelPropsX>
			
			m_levelPropsMap.set ("Intro",
				createLevelProps (
					[
						"resource", "Intro:Intro",
						"name", "Intro",
						"zone", 1,
						"view", LevelX,
						"hud", null,
						"mickey", null,
						"next", "none",
						"type", 0
					]
				)
			);
		}
		
//------------------------------------------------------------------------------------------
		public override function initLevel (__levelName:String):Void {
			super.initLevel (__levelName);
			
			m_levelComplete = false;
			
			m_levelProps = getLevelProps (__levelName);
			
			#if false
			initHudLayerObject ();
			
			var __mickey:MickeyX = cast XType.createInstance (m_levelProps.getProperty ("mickey"));
			setupMickey (__mickey);
			getMickeyCursorObject ().setCompassMode ();
			#end
			
			var __xml:XSimpleXMLNode = loadLevel (m_levelProps.getProperty ("resource"));
			
			var __levelX:Dynamic = m_levelProps.getProperty ("view");
			
			m_levelObject = cast xxx.getXLogicManager ().initXLogicObject (
				// parent
					null,
				// logicObject
					XType.createInstance (__levelX) /* as XLogicObject */,
				// item, layer, depth
					null, 0, 0,
				// x, y, z
					0, 0, 0,
				// scale, rotation
					1.0, 0,
					[
						__xml,
						m_XApp
					]
				) /* as LevelX */;
			
			xxx.unloadClass (m_levelProps.getProperty ("resource"));
			
			#if false
			var __hudX:Dynamic /* */ = m_levelProps.getProperty ("hud");
			
			m_gameHudObject = cast xxx.getXLogicManager ().initXLogicObject (
				// parent
				null,
				// logicObject
				XType.createInstance (__hudX) /* as XLogicObject */,
				// item, layer, depth
				null, -1, 25000,
				// x, y, z
				8, 8, 0,
				// scale, rotation
				1.0, 0,
				[
					m_XApp
				]
			) /* as HudX */;
			
			m_hudMessageObject = cast xxx.getXLogicManager ().initXLogicObject (
				// parent
				null,
				// logicObject
				new HudMessageX () /* as XLogicObject */,
				// item, layer, depth
				null, -1, 1000,
				// x, y, 25000
				0, 0, 0,
				// scale, rotation
				1.0, 0
			) /* as HudMessageX */;
			
			createLevelTitleName (m_levelProps.getProperty ("name"));
			
			m_eggList = new Map<XLogicObject, Int> (); // <XLogicObject, Int>
			m_dolfinList = new Map<XLogicObject, Int> (); // <XLogicObject, Int>
			#end
		
			getAllGlobalItems ();

			#if false
			setCurrentZone (m_levelProps.getProperty ("zone"));
			
			m_levelObject.onEntry ();
			
//			setMickeyToStartPosition (m_currentZone);
			#end
			
			#if false
			m_mickeyObject.setXMapModel (m_mickeyObject.getLayer () + 1, xxx.getXMapModel (), m_levelObject);
			
			m_mickeyObject.addLevelCompleteListener (
				function ():Void {
					m_levelComplete = true;
					
					m_XApp.getXTaskManager ().addTask ([
						XTask.WAIT, 0x1000,
						
						function ():Void {
							trace (": level complete: ");
							
							m_XApp.getXTaskManager ().addTask ([
								function ():Void {
									removeLevelTitleNameObject ();
									m_levelObject.nukeLater ();
									m_gameHudObject.nukeLater ();
									m_hudMessageObject.nukeLater ();
									m_hudObject.nukeLater ();
									m_mickeyObject.nukeLater ();
									m_gameState = -1;
								},
								
								XTask.WAIT, 0x0800,
								
								function ():Void {
									m_gameState = m_levelProps.getProperty ("type");
								},
								
								XTask.RETN,
							]);
						},
						
						XTask.RETN,
					]);
				}
			);
			#end
		}
	
//------------------------------------------------------------------------------------------
		private var __zoneObjectsMap:Dynamic /* Object */ = {
			OctoTron_Item: 0,
		};

//------------------------------------------------------------------------------------------
		private var __zoneObjectsMapNoKill:Dynamic /* Object */ = {			
		};
		
	//------------------------------------------------------------------------------------------
	}
	
//------------------------------------------------------------------------------------------
// }
