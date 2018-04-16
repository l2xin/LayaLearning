/**Created by the LayaAirIDE*/
package view.GameUI
{
	import ui.GameUI.GameStartUI;
	import laya.ui.*;
	import laya.events.Event;
	import laya.utils.Log;
	import GameState.GameStateController;
	import GameState.TGameState;

	public class GameStart extends GameStartUI
	{

		public function GameStart() 
		{
			m_btnStart.on(Event.CLICK, this, onBtnClick);
		}
		
		private function onBtnClick(e:Event):void 
		{
			console.debug("m_btnStart Click");
			GameStateController.instance.ChangeState(TGameState.PLAYING);
		}
		
	}

}