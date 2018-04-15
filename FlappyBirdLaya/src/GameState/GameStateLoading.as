package GameState
{
	import GameState.IGameStateBase;
	import laya.net.Loader;
	import laya.utils.Handler;

	/**
	 * ...
	 * @author
	 */
	public class GameStateLoading implements IGameStateBase
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

		
		public function OnStart():void
		{
			//加载引擎需要的资源
			Laya.loader.load(m_assetArr, Handler.create(this, this.OnAssetsLoaded));
		}

		public function OnExit():void
		{
			
		}

		public function OnLoop():void
		{

		}

		private function OnAssetsLoaded():void
		{
			GameStateController.instance.ChangeState(TGameState.PAUSE);
		}
	}

}