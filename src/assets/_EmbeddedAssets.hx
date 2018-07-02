//------------------------------------------------------------------------------------------
package assets;

import kx.*;
import kx.xml.*;
import openfl.utils.ByteArray;

//------------------------------------------------------------------------------------------
#if false
<library path="src\\assets\\Cows\\Project\\common\\B910045E-55B8-65B8-AC64-5D073BC12645-CircusSpawnerRing.swf" preload="true" generate="true" />
<library path="src\\assets\\Cows\\Project\\common\\19F6B1AA-03E6-D487-299C-EE5635F445BB-CircusSpawner.swf" preload="true" generate="true" />
<library path="src\\assets\\Cows\\Project\\common\\9DCA8791-98B8-3CEC-6C3F-AB4A1EC16E39-CircusSpawnerBG.swf" preload="true" generate="true" />
<library path="src\\assets\\Cows\\Project\\common\\DA77F7D7-643E-CF43-7FD6-39982570804C-Zone_Icon.swf" preload="true" generate="true" />
<library path="src\\assets\\Cows\\Project\\common\\21046189-998B-2649-B68D-A0FAF4AA6729-StarterRing.swf" preload="true" generate="true" />

#end

//------------------------------------------------------------------------------------------
@:file("src\\assets\\Cows\\Project\\common\\F2787110-BCAA-3A29-E745-6496F138CD92-Intro.zlib")
class Intro extends ByteArrayData { }


