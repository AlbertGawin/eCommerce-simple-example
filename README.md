# eCommerce-simple-example

## App Functionality
- The main screen displays a list of products. Artificial loading has been added to simulate fetching items from the internet (2-second delay).  
- Each item has a button that adds it to the cart when clicked.  
- In the top right corner is a cart icon showing the number of items currently in the cart.  
- Clicking the cart icon navigates to the cart screen, displaying a list of selected items.  
- At the bottom of the cart screen, the total price of all items is shown.  
- Each item in the cart can be removed by clicking the minus icon.

## App Architecture
The application is divided into three main layers:
- `Data` – responsible for retrieving data. This separation makes it easy to later replace the current logic with actual online image fetching.  
- `Domain` – acts as an intermediary between the data and presentation layers, maintaining data consistency.  
- `Presentation` – responsible for the UI, presenting the data to the user.

This structured approach ensures maintainability and makes it easier to add new features in the future.

## Application States (Bloc)
The app uses two main blocs for state management:
- `ProductState` – responsible for reading product data from the database.  
- `CartState` – stores cart information and the list of items currently in the cart.  

This separation makes state management more efficient and avoids sending large product lists (sometimes hundreds or thousands of items) to the cart state.  
Each state also includes an enum indicating connection status (`ResponseStatus`), making it easy to handle errors and load states gracefully.

## Technical Notes
- The UI was created quickly to stay within a 3-hour time limit. Most of the time was dedicated to implementing the key features described above.  
- Artificial loading was added to simulate network delays (2 seconds).  
- Images were downscaled (perhaps slightly too much) to avoid loading artifacts when navigating between screens.  
