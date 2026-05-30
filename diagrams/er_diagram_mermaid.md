# Little Lemon ER Diagram

```mermaid
erDiagram
    Customers ||--o{ Bookings : makes
    Customers ||--o{ Orders : places
    Employees ||--o{ Bookings : handles
    Bookings ||--o{ Orders : includes
    Menus ||--o{ Orders : used_in
    MenuItems ||--o{ Menus : belongs_to
    Orders ||--o{ OrderDeliveryStatus : has

    Customers {
        int CustomerID PK
        varchar FullName
        varchar ContactNumber
        varchar Email
    }

    Employees {
        int EmployeeID PK
        varchar FullName
        varchar Role
        decimal Salary
    }

    Bookings {
        int BookingID PK
        date BookingDate
        int TableNumber
        int CustomerID FK
        int EmployeeID FK
    }

    Orders {
        int OrderID PK
        int BookingID FK
        int CustomerID FK
        int MenuID FK
        int Quantity
        decimal TotalCost
    }

    Menus {
        int MenuID PK
        int MenuItemID FK
        varchar Cuisine
    }

    MenuItems {
        int MenuItemID PK
        varchar ItemName
        varchar ItemType
        decimal Price
    }

    OrderDeliveryStatus {
        int DeliveryID PK
        int OrderID FK
        date DeliveryDate
        varchar Status
    }
