## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge create --rpc-url <your_rpc_url> --private-key <your_private_key> --constructor-args <your_constructor_argument> --etherscan-api-key <your_etherscan_api_key> --verify src/<your_solidity_script_filename:your_contract_name>
```

### Verify
```shell
$ forge verify-contract <your_contract_address> src/<your_solidity_script_filename:your_contract_name> --chain sepolia --etherscan-api-key <your_etherscan_api_key> --watch --constructor-args <your_constructor_argument_in_ABI_bytecode>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
