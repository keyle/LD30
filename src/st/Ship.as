package st
{
    import mx.collections.ArrayCollection;

    public class Ship
    {
        [Bindable]
        public var icon:Class = ImageLib.SHIP_1;

        [Bindable]
        public var capacity:uint = 1.2;

        [Bindable]
        public var traderoute:TradeRoute = new TradeRoute();

        private static var totalid:uint = 0;
        private var id:uint = 0;

        public function Ship()
        {
            this.id = ++totalid;
        }

        public function newTradeRoute(steps:Array):void
        {
            traderoute.tradeSteps = new ArrayCollection(steps);
        }

        public function toString():String
        {
            return "s" + this.id + "/" + traderoute;
        }
    }
}
