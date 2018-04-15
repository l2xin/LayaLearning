package GameState
{
	import GameState.IGameStateBase;
	import view.GameUI.GameStart;

	/**
	 * ...
	 * @author
	 */
	public class GameStatePause implements IGameStateBase
	{
		public function GameStatePause()
		{
			
		}

		public function OnStart():void
		{
			//实例UI界面
			// var testView:TestView = new TestView();
			// Laya.stage.addChild(testView);

			var gameStartView:GameStart = new GameStart();
			Laya.stage.addChild(gameStartView);
		}

		public function OnExit():void
		{
			// GameStateController.instance.ChangeState(TGameState.PLAYING);
		}

		public function OnLoop():void
		{
			
		}
	}

}