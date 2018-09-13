using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using KFashion.Models;
using Microsoft.AspNetCore.Routing;
using KFashion.Services;

namespace KFashion.Controllers
{
    public class HomeController : Controller
    {
        private readonly ICategoryService _categoryService;
        private readonly IProductService _productService;
        public HomeController(ICategoryService categoryService,
            IProductService productService)
        {
            _categoryService = categoryService;
            _productService = productService;
        }

        //[Route("trang-chu")]
        public IActionResult Index()
        {
            return View();
        }

        //[Route("san-pham/{id?}")]
        public IActionResult Product(int productIndex)
        {
            ViewData["ProductIndex"] = productIndex;
            var model = _productService.GetAllProduct(productIndex);
            return View(model);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }
        //[Route("chi-tiet-san-pham/{productId}")]
        public IActionResult ProductDetail(int productId)
        {
            var ipAddress = HttpContext.Connection.RemoteIpAddress;
            ViewData["IpAddress"] = ipAddress;
            var model = _productService.GetProductById(productId);
            return View(model);
        }

        public IActionResult Contact()
        {
            return View();
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
