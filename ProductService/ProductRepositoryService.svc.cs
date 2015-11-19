﻿using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Security.AccessControl;
using System.ServiceModel;
using System.ServiceModel.Dispatcher;
using System.ServiceModel.Web;
using System.Text;
using System.Web.Script.Serialization;
using System.Xml;
using System.Xml.Serialization;
using MngrPaycheck.DAL.Context;
using MngrPaycheck.DAL.Repositories.Abstract;
using MngrPaycheck.Entity;
using Newtonsoft.Json;

namespace ProductService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class ProductRepositoryService : IProductRepositoryService
    {
        public string GetProducts()
        {
            var settings = new JsonSerializerSettings()
            {
                PreserveReferencesHandling = PreserveReferencesHandling.Objects,
            };

            WrapperProduct wrapperProduct = new WrapperProduct();
            string json = JsonConvert.SerializeObject(wrapperProduct, settings);

            return json;
        }
    }
}