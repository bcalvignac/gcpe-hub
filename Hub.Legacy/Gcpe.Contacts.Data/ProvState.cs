//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MediaRelationsDatabase
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProvState
    {
        public ProvState()
        {
            this.CompanyAddresses = new HashSet<CompanyAddress>();
            this.ContactAddresses = new HashSet<ContactAddress>();
        }
    
        public System.Guid Id { get; set; }
        public string ProvStateName { get; set; }
        public string ProvStateAbbrev { get; set; }
        public System.DateTime CreationDate { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public int SortOrder { get; set; }
    
        public virtual ICollection<CompanyAddress> CompanyAddresses { get; set; }
        public virtual ICollection<ContactAddress> ContactAddresses { get; set; }
    }
}
