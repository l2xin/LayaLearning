package GameState
{
	import GameState.IGameStateBase;
	import laya.debug.view.nodeInfo.nodetree.OutPut;
	import GameState.GameStateController;
	import GameState.GameStateInit;
	import GameState.GameStateOver;
	import GameState.GameStatePlaying;
	import GameState.GameStateLoading;
	import GameState.GameStatePause;
	import GameState.TGameState;

	/**
	 * ...
	 * @author
	 */
	public class GameStateController
	{
		private var m_curGameState:IGameStateBase;
		private var m_gameStateInit:IGameStateBase;
		private var m_gameStateLoading:IGameStateBase;
		private var m_gameStatePlaying:IGameStateBase;
		private var m_gameStatePause:IGameStateBase;
		private var m_gameStateOver:IGameStateBase;

		public function GameStateController()
		{
			m_gameStateInit = new GameStateInit();
			m_gameStateLoading = new GameStateLoading();
			m_gameStatePlaying = new GameStatePlaying();
			m_gameStatePause = new GameStatePause();
			m_gameStateOver = new GameStateOver();
		}

		private static var s_instance:GameStateController;
		public static function get instance():GameStateController 
		{ 
			if(s_instance == null)
			{
				s_instance = new GameStateController();
			}
			return GameStateController.s_instance; 
		} 

		public function OnStart():void
		{
		
		}

		public function OnExit():void
		{

		}

		public function OnLoop():void
		{
			if(m_curGameState != null)
			{
				m_curGameState.OnLoop();
			}
		}

		public function GetGameState(gameStateId:int):IGameStateBase
		{
			var gameState:IGameStateBase = m_gameStateInit;
			switch(gameStateId)
			{
				case TGameState.INIT: gameState = m_gameStateInit; break;
				case TGameState.LOADING: gameState = m_gameStateLoading; break;
				case TGameState.PAUSE: gameState = m_gameStatePause; break;
				case TGameState.PLAYING: gameState = m_gameStatePlaying; break;
				case TGameState.OVER: gameState = m_gameStateOver; break;
			}
			return gameState;
		}

		public function ChangeState(gameStateId:int):void
		{
			if(m_curGameState != null)
			{
				m_curGameState.OnExit();
			}

			var gameState:IGameStateBase = this.GetGameState(gameStateId);

			console.log("ChangeState:" + gameStateId);

			m_curGameState = gameState;

			if(m_curGameState != null)
			{
				m_curGameState.OnStart();
			}
		}
	}

}