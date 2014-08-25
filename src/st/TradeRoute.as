package st
{
    import mx.collections.ArrayCollection;

    public class Traderoute
    {
        [Bindable]
        [ArrayElementType("st.TradeStep")]
        public var tradeSteps:ArrayCollection = new ArrayCollection();

        public function toString():String
        {
            return "traderoute (" + tradeSteps.length + ")";
        }
    }
}
