---
title: "Ondo Perps: Tokenized Stocks Just Got Leverage"
categories: ["Market", "Project Analysis"]
date: "2026-06-10"
readTime: 7
coverImage: "https://raw.githubusercontent.com/lucci-labs/archive/main/images/ondo-perps-tokenized-stocks-banner.png"
---

Ondo has launched **24/7 perpetual futures on tokenized U.S. stocks, ETFs, and commodities**, with up to **20x leverage** for non-U.S. users and a collateral model that eventually lets traders post tokenized securities — not just stablecoins — as margin. Our base view: this is not just another perps venue. It is a direct attempt to turn tokenized stocks from passive wrappers into **productive collateral**, and that is the missing primitive for on-chain prime brokerage.

The market backdrop matters. Ondo Global Markets crossed **$1B in TVL in under eight months**, claims **70%+ market share** among tokenized equity issuers, and has processed **$18B+ cumulative volume** according to Ondo's May update via [PR Newswire](https://www.prnewswire.com/news-releases/ondo-global-markets-surpasses-1-billion-in-total-value-locked-a-first-for-tokenized-stocks-302768520.html). RWA.xyz shows tokenized stocks at roughly **$911M in value as of June 10, 2026** and Ondo at **$3.86B distributed asset value** across its broader RWA stack ([RWA.xyz tokenized stocks](https://app.rwa.xyz/stocks), [RWA.xyz Ondo](https://app.rwa.xyz/platforms/ondo)). The question is no longer whether tokenized equities can attract balances. The question is whether they can support leverage, hedging, funding markets, and cross-margin without importing the same liquidation risk that made crypto perps so reflexive.

### What launched

