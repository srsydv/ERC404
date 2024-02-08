// const { upgrades } = require("hardhat");
const hre = require("hardhat");
require('dotenv').config()

// import "../contracts/Libraries/LibERC404.sol";

let walletAddress = process.env.WALLET_ADDRESS


async function main() {
    // const erc404 = await hre.ethers.deployContract("ERC404", ["Shrish", "SRS", 18, 100, "0xf69F75EB0c72171AfF58D79973819B6A3038f39f"]);
    // await erc404.waitForDeployment();
    // console.log("ERC404:", await erc404.getAddress());

    // const Lib = await ethers.getContractFactory("LibERC404");
    // const lib = await Lib.deploy();
    // await lib.deployed();

  //   const LibPool = await hre.ethers.deployContract("LibERC404", []);
  // await LibPool.waitForDeployment();


    // const contractFactory = await ethers.getContractFactory("ERC404Factory", {
    //   // signer: signers[0],
    //   libraries: {
    //     TokenTrait: LibPool.address,
    //   },
    // });

    // contract = await contractFactory.deploy();

    const pndr = await hre.ethers.deployContract("ERC404Factory", []);
    await pndr.waitForDeployment();

    // let aa = await pndr.deployERC404("0xf69F75EB0c72171AfF58D79973819B6A3038f39f")
    console.log("pndr:", await pndr.getAddress());
    // console.log("pndr:", await aa);
  
  
  }
  
  // We recommend this pattern to be able to use async/await everywhere
  // and properly handle errors.
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });