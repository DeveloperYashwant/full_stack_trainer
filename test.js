const readline = require("readline"); // Imports the 'readline' module for reading user input from the console.

const rl = readline.createInterface({ // Creates an interface for reading input and writing output.
    input: process.stdin, // Sets the input stream to standard input (the console).
    output: process.stdout, // Sets the output stream to standard output (the console).
});

class ShoppingCart { // Defines a class named 'ShoppingCart'.
    constructor() { // Constructor initializes the shopping cart.
        this.cart = []; // Initializes an empty array to store cart items.
    }

    
    addItem(name, price, quantity = 1) { // Method to add an item to the cart.
        if (isNaN(price) || isNaN(quantity) || quantity <= 0 || price <= 0) { // Checks if price or quantity is not a number or is invalid.
            console.log("Invalid price or quantity!"); // Logs an error message.
            return; // Exits the method.
        }

        const existingItem = this.cart.find((item) => item.name === name); // Checks if an item with the same name already exists in the cart.
        if (existingItem) { // If the item exists:
            existingItem.quantity += quantity; // Increases the quantity of the existing item.
            console.log(`Updated ${name} quantity to ${existingItem.quantity}`); // Logs an update message.
        } else { // If the item does not exist:
            this.cart.push({ name, price, quantity }); // Adds a new item to the cart.
            console.log(`Added ${quantity}x ${name} to the cart`); // Logs an add message.
        }
    }

    removeItem(name) { // Method to remove an item from the cart.
        const itemIndex = this.cart.findIndex((item) => item.name === name); // Finds the index of the item to remove.
        if (itemIndex !== -1) { // If the item is found:
            if (this.cart[itemIndex].quantity > 1) { // If the item's quantity is greater than 1:
                this.cart[itemIndex].quantity--; // Decreases the quantity by 1.
                console.log(`Reduced quantity of ${name} to ${this.cart[itemIndex].quantity}`); // Logs a quantity reduction message.
            } else { // If the item's quantity is 1:
                this.cart.splice(itemIndex, 1); // Removes the item from the cart.
                console.log(`${name} removed from the cart`); // Logs a removal message.
            }
        } else { // If the item is not found:
            console.log(`${name} not found in the cart!`); // Logs a not found message.
        }
    }

    getTotalPrice() { // Method to calculate and display the total price of items in the cart.
        if (this.cart.length === 0) { // If the cart is empty:
            console.log("Cart is empty!"); // Logs an empty cart message.
            return; // Exits the method.
        }

        let total = 0; // Initializes the total price to 0.
        console.log("Item Totals:"); // Logs a header for item totals.
        this.cart.forEach((item) => { // Iterates through each item in the cart:
            const itemTotal = item.price * item.quantity; // Calculates the total price for the current item.
            console.log(`  ${item.name}: $${item.price} x ${item.quantity} = $${itemTotal}`); // Logs the item's total price.
            total += itemTotal; // Adds the item's total price to the overall total.
        });

        console.log(`\nTotal Price: $${total}`); // Logs the overall total price.
    }

    displayCart() { // Method to display the items in the cart.
        if (this.cart.length === 0) { // If the cart is empty:
            console.log("Your cart is empty."); // Logs an empty cart message.
            return; // Exits the method.
        }

        console.log("Your Cart:"); // Logs a header for the cart contents.
        this.cart.forEach((item) => { // Iterates through each item in the cart:
            console.log(`  👉 ${item.quantity}x ${item.name} - $${item.price} each`); // Logs the item's details.
        });
    }

    changeQuantity(name, quantity){ // Method to change quantity of an item.
        const item = this.cart.find((item) => item.name === name); // Finds an item with the same name.
        if(item){ // If item is found
            if (isNaN(quantity) || quantity <= 0) { // If quantity is not a number or less than 0
                console.log("Invalid quantity!"); // Log invalid quantity.
                return; // exit the function.
            }
            item.quantity = quantity; // sets the quantity to the new value.
            console.log(`quantity of ${item.name} changed to ${item.quantity}`); // logs the quantity change.
        } else { // if item is not found.
            console.log(`${name} not found in the cart!`); // logs item not found.
        }
    }
}

const myCart = new ShoppingCart(); // Creates an instance of the 'ShoppingCart' class.

function startShopping() { // Function to start the shopping process.
    console.log("\nWelcome to the Shopping Cart!"); // Logs a welcome message.
    console.log("1️ Add Item\n2️ Remove Item\n3️ View Cart\n4️ Get Total Price\n5️ Change Quantity\n6️ Exit"); // Logs the menu options.

    rl.question("\nChoose an option (1-6): ", (choice) => { // Prompts the user to choose an option.
        switch (choice) { // Starts a switch statement to handle user input.
            case "1": // If the user chooses option 1 (Add Item):
                rl.question("Enter item name: ", (name) => { // Prompts the user to enter the item name.
                    rl.question("Enter item price: ", (price) => { // Prompts the user to enter the item price.
                        rl.question("Enter quantity: ", (quantity) => { // Prompts the user to enter the quantity.
                            myCart.addItem(name, parseFloat(price), parseInt(quantity, 10)); // Adds the item to the cart.
                            startShopping(); // Restarts the shopping process.
                        });
                    });
                });
                break;
            case "2": // If the user chooses option 2 (Remove Item):
                rl.question("Enter item name to remove: ", (name) => { // Prompts the user to enter the item name to remove.
                    myCart.removeItem(name); // Removes the item from the cart.
                    startShopping(); // Restarts the shopping process.
                });
                break;
            case "3": // If the user chooses option 3 (View Cart):
                myCart.displayCart(); // Displays the cart contents.
                startShopping(); // Restarts the shopping process.
                break;
            case "4": // If the user chooses option 4 (Get Total Price):
                myCart.getTotalPrice(); // Calculates and displays the total price.
                startShopping(); // Restarts the shopping process.
                break;
            case "5": // If the user chooses option 5 (Change Quantity):
                rl.question("Enter item name to change quantity: ", (name) => { // prompts user to enter item name.
                    rl.question("Enter new Quantity: ", (quantity)=>{ // prompts user to enter new quantity.
                        myCart.changeQuantity(name, parseInt(quantity,10)); // changes the quantity of the item.
                        startShopping(); // restarts the shopping process.
                    });
                });
                break;
            case "6": // If the user chooses option 6 (Exit):
                console.log("Thanks for shopping! Goodbye!"); // Logs a goodbye message.
                rl.close(); // Closes the readline interface.
                break;
            default: // If the user enters an invalid option:
                console.log("Invalid choice! Enter a number between 1 and 6."); // Logs an error message.
                startShopping(); // Restarts the shopping process.
                break;
        }
    });
}

startShopping(); // Starts the shopping process.