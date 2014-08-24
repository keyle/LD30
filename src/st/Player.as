package st
{
    import mx.collections.ArrayCollection;

    public class Player
    {
        [Bindable] // billions
        public var cashNow:Number = 50;

        [Bindable]
        public var profit:Number = 0;

        [Bindable]
        public var cashstart:Number = 50;

        [Bindable]
        public var borrowed:Number = 0;

        [Bindable]
        public var interest:Number = 0.03;

        [Bindable]
        public var fixedCost:Number = 1.2;

        [Bindable]
        [ArrayElementType("st.Ship")]
        public var ships:ArrayCollection = new ArrayCollection();

        [Bindable]
        public var colonies:ArrayCollection = new ArrayCollection();

        public function processNewYear():void
        {
            cashNow -= fixedCost;
            cashNow -= interest * borrowed;
            cashNow = Number(cashNow.toFixed(2));
        }
    }

}
