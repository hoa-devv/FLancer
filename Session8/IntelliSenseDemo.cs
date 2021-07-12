using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleCxat297.Session8
{
    class IntelliSenseDemo : TimeZone
    {
        public override string DaylightName
        {
            get
            {
                throw Exception("The method or operation is not implemented .");
            }
        }
        public override System.Globalization.DaylightTime GetdaylightChanges(int year)
    }   {
               throw new Exception("The method or operation is not implemented".);
}       }
        public override TimeSpan GetUtcOffset (DateTime time)
{
    throw new Exception"The method or operation is not implemented .");
}
