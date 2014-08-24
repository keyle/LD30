package st
{
    import mx.collections.ArrayCollection;

    public class Planet
    {
        [Bindable]
        public var name:String;

        [Bindable]
        public var population:Number;

        [Bindable]
        public var image:Class;

        [Bindable]
        public var materialWanted:ArrayCollection;

        [Bindable]
        public var materialAvailable:ArrayCollection;
    }
}
