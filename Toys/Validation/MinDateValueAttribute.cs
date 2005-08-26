using System;
using System.Reflection;

namespace Rsdn.Framework.Validation
{
	[AttributeUsage(AttributeTargets.Property)]
	public class MinDateValueAttribute : MinValueAttribute
	{
		public MinDateValueAttribute(int year, int month, int day)
			: base(new DateTime(year, month, day))
		{
		}

		public MinDateValueAttribute(int year, int month, int day, bool isExclusive)
			: base(new DateTime(year, month, day), isExclusive)
		{
		}

		public override void Validate(object value, PropertyInfo pi)
		{
			if ( IsExclusive && (DateTime)Value >= Convert.ToDateTime(value) ||
				!IsExclusive && (DateTime)Value >  Convert.ToDateTime(value))
			{
				ThrowException(pi);
			}
		}
	}
}