package st
{
    import flash.events.Event;

    import spark.components.SkinnableContainer;

    public class Asteroids extends SkinnableContainer
    {
        [ArrayElementType("Rock")]
        public var arr:Array;

        public function Asteroids()
        {
            this.addEventListener(Event.ADDED_TO_STAGE, addedToStage, false, 0, true);
            this.addEventListener(Event.ENTER_FRAME, enterFrame, false, 0, true);
        }

        private function enterFrame(event:Event):void
        {
            if (!arr)
                return;

            for (var i:int = 0; i < 40; i++) {
                arr[i].update();
            }
        }

        private function addedToStage(event:Event):void
        {
            arr = [];
            for (var i:int = 0; i < 40; i++) {
                arr.push(new Rock(this));
            }
        }
    }
}

import spark.primitives.BitmapImage;

import st.Asteroids;

class Rock
{
    private var image:BitmapImage;
    private var parent:Asteroids;

    private var sizedev:Number = 0.5 + Math.random() * 0.5;
    private var deviationx:Number = Math.random() * 0.4 * sizedev * 2;
    private var deviationy:Number = Math.random() * 0.4 * sizedev * 2;

    public function Rock(parent:Asteroids)
    {
        image = new BitmapImage();

        image.source = ImageLib.ASTEROID;
        image.width = 25 * sizedev;
        image.height = 25 * sizedev;
        this.parent = parent;
        parent.addElement(image);

        initPos();
    }

    private function initPos():void
    {
        image.x = parent.stage.stageWidth * Math.random() - 150;
        image.y = parent.stage.stageHeight * Math.random() - 8;
    }

    public function update():void
    {
        image.x -= 0.4 + deviationx;
        image.y -= 0.3 + deviationy;

        if (image.x < -30) {
            image.x = parent.stage.stageWidth;
        }
        else if (image.x > parent.stage.stageWidth) {
            image.x = -30;
        }

        if (image.y < -30) {
            image.y = parent.stage.stageHeight;
        }
        else if (image.y > parent.stage.stageHeight) {
            image.y = -30;
        }

        image.x = Math.floor(image.x);
        image.y = Math.floor(image.y);
    }
}
