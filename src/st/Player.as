package st
{
    import mx.collections.ArrayCollection;

    public class Player
    {
        [Bindable]
        public var cashNow:Number;
        [Bindable]
        public var profit:Number;
        [Bindable]
        public var cashstart:Number;
        [Bindable]
        public var borrowed:Number;
        [Bindable]
        public var interest:Number;
        [Bindable]
        public var ships:ArrayCollection;
        [Bindable]
        public var colonies:ArrayCollection;
    }

    public class Ship
    {
        [Bindable]
        public var icon:Class;
        [Bindable]
        public var capacity:uint;
        [Bindable]
        public var traderoutes:ArrayCollection;
    }

    public class TradeRoute
    {
        [Bindable]
        public var name:String;
        [Bindable]
        public var tradeSteps:ArrayCollection;
        
    }
}
