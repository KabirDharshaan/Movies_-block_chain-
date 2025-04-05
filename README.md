
# 🎬 Movie Storage Smart Contract (Solidity)

This Solidity smart contract demonstrates how to store and manage a list of movies and their authors using **structs inside structs**. It's a great introduction to **nested data types**, **dynamic arrays**, and Solidity basics.

---

## 📜 License Declaration

```solidity
// SPDX-License-Identifier: MIT
```

Declares the license type for this smart contract.  
MIT license allows reuse, modification, and distribution with proper credit.

---

## ⚙️ Solidity Version

```solidity
pragma solidity ^0.8.10;
```

Ensures the smart contract is compiled using Solidity version **0.8.10 or higher**.

---

## 🧱 Contract Declaration

```solidity
contract Practise {
```

Defines a new smart contract called `Practise`.  
Think of a contract as a container of code and data on the blockchain.

---

## 🎞️ Struct: Films

```solidity
struct Films {
    string filmName;
    string author;
}
```

- `struct` is used to group multiple related variables.  
- `Films` holds:
  - `filmName`: The name/title of the film.  
  - `author`: The person who created or directed the film.

---

## 🎬 Struct: Movie

```solidity
struct Movie {
    Films films;
}
```

- This struct wraps around another struct (`Films`), showing **nested struct usage**.  
- Allows better organization and future extensibility.

---

## 🎥 Movie Storage (Dynamic Array)

```solidity
Movie[] public movie;
```

- A dynamic array to store all `Movie` entries.  
- `public` keyword generates a getter function automatically to read the data.

---

## ➕ Add Movie Function

```solidity
function addValue(string memory _filmName, string memory _author) public {
    movie.push(
        Movie({
            films: Films({
                filmName: _filmName,
                author: _author
            })
        })
    );
}
```

### 🔍 Breakdown:

- `addValue` lets users add new movies to the array.

**Parameters:**

- `_filmName`: Title of the movie.
- `_author`: Creator/author/director.

**Inside the function:**

- We create a `Films` struct with values.  
- Then create a `Movie` struct that holds this `Films`.  
- Finally, we push it into the `movie` array.

---

## ✅ Features

- Add new movies to the blockchain.
- Store movie title and author using structured data.
- Learn how to use nested structs in Solidity.

---

## 🔮 Future Enhancements

- Add a function to get all movies with names and authors.
- Add functionality to delete or update movie entries.
- Add search capability by name or author.

---

## 🛠️ Built With

- **Solidity** – Ethereum smart contract language  
- **Remix IDE or Hardhat** – For compiling and deploying  
- **MetaMask** – Optional for testing with real accounts

---

## 🙌 Author

- **Kabir Dharshaan**
- 🎓 Squad 81 – Kalasalingam University
- 📧 Email: dharshaankabir@gmail.com

---

## 🧠 Notes for Beginners

- `memory` keyword is used for temporary storage (for function parameters).  
- `public` allows external calls to the function.  
- `push()` dynamically adds data to arrays.  
- Smart contracts are **immutable** once deployed – plan your structure carefully!

---

## ⭐️ Contribution

This is a part of my learning journey in Solidity and blockchain development.  
You’re welcome to fork, improve, or suggest better designs!

---

## 📂 File: Practise.sol

```solidity
// SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Practise {
    struct Films {
        string filmName;
        string author;
    }

    struct Movie {
        Films films;
    }

    Movie[] public movie;

    function addValue(string memory _filmName, string memory _author) public {
        movie.push(
            Movie({
                films: Films({
                    filmName: _filmName,
                    author: _author
                })
            })
        );
    }
}
```

---
