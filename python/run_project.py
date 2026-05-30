import mysql.connector as connector

try:
    from config import dbconfig
except ImportError:
    print("Rename config_template.py to config.py and add your own MySQL credentials.")
    raise


def main():
    connection = connector.connect(**dbconfig)
    cursor = connection.cursor()

    print("Connected to Little Lemon database.")

    print("\nCalling GetMaxQuantity():")
    cursor.callproc("GetMaxQuantity")
    for result in cursor.stored_results():
        print(result.fetchall())

    print("\nCalling ManageBooking():")
    cursor.callproc("ManageBooking", ("2022-10-10", 5))
    for result in cursor.stored_results():
        print(result.fetchall())

    print("\nCalling AddBooking():")
    cursor.callproc("AddBooking", (8, 4, "2022-12-19", 7))
    for result in cursor.stored_results():
        print(result.fetchall())
    connection.commit()

    print("\nCalling UpdateBooking():")
    cursor.callproc("UpdateBooking", (8, "2022-12-20"))
    for result in cursor.stored_results():
        print(result.fetchall())
    connection.commit()

    print("\nCalling CancelBooking():")
    cursor.callproc("CancelBooking", (8,))
    for result in cursor.stored_results():
        print(result.fetchall())
    connection.commit()

    cursor.close()
    connection.close()
    print("\nConnection closed.")


if __name__ == "__main__":
    main()
