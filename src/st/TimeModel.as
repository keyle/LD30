package st
{
    import flash.utils.setInterval;

    public class TimeModel
    {
        [Inject]
        public var player:Player;

        [Bindable]
        public var speed:Number = 1.0;

        private static const monthTime:Number = 5 * 1000;

        [Bindable]
        public var currentMonth:uint = 8;

        [Bindable]
        public var currentMonthHuman:String = Months.months[currentMonth];

        [Bindable]
        public var totalMonths:uint = 1;

        [Bindable]
        public var currentYear:uint = 3014;

        [Init]
        public function onParsleyInit():void
        {
            setInterval(onNewMonth, monthTime * speed);
        }

        private function onNewMonth():void
        {
            totalMonths++;
            currentMonth++;
            if (currentMonth > 12) {
                currentMonth = 1;
                currentYear++;
                player.processNewYear();
                trace("new year " + currentYear);
            }
            player.processNewMonth();

            currentMonthHuman = Months.months[currentMonth];
            trace("new month " + currentMonthHuman);
        }
    }

}

class Months
{
    public static var months:Array = ["nil", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
}
