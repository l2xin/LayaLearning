package GameState
{
	import GameState.IGameStateBase;
	import laya.net.Loader;
	import laya.net.ResourceVersion;
	import laya.utils.Handler;
	import view.TestView;
	import view.GameUI.GameStart;
	import laya.wx.mini.MiniAdpter;
	import GameState.GameStateController;
	import GameState.TGameState;

	/**
	 * ...
	 * @author
	 */
	public class GameStateInit implements IGameStateBase
	{
		
		public function OnStart():void
		{
			//初始化微信小游戏
			MiniAdpter.init();

			//初始化引擎
			Laya.init(1136, 640);
			
			//激活资源版本控制
            ResourceVersion.enable("version.json", Handler.create(this, this.OnVersionLoaded), ResourceVersion.FILENAME_VERSION);
		}

		public function OnExit():void
		{
			
		}

		public function OnLoop():void
		{

		}

		private function OnVersionLoaded():void
		{
			GameStateController.instance.ChangeState(TGameState.LOADING);
		}
	}

}