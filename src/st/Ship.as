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
        [ArrayElementType("st.TradeRoute")]
        public var traderoutes:ArrayCollection;

        public function newTradeRoute(steps:Array):void
        {
            var t:TradeRoute = new TradeRoute();
            t.tradeSteps = new ArrayCollection(steps);
            traderoutes.addItem(t);
        }
    }
}
