package st
{
    import mx.collections.ArrayCollection;

    public class Traderoute
    {
        [Bindable]
        [ArrayElementType("st.TradeStep")]
        public var tradeSteps:ArrayCollection = new ArrayCollection();

        [Bindable]
        public var active:Boolean = true;

        [Bindable]
        public var ship:Ship;

        public function toString():String
        {
            if (tradeSteps[0] && tradeSteps[1])
                return ship + ": " + TradeStep(tradeSteps[0]).colony + " - " + TradeStep(tradeSteps[1]).colony + "   ("
                        + TradeStep(tradeSteps[0]).load + " - " + TradeStep(tradeSteps[1]).load + ")";
            else
                return "inactive Traderoute"
        }
    }
}