//------------------------------------------------------------------------------------------
class _EmbeddedAssets {

//------------------------------------------------------------------------------------------
public static inline var m_projectXML:String = "<project><manifest name=\"common.xml\"><manifest><folder name=\"root\" oldPath=\"\"><folder name=\"sprites\" oldPath=\"\"><folder name=\"OctoTron\" oldPath=\"\"><resource regY=\"-167\" path=\"common\" regX=\"-167\" src=\"DC689EDA-6B38-A2F1-AA45-E88457EBDF53-CircusSpawner.pmp\" pmp_width=\"512\" width=\"335\" dst=\"DC689EDA-6B38-A2F1-AA45-E88457EBDF53-CircusSpawner.pmp\" height=\"335\" type=\".pmp\" name=\"@CircusSpawner\" oldPath=\"common\" embed=\"false\" originX=\"99\" totalWidth=\"2010\" originY=\"71\"/><resource name=\"CircusSpawnerRing\" path=\"$Embedded\" oldPath=\"common\" src=\"B910045E-55B8-65B8-AC64-5D073BC12645-CircusSpawnerRing.fla\" type=\".fla\" embed=\"false\" dst=\"B910045E-55B8-65B8-AC64-5D073BC12645-CircusSpawnerRing.swf\"><classX regY=\"0\" name=\"CircusSpawnerRing\" width=\"32\" regX=\"0\" height=\"32\"/></resource><resource name=\"CircusSpawner\" path=\"$Embedded\" oldPath=\"common\" src=\"19F6B1AA-03E6-D487-299C-EE5635F445BB-CircusSpawner.fla\" type=\".fla\" embed=\"false\" dst=\"19F6B1AA-03E6-D487-299C-EE5635F445BB-CircusSpawner.swf\"><classX regY=\"0\" name=\"CircusSpawner\" width=\"32\" regX=\"0\" height=\"32\"/></resource><resource regY=\"-167\" path=\"common\" regX=\"-167\" src=\"BE5A448C-08B5-B66A-FF43-0D2A90294F81-CircusSpawnerRing.pmp\" pmp_width=\"512\" width=\"335\" dst=\"BE5A448C-08B5-B66A-FF43-0D2A90294F81-CircusSpawnerRing.pmp\" height=\"335\" type=\".pmp\" name=\"@CircusSpawnerRing\" oldPath=\"common\" embed=\"false\" originX=\"99\" totalWidth=\"2345\" originY=\"71\"/><resource regY=\"-167\" path=\"common\" regX=\"-167\" src=\"89A7A3B2-4A1D-4545-F00D-5C6F08E6F2AD-CircusSpawnerBG.pmp\" pmp_width=\"512\" width=\"335\" dst=\"89A7A3B2-4A1D-4545-F00D-5C6F08E6F2AD-CircusSpawnerBG.pmp\" height=\"335\" type=\".pmp\" name=\"@CircusSpawnerBG\" oldPath=\"common\" embed=\"false\" originX=\"99\" totalWidth=\"670\" originY=\"71\"/><resource name=\"CircusSpawnerBG\" path=\"$Embedded\" oldPath=\"common\" src=\"9DCA8791-98B8-3CEC-6C3F-AB4A1EC16E39-CircusSpawnerBG.fla\" type=\".fla\" embed=\"false\" dst=\"9DCA8791-98B8-3CEC-6C3F-AB4A1EC16E39-CircusSpawnerBG.swf\"><classX regY=\"0\" name=\"CircusSpawnerBG\" width=\"32\" regX=\"0\" height=\"32\"/></resource></folder><folder name=\"Misc\" oldPath=\"\"><resource regY=\"0\" path=\"common\" regX=\"0\" src=\"897B865D-8DC0-F006-765C-9DC3488AD487-Zone_Icon.pmp\" pmp_width=\"128\" width=\"128\" dst=\"897B865D-8DC0-F006-765C-9DC3488AD487-Zone_Icon.pmp\" height=\"128\" type=\".pmp\" name=\"@Zone_Icon\" oldPath=\"common\" embed=\"false\" originX=\"0\" totalWidth=\"128\" originY=\"0\"/><resource name=\"Zone_Icon\" path=\"$Embedded\" oldPath=\"common\" src=\"DA77F7D7-643E-CF43-7FD6-39982570804C-Zone_Icon.fla\" type=\".fla\" embed=\"false\" dst=\"DA77F7D7-643E-CF43-7FD6-39982570804C-Zone_Icon.swf\"><classX regY=\"0\" name=\"Zone_Icon\" width=\"32\" regX=\"0\" height=\"32\"/></resource><resource regY=\"-32\" path=\"common\" regX=\"-32\" src=\"BCAFA479-F0F9-4FB1-84F0-B485A2C00518-StarterRing.pmp\" pmp_width=\"128\" width=\"63\" dst=\"BCAFA479-F0F9-4FB1-84F0-B485A2C00518-StarterRing.pmp\" height=\"63\" type=\".pmp\" name=\"@StarterRing\" oldPath=\"common\" embed=\"false\" originX=\"34\" totalWidth=\"63\" originY=\"31\"/><resource name=\"StarterRing\" path=\"$Embedded\" oldPath=\"common\" src=\"21046189-998B-2649-B68D-A0FAF4AA6729-StarterRing.fla\" type=\".fla\" embed=\"false\" dst=\"21046189-998B-2649-B68D-A0FAF4AA6729-StarterRing.swf\"><classX regY=\"0\" name=\"StarterRing\" width=\"32\" regX=\"0\" height=\"32\"/></resource></folder></folder><folder name=\"Items\" oldPath=\"\"><resource name=\"Zone_Item\" path=\"\" oldPath=\"\" src=\"\" type=\".item\" embed=\"false\" dst=\"\"><XMapItem hasLogic=\"true\" logicClassName=\"$Zone\" imageClassName=\"Zone_Icon:Zone_Icon\"><params/></XMapItem></resource><resource name=\"StarterRing_Item\" path=\"\" oldPath=\"\" src=\"\" type=\".item\" embed=\"false\" dst=\"\"><XMapItem hasLogic=\"true\" logicClassName=\"$StarterRing\" imageClassName=\"StarterRing:StarterRing\"><params/></XMapItem></resource><resource name=\"OctoTron\" path=\"\" oldPath=\"\" src=\"\" type=\".item\" embed=\"false\" dst=\"\"><XMapItem hasLogic=\"true\" imageClassName=\"CircusSpawnerRing:CircusSpawnerRing\" logicClassName=\"XLogicObjectXMap:XLogicObjectXMap\" boundingRect=\"\"><params/></XMapItem></resource></folder><folder name=\"Levels\" oldPath=\"\"><resource name=\"@Intro\" path=\"common\" oldPath=\"common\" src=\"B60E8B2A-F272-0F1F-49D9-81729DDDD3AE-Intro.xmap\" type=\".xmap\" embed=\"false\" dst=\"B60E8B2A-F272-0F1F-49D9-81729DDDD3AE-Intro.swf\"/><resource name=\"Intro\" path=\"$Embedded\" oldPath=\"common\" src=\"F2787110-BCAA-3A29-E745-6496F138CD92-Intro.as\" type=\".as\" embed=\"false\" dst=\"F2787110-BCAA-3A29-E745-6496F138CD92-Intro.swf\"><classX regY=\"0\" name=\"Intro\" width=\"32\" regX=\"0\" height=\"32\"/></resource></folder></folder></manifest></manifest></project>";

//------------------------------------------------------------------------------------------
public static function getProjectXML ():XSimpleXMLNode {
	return new XSimpleXMLNode (m_projectXML);
	}

//------------------------------------------------------------------------------------------
public static function addEmbeddedAssets (__XApp:XApp):Void {
		__XApp.getProjectManager ().addEmbeddedResource (
			"$Embedded\\B910045E-55B8-65B8-AC64-5D073BC12645-CircusSpawnerRing.swf" , CircusSpawnerRing
		);
		__XApp.getProjectManager ().addEmbeddedResource (
			"$Embedded\\19F6B1AA-03E6-D487-299C-EE5635F445BB-CircusSpawner.swf" , CircusSpawner
		);
		__XApp.getProjectManager ().addEmbeddedResource (
			"$Embedded\\9DCA8791-98B8-3CEC-6C3F-AB4A1EC16E39-CircusSpawnerBG.swf" , CircusSpawnerBG
		);
		__XApp.getProjectManager ().addEmbeddedResource (
			"$Embedded\\DA77F7D7-643E-CF43-7FD6-39982570804C-Zone_Icon.swf" , Zone_Icon
		);
		__XApp.getProjectManager ().addEmbeddedResource (
			"$Embedded\\21046189-998B-2649-B68D-A0FAF4AA6729-StarterRing.swf" , StarterRing
		);
		__XApp.getProjectManager ().addEmbeddedResource (
			"$Embedded\\F2787110-BCAA-3A29-E745-6496F138CD92-Intro.swf" , Intro
		);

	}

//------------------------------------------------------------------------------------------
}
