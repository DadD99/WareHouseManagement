using System;
using System.Collections.Generic;

namespace QuanLyKho.Models;

public partial class OutputInfo
{
    public string Id { get; set; } = null!;

    public string IdObject { get; set; } = null!;

    public string? IdOutput { get; set; }

    public string IdInputInfo { get; set; } = null!;

    public int? Count { get; set; }

    public int IdCustomer { get; set; }

    public string? Status { get; set; }

    public virtual Customer IdCustomerNavigation { get; set; } = null!;

    public virtual InputInfo IdInputInfoNavigation { get; set; } = null!;

    public virtual Object IdObjectNavigation { get; set; } = null!;

    public virtual Output? IdOutputNavigation { get; set; }
}
