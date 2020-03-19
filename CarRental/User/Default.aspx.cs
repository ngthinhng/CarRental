﻿using CarRental.Account;
using CarRental.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRental.User
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole(nameof(RoleType.User)))
            {
                Response.Redirect(GetRouteUrl("Default", null));
            }
        }
    }
}