Ondo Perps is a perpetual futures platform for tokenized real-world assets: U.S. equities, ETFs, gold, silver, and eventually a wider set of market instruments. According to launch coverage from [TheStreet](https://www.thestreet.com/crypto/innovation/ondo-is-bringing-leveraged-stock-trading-on-chain) and [BSCN](https://bsc.news/news/ondo-perps-june-9-tokenized-stocks-launch), the product went live on **June 9, 2026**, is restricted to **non-U.S. users**, and supports up to **20x leverage**.

Day-one names highlighted across announcements and coverage include **AAPL, AMZN, MSFT, NFLX, NVDA, TSLA, QQQ, XAU, and XAG**, with broader equity and commodity coverage expected. This is structurally different from tokenized spot stocks. Spot wrappers give the user exposure. Perps add **directional leverage, shorting, funding rates, and collateral velocity**.

The headline feature is collateral. Ondo is positioning tokenized securities as multi-asset margin: a trader holding TSLAon could use that exposure to collateralize a NVDA perp position instead of selling TSLAon into USDC first. Ondo's own documentation says its tokenized stocks are designed to be **transferable, DeFi-compatible, and usable as collateral in lending or perps protocols** ([Ondo docs](https://docs.ondo.finance/ondo-global-markets/overview)).

<HTMLWidget>
<div style="background:#0B0B0B;border:1px solid #1E1E1E;color:#D1D1D1;font-family:Inter,Arial,sans-serif;padding:28px;width:100%;box-sizing:border-box">
  <div style="display:grid;grid-template-columns:1.1fr 1fr;gap:24px;align-items:stretch">
    <div style="border-right:1px solid #1E1E1E;padding-right:24px">
      <div style="color:#FFFFFF;font-family:'Playfair Display',Georgia,serif;font-size:28px;letter-spacing:1.4px;text-transform:uppercase;margin-bottom:6px">ONDO PERPS STACK</div>
      <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:2px;text-transform:uppercase;margin-bottom:24px">TOKENIZED EQUITIES → COLLATERAL → PERPETUALS</div>
      <div style="display:grid;gap:12px">
        <div style="border:1px solid #1E1E1E;padding:14px;background:#080808">
          <div style="font-family:'JetBrains Mono',monospace;color:#00FFA3;font-size:11px;letter-spacing:1.8px;text-transform:uppercase">01 / Spot RWA inventory</div>
          <div style="color:#FFFFFF;font-size:20px;margin-top:5px">260+ tokenized stocks & ETFs</div>
          <div style="color:#888888;font-size:12px;margin-top:6px">Solana, Ethereum, BNB Chain distribution</div>
        </div>
        <div style="border:1px solid #1E1E1E;padding:14px;background:#080808">
          <div style="font-family:'JetBrains Mono',monospace;color:#00FFA3;font-size:11px;letter-spacing:1.8px;text-transform:uppercase">02 / Margin layer</div>
          <div style="color:#FFFFFF;font-size:20px;margin-top:5px">Tokenized securities as collateral</div>
          <div style="color:#888888;font-size:12px;margin-top:6px">TSLAon can collateralize NVDA perps; stablecoin-only margin becomes optional</div>
        </div>
        <div style="border:1px solid #1E1E1E;padding:14px;background:#080808">
          <div style="font-family:'JetBrains Mono',monospace;color:#00FFA3;font-size:11px;letter-spacing:1.8px;text-transform:uppercase">03 / Derivatives venue</div>
          <div style="color:#FFFFFF;font-size:20px;margin-top:5px">24/7 equity perps, up to 20x</div>
          <div style="color:#888888;font-size:12px;margin-top:6px">Non-U.S. access; stocks, ETFs, gold and silver</div>
        </div>
      </div>
    </div>
    <div style="display:grid;grid-template-columns:1fr 1fr;gap:12px">
      <div style="border:1px solid #1E1E1E;padding:18px;background:#0A0A0A">
        <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.7px;text-transform:uppercase">Ondo GM TVL</div>
        <div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:30px;margin-top:10px">$1B+</div>
        <div style="color:#D1D1D1;font-size:12px;margin-top:8px">Reached in under eight months</div>
      </div>
      <div style="border:1px solid #1E1E1E;padding:18px;background:#0A0A0A">
        <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.7px;text-transform:uppercase">Market share</div>
        <div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:30px;margin-top:10px">70%+</div>
        <div style="color:#D1D1D1;font-size:12px;margin-top:8px">Among tokenized equity issuers</div>
      </div>
      <div style="border:1px solid #1E1E1E;padding:18px;background:#0A0A0A">
        <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.7px;text-transform:uppercase">Cumulative volume</div>
        <div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:30px;margin-top:10px">$18B+</div>
        <div style="color:#D1D1D1;font-size:12px;margin-top:8px">Across tokenized stock platform</div>
      </div>
      <div style="border:1px solid #1E1E1E;padding:18px;background:#0A0A0A">
        <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.7px;text-transform:uppercase">Max leverage</div>
        <div style="color:#FF3B5C;font-family:'JetBrains Mono',monospace;font-size:30px;margin-top:10px">20x</div>
        <div style="color:#D1D1D1;font-size:12px;margin-top:8px">Equity perps demand strict risk controls</div>
      </div>
    </div>
  </div>
  <div style="border-top:1px solid #1E1E1E;margin-top:22px;padding-top:12px;color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.5px;text-transform:uppercase">SOURCE: ONDO, RWA.XYZ, LUCCI RESEARCH</div>
</div>
</HTMLWidget>

### Why cross-collateralization is the real product

Most crypto derivatives venues are built around one simple margin asset: USDT, USDC, or exchange-native collateral. That works for BTC and ETH perps, but it is inefficient for securities. If a user holds a tokenized equity portfolio and has to sell it into stablecoins to open a hedge, the wrapper has not meaningfully improved capital markets plumbing. It has only moved settlement rails.

Cross-collateralization changes the utility curve:

- **Holders can borrow margin utility from existing exposure.** A long-only tokenized stock position becomes margin for a short, pair trade, hedge, or sector rotation.
- **Market makers can warehouse less idle cash.** If securities and stablecoins both count toward margin, liquidity providers can quote more markets with the same balance sheet.
- **Tokenized stocks become DeFi-native collateral.** That is the bridge from “on-chain brokerage” to “on-chain prime brokerage.”

This is exactly the direction Ondo has been signaling. In [CoinDesk coverage](https://www.coindesk.com/coindesk-news/2026/02/06/ondo-wants-to-rebuild-prime-brokerage-on-chain-and-perps-are-the-first-step), Ondo framed perps as the first step toward recreating prime brokerage on-chain: custody, margin, financing, derivatives, and distribution in one workflow.

We think this is the right strategic target. The issue is not demand for U.S. equities. Demand is obvious. The issue is whether tokenized equities can support **collateral reuse without weakening the collateral stack**.

### The structural advantage: Ondo already owns distribution

Ondo is not launching perps from zero. Its spot tokenized stock platform already has scale: **260+ tokenized U.S. stocks and ETFs**, distribution across Solana, Ethereum and BNB Chain, and integrations with major wallets and exchanges including Binance, Bitget, MetaMask and Blockchain.com, according to Ondo's May TVL announcement.

That matters because equity perps are liquidity products. The moat is not the contract spec. The moat is inventory, routing, market maker depth, user distribution, and trusted collateral. Ondo's documentation says its tokenized stocks are fully backed by underlying securities and cash in transit, overcollateralized, and supported by a bankruptcy-remote structure with Ankura Trust Company as verification and security agent ([trust and transparency docs](https://docs.ondo.finance/ondo-global-markets/trust-and-transparency)).

Those details will matter more as leverage scales. A perp venue can survive modest oracle noise. It cannot survive uncertainty over whether collateral is real, redeemable, and bankruptcy-remote.

### The risk: equity perps are not crypto perps with different tickers

The product is powerful, but the risk surface is larger than the marketing headline.

First, U.S. equities still have a primary-market session. A 24/7 perp needs pricing outside normal exchange hours. That creates weekend and overnight dislocation risk, especially around earnings, macro prints, and single-stock news.

Second, cross-collateralization creates correlation risk. Using TSLAon to lever NVDA exposure may look efficient during a bull tape. In a correlated tech selloff, the collateral falls at the same time the position moves against the trader. That is how capital efficiency becomes liquidation reflexivity.

Third, regulation remains the ceiling. The platform is restricted to non-U.S. users because equity perps are not permitted for U.S. retail traders. The fact that the CFTC approved Kalshi's U.S.-regulated Bitcoin perpetual on May 29, 2026, is directionally positive for the broader product category, but it does not directly de-risk offshore equity perps.

### What we are watching next

The launch is important, but the next phase is measurable. We will track four indicators:

1. **Open interest quality** — not just OI growth, but concentration by ticker and leverage band.
2. **Funding behavior** — persistent positive funding would show directional retail demand; balanced funding would imply market-maker depth.
3. **Collateral composition** — the key milestone is the share of margin posted as tokenized securities versus stablecoins.
4. **Liquidation performance around U.S. market closures** — this is where equity perps will either prove their risk engine or expose fragile pricing.

If Ondo can keep spreads tight, liquidations orderly, and collateral haircuts conservative, Ondo Perps becomes a serious RWA liquidity engine. If not, it becomes another high-leverage venue with better tickers.

### Our view

Ondo Perps is one of the clearest signs that tokenized stocks are moving from **access product** to **market structure product**. The launch matters less because users can long or short NVDA 24/7, and more because tokenized securities are being inserted into the margin stack.

Our base case: **this is bullish for the RWA sector, selectively bullish for Ondo's ecosystem, and structurally important for on-chain derivatives**. But the product should be judged on risk management, not launch optics. Cross-collateralized equity leverage is a prime-brokerage primitive. It is also a stress test.

> If tokenized stocks can become reliable collateral, RWA stops being a passive wrapper narrative and becomes balance-sheet infrastructure. Ondo is now testing that thesis in the most reflexive market structure crypto has invented: perpetuals.
