package
{
	
	import flash.display.MovieClip;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.net.GroupSpecifier;
	
	import org.osmf.containers.MediaContainer;
	import org.osmf.elements.VideoElement;
	import org.osmf.layout.ScaleMode;
	import org.osmf.media.DefaultMediaFactory;
	import org.osmf.media.MediaElement;
	import org.osmf.media.MediaPlayer;
	import org.osmf.media.URLResource;
	import org.osmf.net.MulticastNetLoader;
	import org.osmf.net.MulticastResource;
	import org.osmf.utils.URL;
	
	public class OSMF_MulticastSample extends MovieClip
	{
		
		////////////////////////////////////////////////////
		//DECLARATIONS
		////////////////////////////////////////////////////
		
		//Unique name for the group
		public static const MULTICAST_GROUP:String = "realeyes.osmf.multicast.sample";
		
		
		public var player:MediaPlayer;
		public var container:MediaContainer;
		
		
		
		////////////////////////////////////////////////////
		//CONSTRUCTOR
		////////////////////////////////////////////////////
		public function OSMF_MulticastSample()
		{
			
				stage.align = StageAlign.TOP_LEFT;
				stage.scaleMode = StageScaleMode.NO_SCALE;
				
				initPlayer();
		}
		
		
		
		
		protected function initPlayer():void
		{
			//Create a Group Specifier which manages the capabilities and requirements of the multicast group
			
			
			var uri:String = "rtmfp://localhost/multicast";
			var streamName:String = "livestream";
			
			//Uncomment the below trace statement to trace out the full stream name to be used in Flash Media Live Encoder
			//trace("FMLE STREAM NAME: livestream?fms.multicast.type=3&fms.multicast.groupspec=" + escape(groupspec.groupspecWithAuthorizations() ) );
			
			//Create at MulticastResource to connect and manage the RTMFP Multicast Connection: Requires URI, Group Specifier string, and stream name
			
			
			//creates and sets the MediaElement (VideoElement) with a resource and a loader (MulticastNetLoader)
			
			
			//the simplified api controller for media
			
			
			//the container (sprite) for managing display and layout
			
			
			
			//Adds the container to the stage
			
		}
		
	}
}
