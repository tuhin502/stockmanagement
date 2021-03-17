using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.BLL
{
    public class CategoryManager
    {
        CategoryGateway categoryGateway = new CategoryGateway();

        public string Save(Category category)
        {
            if(category.Name == "")
            {
                return "Please Input a Name";
            }
            else if(categoryGateway.IsCategoryNameExist(category.Name))
            {
                return "Category Name Already Exist";
            }
            else
            {
                int rowAffect = categoryGateway.Save(category);

                if (rowAffect > 0)
                {
                    return "Save Successful";
                }
                else
                {
                    return "Save Failed";
                }

            }          

        }

        public List<Category> GetAllCategory()
        {
            return categoryGateway.GetAllCategory();
        }

        public Category GetCategoryById(int id)
        {
            return categoryGateway.GetCategoryById(id);
        }

        public string UpdateById(Category category)
        {
            int rowAffect = categoryGateway.UpdateById(category);

            if (rowAffect > 0)
            {
                return "Update Successful";
            }
            else
            {
                return "Update Failed";
            }
        }
        public string DeleteById(int id)
        {
            int rowAffect = categoryGateway.DeleteById(id);

            if (rowAffect > 0)
            {
                return "Delete Successful";
            }
            else
            {
                return "Delete Failed";
            }
        }

    }
}