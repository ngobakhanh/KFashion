﻿using KFashion.Models.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashion.Services
{
    public interface IProductService
    {
        IEnumerable<Product> GetAllProduct(int productIndex);
        ProductDetail GetProductById(int productId);
    }
}
