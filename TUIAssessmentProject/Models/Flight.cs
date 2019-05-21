using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace TUIAssessmentProject.Models
{
    public class Flight
    {
        public int ID { get; set; }
        public String Name { get; set; }
    }

    public class FlightDbContext : DbContext
    { 
        public DbSet<Flight> Flights { get; set; }

        public System.Data.Entity.DbSet<TUIAssessmentProject.Models.Airport> Airports { get; set; }
    }
}