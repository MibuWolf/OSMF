package
{
	
	import flash.display.ColorCorrection;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.ui.ContextMenu;
	
	import mx.controls.Button;
	import mx.controls.Text;
	
	import org.aswing.AbstractButton;
	import org.aswing.ButtonGroup;
	import org.aswing.JButton;
	import org.osmf.containers.MediaContainer;
	import org.osmf.elements.VideoElement;
	import org.osmf.events.TimeEvent;
	import org.osmf.layout.ScaleMode;
	import org.osmf.media.DefaultMediaFactory;
	import org.osmf.media.MediaElement;
	import org.osmf.media.MediaPlayer;
	import org.osmf.media.URLResource;
	import org.osmf.utils.URL;
	
	public class OSMF_MulticastF4MSample extends MovieClip
	{
		
		////////////////////////////////////////////////////
		//DECLARATIONS
		////////////////////////////////////////////////////
		
		//URI of the media
		public static const MULTICAST_F4M:String = "assets/SMPTETT.flv";
		public static const DYNAMIC_STREAMING:String = "http://mediapm.edgesuite.net/osmf/content/test/manifest-files/dynamic_Streaming.f4m";
		
		public var player:MediaPlayer;
		public var container:MediaContainer;
		public var mediaFactory:DefaultMediaFactory;
		
		
		////////////////////////////////////////////////////
		//CONSTRUCTOR
		////////////////////////////////////////////////////
		public function OSMF_MulticastF4MSample()
		{
			
				stage.align = StageAlign.TOP_LEFT;
				stage.scaleMode = StageScaleMode.NO_SCALE;
				
				initPlayer();
		}
		
		
		
		
		protected function initPlayer():void
		{
			//the pointer to the media
			var resource:URLResource = new URLResource( MULTICAST_F4M );
			
			// Create a mediafactory instance
			mediaFactory = new DefaultMediaFactory();
			
			//creates and sets the MediaElement (generic) with a resource and path
			var element:MediaElement = mediaFactory.createMediaElement( resource );
			
			//the simplified api controller for media
			player = new MediaPlayer( element );
			
			//the container (sprite) for managing display and layout
			container = new MediaContainer();
			container.addMediaElement( element );
			
//			player.play();
			//Adds the container to the stage
			this.addChild( container );
			
			var btn:JButton = new JButton();
			btn.name = " cesasdasdasdasda  ";
			btn.x = btn.y = btn.width = btn.height = 100;
			this.addChild( btn );
			
			player.addEventListener(TimeEvent.COMPLETE, onPlayCompleted );
		}
		
		private function onPlayCompleted(e:TimeEvent):void
		{
			trace("wad");
		}
		
	}
}
