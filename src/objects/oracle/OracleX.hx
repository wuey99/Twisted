//------------------------------------------------------------------------------------------
// <$begin$/>
// <$end$/>
//------------------------------------------------------------------------------------------
package objects.oracle;
	
	import assets.*;
	
	import gx.mickey.*;
	
	import objects.*;
	
	import kx.*;
	import kx.geom.*;
	import kx.task.*;
	import kx.world.*;
	import kx.world.collision.*;
	import kx.world.logic.*;
	import kx.world.sprite.*;
	
	import openfl.geom.*;
	import openfl.text.*;
	import openfl.utils.*;
	
	//------------------------------------------------------------------------------------------
	class OracleX extends XLogicObjectCX {
		public var m_sprite:XMovieClip;
		public var x_sprite:XDepthSprite;
		
		public var m_spriteTentacles:XMovieClip;
		public var x_spriteTentacles:XDepthSprite;
		
		public var m_spriteBG:XMovieClip;
		public var x_spriteBG:XDepthSprite;
		
		public var script:XTask;
		public var gravity:XTask;
		
		public var m_baseX:Float;
		public var m_baseY:Float;
		public var m_angle:Float;
		public var m_dist:Float;
		
		//------------------------------------------------------------------------------------------
		public function new () {
			super ();
		}
		
		//------------------------------------------------------------------------------------------
		public override function setup (__xxx:XWorld, args:Array<Dynamic> /* <Dynamic> */):Void {
			super.setup (__xxx, args);
			
			createSprites ();
		}
		
		//------------------------------------------------------------------------------------------
		public override function setupX ():Void {
			super.setupX ();
			
			gravity = addEmptyTask ();
			script = addEmptyTask ();
			
			gravity.gotoTask (getPhysicsTaskX (0.25));
			
			m_baseX = oX;
			m_baseY = oY;
			
			m_angle = 180;
			m_dist = 64;
			
			Idle_Script ();
			
			if (true) addTask ([
				XTask.LABEL, "loop",
					XTask.LOOP, 12,
						function ():Void {
							oRotation -= 0.50;
						}, XTask.WAIT, 0x0100,
					XTask.NEXT,
					
					XTask.LOOP, 24,
						function ():Void {
							oRotation += 0.50;
						}, XTask.WAIT, 0x0100,
					XTask.NEXT,
					
					XTask.LOOP, 12,
						function ():Void {
							oRotation -= 0.50;
						}, XTask.WAIT, 0x0100,
					XTask.NEXT,
					
					XTask.GOTO, "loop",
			
				XTask.RETN,
			]);
			
			if (true) addTask ([
				XTask.LABEL, "loop",
					XTask.WAIT, 0x0100,
					
					function ():Void {
						m_angle = (m_angle - 3.0) % 360;
						
						oX = m_baseX + Math.sin (m_angle * Math.PI/180) * m_dist;
						oY = m_baseY + Math.cos (m_angle * Math.PI/180) * m_dist;
					},
					
				XTask.GOTO, "loop",
				
			]);
			
			animateTentaclesScript ();
		}
		
		//------------------------------------------------------------------------------------------
		// create sprites
		//------------------------------------------------------------------------------------------
		public override function createSprites ():Void {
			m_sprite = createXMovieClip ("CircusSpawner:CircusSpawner");
			x_sprite = addSpriteAt (m_sprite, m_sprite.dx, m_sprite.dy);

			m_spriteTentacles = createXMovieClip ("CircusSpawnerRing:CircusSpawnerRing");
			x_spriteTentacles = addSpriteAt (m_spriteTentacles, m_spriteTentacles.dx, m_spriteTentacles.dy);			
			x_spriteTentacles.setDepth (getDepth () - 1);
			
			m_spriteBG = createXMovieClip ("CircusSpawnerBG:CircusSpawnerBG");
			x_spriteBG = addSpriteAt (m_spriteBG, m_spriteBG.dx, m_spriteBG.dy);			
			x_spriteBG.setDepth (getDepth () - 2);
			
			show ();
		}
		
		//------------------------------------------------------------------------------------------
		public override function setCollisions ():Void {
//			G.appX.getEnemyCollisionList ().addCollision (getLayer (), this, getPos (), getCX ());
		}
		
		//------------------------------------------------------------------------------------------
		public function getPhysicsTaskX (DECCEL:Float):Array<Dynamic> /* <Dynamic> */ {
			return [
				XTask.LABEL, "loop",
					XTask.WAIT, 0x0100,
					updatePhysics,	
					XTask.GOTO, "loop",
				
				XTask.RETN,
			];
		}
		
		//------------------------------------------------------------------------------------------
		public function animateTentaclesScript ():Void {
			var __delay:XNumber = new XNumber (0);
			__delay.value = 0x0300;
			
			addTask ([
				XTask.LABEL, "loop",
					function ():Void { m_spriteTentacles.gotoAndStop (1); }, XTask.WAIT, __delay,
					function ():Void { m_spriteTentacles.gotoAndStop (2); }, XTask.WAIT, __delay,
					function ():Void { m_spriteTentacles.gotoAndStop (3); }, XTask.WAIT, __delay,
					function ():Void { m_spriteTentacles.gotoAndStop (4); }, XTask.WAIT, __delay,
					function ():Void { m_spriteTentacles.gotoAndStop (5); }, XTask.WAIT, __delay,
					function ():Void { m_spriteTentacles.gotoAndStop (6); }, XTask.WAIT, __delay,
					function ():Void { m_spriteTentacles.gotoAndStop (7); }, XTask.WAIT, __delay,
		
					XTask.GOTO, "loop",
					
				XTask.RETN,
			]);
		}
		
		//------------------------------------------------------------------------------------------
		public function Idle_Script ():Void {
			var __delay:XNumber = new XNumber (0);
			__delay.value = 0x0800;
			
			script.gotoTask ([
				
				//------------------------------------------------------------------------------------------
				// control
				//------------------------------------------------------------------------------------------
				function ():Void {
					script.addTask ([
						XTask.LABEL, "loop",
							XTask.WAIT, 0x0100,
						
							function ():Void {
							},
						
						XTask.GOTO, "loop",
						
						XTask.RETN,
					]);
					
				},
				
				//------------------------------------------------------------------------------------------
				// animation
				//------------------------------------------------------------------------------------------	
				XTask.LABEL, "loop",	
//					function ():void { m_sprite.gotoAndStop (1); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (2); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (3); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (4); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (5); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (6); }, XTask.WAIT, __delay,
					
					XTask.WAIT, 0x2000,
					
					function ():Void { m_sprite.gotoAndStop (5); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (4); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (3); }, XTask.WAIT, __delay,
					function ():Void { m_sprite.gotoAndStop (2); }, XTask.WAIT, __delay,
					
					XTask.WAIT, 0x2000,
					
				XTask.GOTO, "loop",
				
				XTask.RETN,
				
				//------------------------------------------------------------------------------------------			
			]);
			
			//------------------------------------------------------------------------------------------
		}
		
	//------------------------------------------------------------------------------------------
	}
	
//------------------------------------------------------------------------------------------
// }