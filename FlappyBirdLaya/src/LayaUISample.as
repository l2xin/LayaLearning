package {
	import laya.net.Loader;
	import laya.net.ResourceVersion;
	import laya.utils.Handler;
	import view.TestView;
	import view.GameUI.GameStart;
	import laya.wx.mini.MiniAdpter;
	import avmplus.implementsXml;
	import GameState.GameStateController;
	import GameState.TGameState;
	
	public class LayaUISample 
	{
		public function LayaUISample() 
		{
			GameStateController.instance.ChangeState(TGameState.INIT);
		}
		
		// private function beginLoad():void 
		// {
		// 	//加载引擎需要的资源
		// 	Laya.loader.load(m_assetArr, Handler.create(this, onLoaded));
		// }
		
		// private function onLoaded():void 
		// {
		// 	//实例UI界面
		// 	// var testView:TestView = new TestView();
		// 	// Laya.stage.addChild(testView);	

		// 	var gameStartView:GameStart = new GameStart();
		// 	Laya.stage.addChild(gameStartView);
		// }
	}
}