using System;
using System.Collections.Generic;

namespace QuanLyKho.Models;

public partial class Input
{
    public string Id { get; set; } = null!;

    public DateTime? DateInput { get; set; }

    public virtual ICollection<InputInfo> InputInfos { get; } = new List<InputInfo>();
}
