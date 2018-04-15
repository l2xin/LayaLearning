package GameState
{
	/**
	 * ...
	 * @author
	 */
	public interface IGameStateBase
	{
		function OnStart():void;
		function OnExit():void;
		function OnLoop():void;
	}

}