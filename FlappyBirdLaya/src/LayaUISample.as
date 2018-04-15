package {
	import laya.net.Loader;
	import laya.net.ResourceVersion;
	import laya.utils.Handler;
	import view.TestView;
	import view.GameUI.GameStart;
	import laya.wx.mini.MiniAdpter;
	import avmplus.implementsXml;
	
	public class LayaUISample 
	{
		/***游戏资源地址数组***/
		private var m_assetArr:Array=[{url:"res/atlas/comp.atlas", type:Loader.ATLAS},
									{url:"res/atlas/GameHero.atlas", type:Loader.ATLAS},
									{url:"res/atlas/GameMap.atlas", type:Loader.ATLAS},
									{url:"res/atlas/GameUI.atlas", type:Loader.ATLAS},
									{url:"res/sound/BackgroundMusic.wav", type:Loader.SOUND}, 
									{url:"res/sound/BirdFlap.wav", type:Loader.SOUND}, 
									{url:"res/sound/Scored.wav", type:Loader.SOUND}, 
									{url:"res/sound/StartMenuMusic.mp3", type:Loader.SOUND}, 
									{url:"res/sound/GameOver.wav", type:Loader.SOUND}, 
								   ];

		public function LayaUISample() 
		{
			//初始化微信小游戏
			MiniAdpter.init();

			//初始化引擎
			Laya.init(600, 400);
			
			//激活资源版本控制
            ResourceVersion.enable("version.json", Handler.create(this, beginLoad), ResourceVersion.FILENAME_VERSION);
		}
		
		private function beginLoad():void 
		{
			//加载引擎需要的资源
			Laya.loader.load(m_assetArr, Handler.create(this, onLoaded));
		}
		
		private function onLoaded():void 
		{
			//实例UI界面
			// var testView:TestView = new TestView();
			// Laya.stage.addChild(testView);

			var gameStartView:GameStart = new GameStart();
			Laya.stage.addChild(gameStartView);
		}
	}
}