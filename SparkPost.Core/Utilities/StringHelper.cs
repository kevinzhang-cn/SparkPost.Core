using System;
using System.Collections.Generic;

namespace SparkPost.Utilities
{
    public static class StringHelper
    {
        public static string[] SplitOn(this string value, string separator)
        {
            return value.Split(new[] {separator}, StringSplitOptions.RemoveEmptyEntries);
        }

        public static string JoinWith(this IEnumerable<string> value, string separator)
        {
            return string.Join(separator, value);
        }
    }
}