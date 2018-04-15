/**Created by the LayaAirIDE,do not modify.*/
package ui.GameUI {
	import laya.ui.*;
	import laya.display.*; 
	import laya.display.Text;

	public class GameStartUI extends View {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1136,"height":640},"child":[{"type":"Image","props":{"y":0,"x":0,"skin":"GameMap/MainMenuBackgroundSprite.png"}},{"type":"Text","props":{"y":17,"x":46,"width":206,"text":"点击开始游戏","height":45,"fontSize":26,"font":"Arial","color":"#fdfdfd","align":"center"}},{"type":"Image","props":{"y":73,"x":81,"skin":"GameUI/Play.png"}},{"type":"Image","props":{"y":78,"x":177,"skin":"GameUI/No.png"}},{"type":"Image","props":{"y":109,"x":121,"skin":"GameHero/BirdHero01_01.png"}},{"type":"Image","props":{"y":197,"x":244,"skin":"GameHero/Coin01_01.png"}},{"type":"HSlider","props":{"y":54,"x":127,"skin":"comp/hslider.png"}}]};
		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			createView(uiView);

		}

	}
}