package
{
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.text.TextField;
    import flash.text.TextFieldAutoSize;
    import flash.utils.getTimer;

    public class FPSCounter extends Sprite
    {
        private var last:uint = getTimer();
        private var ticks:uint = 0;
        private var tf:TextField;

        public function FPSCounter(xPos:int = 0, yPos:int = 0, color:uint = 0x333333, fillBackground:Boolean = false, backgroundColor:uint = 0x000000)
        {
            x = xPos;
            y = yPos;
            tf = new TextField();
            tf.textColor = color;
            tf.text = "----- FPS";
            tf.selectable = false;
            tf.background = fillBackground;
            tf.backgroundColor = backgroundColor;
            tf.autoSize = TextFieldAutoSize.LEFT;
            addChild(tf);
            width = tf.textWidth;
            height = tf.textHeight;
            addEventListener(Event.ENTER_FRAME, tick, false, 0, true);
        }

        public function tick(evt:Event):void
        {
            ticks++;
            const now:uint = getTimer();
            const delta:uint = now - last;
            if (delta >= 250) {
                var fps:Number = ticks / delta * 1000;
                tf.text = fps.toFixed(1) + " FPS";
                ticks = 0;
                last = now;
            }
        }
    }
}
