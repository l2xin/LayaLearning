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
	import laya.webgl.WebGL;
	import Events.TEventDispatch;

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
			Laya.init(568, 320, WebGL);
			//让舞台处于屏幕的水平居中
            Laya.stage.alignH = "center";
            //保持原始高宽比的情况下，将舞台铺满屏幕，超出比例的部分会有黑边
            Laya.stage.scaleMode = "showall";
            //自动横屏，游戏的水平方向始终与浏览器屏幕较短边保持垂直
            Laya.stage.screenMode = "horizontal";
            //设置舞台背景色
            Laya.stage.bgColor = "#232628";
			
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