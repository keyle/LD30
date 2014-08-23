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
        [ArrayElementType("st.Ship")]
        public var ships:ArrayCollection;

        [Bindable]
        public var colonies:ArrayCollection;
    }


}
