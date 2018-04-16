package Events
{
	import laya.display.Sprite;
	import laya.events.EventDispatcher;
	import laya.events.Event;
	import laya.ani.bone.EventData;

	/**
	 * ...
	 * @author l2xin
	 */
	public class TEventDispatch
	{
		private var m_eventDispatch:EventDispatcher;

		private static var s_instance:TEventDispatch;
		public static function get instance():TEventDispatch 
		{ 
			if(s_instance == null)
			{
				s_instance = new TEventDispatch();
				s_instance.m_eventDispatch = new EventDispatcher();
			}
			return TEventDispatch.s_instance; 
		} 

		public function DispatchEvent(eventId:String, param:Object):void
		{
			m_eventDispatch.event(eventId, param);
		}

		public function AddEventListener(eventId:String, callback:Function):void
		{
			m_eventDispatch.on(eventId, m_eventDispatch, function(param:Object):void {
				callback(param);
			});
		}

		public function Test():void
		{
			var data:Object = new Object();
			data["1"] = 11;
			data["2"] = 22;
			TEventDispatch.instance.AddEventListener("a", this.OnA);
			TEventDispatch.instance.DispatchEvent("a", data);
		}

		public function OnA(param:Object):void
		{
			console.log("OnA:" + param["1"]);
		}
	}

}