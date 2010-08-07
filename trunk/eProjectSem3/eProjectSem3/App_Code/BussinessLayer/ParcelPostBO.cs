using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data;
/// <summary>
/// Summary description for ParcelPostBO
/// </summary>
public class ParcelPostBO
{
    DBhelper helper = new DBhelper();
	public ParcelPostBO()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetServiceDetailParcelPostFromLocation(string parcelFrom, string parcelTo)
    {
        
        List<SqlParameter> list = new List<SqlParameter>();
        SqlParameter paraFrom = new SqlParameter("@parcelFrom", SqlDbType.NVarChar);
        SqlParameter paraTo = new SqlParameter("@parcelTo", SqlDbType.NVarChar);
        paraFrom.Value = parcelFrom;
        paraTo.Value = parcelTo;
        list.Add(paraFrom);
        list.Add(paraTo);

        return helper.ExecuteQuerry("sp_CalculateLocation", list);
    }
    public DataTable GetFeeFromParcelName(string parcelName)
    {
        List<SqlParameter> list = new List<SqlParameter>();
        SqlParameter paraParcelName= new SqlParameter("@parcelName", SqlDbType.NVarChar);
        paraParcelName.Value = parcelName;
        list.Add(paraParcelName);
        return helper.ExecuteQuerry("sp_CalculateFee", list);
    }
}
