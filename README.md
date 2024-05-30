# AMADEUS
 Amadeus Tech test using Netcore 8 and Angular
# Product Management App and API

This repository contains the source code for a Product Management web application and its corresponding API.

## Installation

### Product Management App (Angular)

1. Clone this repository:

    ```bash
    git clone <product-management-app-repo-url>
    ```

2. Navigate to the `product-management-app` directory:

    ```bash
    cd product-management-app
    ```

3. Install dependencies:

    ```bash
    npm install
    ```

### Product Management API (.NET Core)

1. Clone this repository:

    ```bash
    git clone <product-management-api-repo-url>
    ```

2. Navigate to the `ProductManagementApi` directory:

    ```bash
    cd ProductManagementApi
    ```

3. Build the solution:

    ```bash
    dotnet build
    ```

## Running the Application

### Product Management App (Angular)

1. Navigate to the `product-management-app` directory:

    ```bash
    cd product-management-app
    ```

2. Run the application:

    ```bash
    npm start
    ```

3. Open your browser and navigate to `http://localhost:4200/`.

### Product Management API (.NET Core)

1. Navigate to the `ProductManagementApi` directory:

    ```bash
    cd ProductManagementApi
    ```

2. Run the API:

    ```bash
    dotnet run
    ```

3. The API will start and be accessible at `http://localhost:5016/`.

## DATABASE

For the database please create a MYSQL Server 16.0.1 with this name: DESKTOP-IB90627
Create a Database with the name [ProductManagementDB] and be sure to add the user as owner as shown in this image /README/DBCreation
Then execute the sql DATABASEINIT.sql file to setup the initial state of the database.

## Contributing

If you'd like to contribute to this project, please fork the repository and submit a pull request. You can also open issues for bug reports or feature requests.

## License

This project is licensed under the [MIT License](LICENSE).

