package st
{
    import mx.collections.ArrayCollection;

    public class TradeRoute
    {
        [Bindable]
        public var name:String;

        [Bindable]
        [ArrayElementType("st.TradeStep")]
        public var tradeSteps:ArrayCollection;
    }
}
