using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace TUIAssessmentProject.Models
{
    [Table("Airport")]
    public class Airport
    {
        [Key]
        public int ID { get; set; }
        
        public String AirportName { get; set; }
        public String CityName { get; set; }

        [Required]
        [Range(-180, 180)]
        public Double Longitude { get; set; }

        [Required]
        [Range(-90, 90)]
        public Double Latitude { get; set; }
    }
}