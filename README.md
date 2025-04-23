# 🗓️ Solidity Agenda

This project demonstrates how to connect two smart contracts in Solidity to build a basic **appointment reservation system** with custom availability.

---

## 📂 Contracts

### 1. `Availability.sol`
- Allows a user to set their available time slots.
    - By default, availability is set to false on ALL slots.
- Availability is defined by:
  - `day` (e.g. 0 = Monday)
  - `hour` (e.g. 9 = 9am)

### 2. `Agenda.sol`
- Lets other users reserve an available slot from someone else's agenda.
- Checks availability via `IAvailability`.
- Tracks who reserved what slot.

### 3. `IAvailability.sol`
- Simple interface to allow `Agenda.sol` to call the `isAvailable` function from `Availability.sol`.

---

## ⚙️ How to Deploy on Remix

1. **Open [Remix IDE](https://remix.ethereum.org/)**
2. Create 3 files:
   - `Availability.sol`
   - `Agenda.sol`
   - `Interfaces/IAvailability.sol`
3. Paste the code into each file respectively.
4. **Compile all contracts** using Solidity `0.8.x`.
5. **Deploy `Availability.sol`**
6. Copy its deployed address.
7. **Deploy `Agenda.sol`** using the copied address as constructor parameter.
8. Interact with the contracts via the Remix UI:
   - Set your availability in `Availability`
   - Reserve available slots from `Agenda`
