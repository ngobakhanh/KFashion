using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using KFashion.Models.Product;
using KFashion.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace KFashion.Controllers
{
    [Route("api/[controller]")]
    public class ProductController : Controller
    {
        private readonly IProductService _productService;
        public ProductController(IProductService productService)
        {
            _productService = productService;
        }

        [HttpGet("{GetListProduct}")]
        public IEnumerable<Product> GetListProduct(int productIndex)
        {
            return _productService.GetAllProduct(productIndex);
             
        }
        // GET: api/<controller>
        [HttpGet("GetProductDetail/{productId}")]
        public ProductDetail GetProductDetail(int productId)
        {
            return _productService.GetProductById(productId);
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
