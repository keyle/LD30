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

        [Bindable]
        public var needsFood:Boolean;

        [Bindable]
        public var needsMedicine:Boolean;

        [Bindable]
        public var needsCarbon:Boolean;

        [Bindable]
        public var needsOxygen:Boolean;

        [Bindable]
        public var needsWater:Boolean;

        public function toString():String
        {
            return name;
        }

    }
}
