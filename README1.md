# nft_ether_hardhat_learning

This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.js`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.js`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.



## 1.npx create-next-app nft_learning  
    安装react,react-dom,next
## 2.cd nft_learning
## 3.npm i hardhat
## 4.npx hardhat 设置hardhat环境  选择js选项demo，删除readme文件
## 5.   yarn add --dev "hardhat@^2.9.9" "@nomicfoundation/hardhat-toolbox@^1.0.1" "@nomicfoundation/hardhat-network-helpers@^1.0.0" "@nomicfoundation/hardhat-chai-matchers@^1.0.0" "@nomiclabs/hardhat-ethers@^2.0.0" "@nomiclabs/hardhat-etherscan@^3.0.0" "chai@^4.2.0" "ethers@^5.4.7" "hardhat-gas-reporter@^1.0.8" "solidity-coverage@^0.7.21" "@typechain/hardhat@^6.1.2" "typechain@^8.1.0" "@typechain/ethers-v5@^10.1.0" "@ethersproject/abi@^5.4.7" "@ethersproject/providers@^5.4.7"

 yarn add --dev @nomiclabs/hardhat-waffle 'ethereum-waffle@^3.0.0' @nomiclabs/hardhat-ethers 'ethers@^5.0.0'

## 5. npx hardhat node 运行一个测试网络
## 6. 另起一个终端 ，运行前端项目 cd nft_learn
    npm run dev




## 另起一个终端，npx hardhat console，连接区块链，直接命令行获取相关信息
  await hre.ethers
  const hardhat =new ethers.providers.JsonRpcProvider("http://localhost:8545")
   await hre.ethers.provider.getBlock("latest");//获取最新的时间戳

  const lastblock=await hre.ethers.provider.getBlock("latest");
  lastblock.timestamp
  lastblock.gasLimit


 const polygon= new ethers.providers.JsonRpcProvider("https://polygon-rpc.com")

 await polygon2.getBlock("latest");  获取最新的块




