package st
{
    import mx.collections.ArrayCollection;

    public class Ship
    {
        [Bindable]
        public var icon:Class;

        [Bindable]
        public var capacity:uint = 1.2;

        [Bindable]
        [ArrayElementType("st.TradeRoute")]
        public var traderoutes:ArrayCollection;
    }
}
