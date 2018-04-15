package GameState
{
	/**
	 * ...
	 * @author
	 */
	public interface IGameStateBase
	{
		function OnStart();
		function OnExit();
		function OnLoop();
	}

}