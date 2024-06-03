using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace GSTOCK_API.Models;

[Table("products")]
public partial class Product
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("code")]
    [StringLength(20)]
    public string? Code { get; set; }

    [Column("name")]
    [StringLength(1000)]
    public string? Name { get; set; }

    [Column("description")]
    [StringLength(100)]
    public string? Description { get; set; }

    [Column("image")]
    [StringLength(28)]
    public string? Image { get; set; }

    [Column("price")]
    public int? Price { get; set; }

    [Column("date_creat", TypeName = "datetime")]
    public DateTime? DateCreat { get; set; }

    [Column("category")]
    [StringLength(200)]
    public string? Category { get; set; }

    [Column("quantity")]
    public int? Quantity { get; set; }

    [Column("inventory_status")]
    [StringLength(10)]
    public string? InventoryStatus { get; set; }

    [Column("rating")]
    public int? Rating { get; set; }
}
