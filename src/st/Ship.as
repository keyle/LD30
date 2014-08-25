package st
{
    public class Ship
    {
        [Bindable]
        public var icon:Class = ImageLib.SHIP_1;

        [Bindable]
        public var capacity:uint = 1.2;

        [Bindable]
        public var age:uint; // month

        [Bindable]
        public var traderoute:Traderoute = new Traderoute();

        private static var totalid:uint = 0;
        private var id:uint = 0;

        public function Ship()
        {
            this.id = ++totalid;
        }

        public function newTradeRoute(t:Traderoute):void
        {
            traderoute = t;
        }

        public function toString():String
        {
            return "ship" + this.id;
        }
    }
}
