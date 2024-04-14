---Ràng buộc
ALTER TABLE Store
ADD CONSTRAINT fk_Store
FOREIGN KEY (RegionID ) REFERENCES Region(RegionID );
 
ALTER TABLE Store
ADD CONSTRAINT fk_City
FOREIGN KEY (CityID ) REFERENCES City(CityID );
 
ALTER TABLE Store
ADD CONSTRAINT fk_District
FOREIGN KEY (DistrictID) REFERENCES District(DistrictID);
 
ALTER TABLE Product
ADD CONSTRAINT fk_cate
FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID);
 
ALTER TABLE Product
ADD CONSTRAINT fk_brand
FOREIGN KEY (BrandID) REFERENCES Brand(BrandID);

ALTER TABLE Product
ADD CONSTRAINT fk_packaging
FOREIGN KEY (PackagingID) REFERENCES Packaging(PackagingID);

ALTER TABLE Sales
ADD CONSTRAINT fk_product
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);
 
ALTER TABLE Sales
ADD CONSTRAINT fk_customer
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
 
ALTER TABLE Sales
ADD CONSTRAINT fk_employee
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
 
ALTER TABLE Sales
ADD CONSTRAINT fk_date
FOREIGN KEY (DateID) REFERENCES Time(DateID);
 
ALTER TABLE Sales
ADD CONSTRAINT fk_storesale
FOREIGN KEY (StoreID) REFERENCES Store(StoreID);
  
ALTER TABLE Customer
ADD CONSTRAINT fk_customercategory
FOREIGN KEY (CustomerCategoryID) REFERENCES CustomerCategory (CustomerCategoryID);
 
ALTER TABLE Sales
ADD CONSTRAINT fk_paymentmethod
FOREIGN KEY (MethodID) REFERENCES PaymentMethod(MethodID);




