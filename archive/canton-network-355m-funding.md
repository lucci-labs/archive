---
title: "Canton Network's $355M Funding Round: Why Wall Street Is Buying Privacy Rails"
categories: ["Project Analysis", "Market"]
date: "2026-06-12"
readTime: 8
coverImage: "https://raw.githubusercontent.com/lucci-labs/archive/main/images/canton-network-355m-funding-banner.png"
---

Digital Asset, the developer behind Canton Network, just raised **$355 million** in an a16z crypto-led equity round with participation from Abu Dhabi Investment Authority, Apollo, BNP Paribas, Broadridge, Citadel Securities, CME Ventures, Coinbase Ventures, HSBC, Optiver, Polychain, S&P Global, SBI, SoFi, Tradeweb and others. Our read: this is not a generic crypto infrastructure raise. It is a strategic balance-sheet round from the institutions that need a privacy-preserving settlement layer before they can move serious real-world assets on-chain.

The simple answer to “how did Canton raise this much?” is product-market fit in a narrow but very large market: regulated finance wants blockchain settlement, but cannot use fully transparent public ledgers for trading positions, collateral movements, client activity, payroll-like payment flows, or confidential bilateral agreements. Canton’s bet is that **privacy plus interoperability** is the missing layer for institutional tokenization. The $355M round is Wall Street underwriting that thesis.

### The news: a $355M equity round, not a token allocation round

Digital Asset announced the raise on June 11, with [a16z crypto leading the round](https://www.prnewswire.com/news-releases/digital-asset-raises-355-million-to-accelerate-cantons-role-as-onchain-infrastructure-for-capital-markets-302797427.html). The investor list is unusually institutional for a blockchain company: **Apollo Funds, BNP Paribas, Broadridge, Citadel Securities, CME Ventures, HSBC, S&P Global, Tradeweb, Optiver, SoFi and an ADIA subsidiary** were all named alongside crypto-native investors such as **Coinbase Ventures and Polychain**.

Two details matter.

- First, this was an **equity round**. Digital Asset CEO Yuval Rooz told [The Block](https://www.theblock.co/post/404386/a16z-crypto-leads-355-million-raise-for-canton-developer-digital-asset) that investors received equity rather than token allocations. That makes the round look less like a token-marketing transaction and more like strategic ownership in a financial infrastructure company.
- Second, the round reportedly values Digital Asset around **$2 billion**, after earlier reports that the company was targeting roughly $300M. The final number came in higher at **$355M**, according to multiple outlets including [Crypto Briefing](https://cryptobriefing.com/digital-asset-355m-funding-andreessen-horowitz/) and [The Defiant](https://thedefiant.io/news/blockchains/digital-asset-canton-network-355m-funding-a16z).

This follows a rapid funding arc: **$135M in June 2025** led by DRW Venture Capital and Tradeweb, then a **$50M extension in December 2025** from names including BNY, Nasdaq, S&P Global and iCapital. In less than 12 months, Digital Asset has moved from “enterprise blockchain company with strong relationships” to “one of the best-capitalized RWA infrastructure companies in the market.”

<HTMLWidget>
<div style="background:#0B0B0B;border:1px solid #1E1E1E;color:#D1D1D1;font-family:Inter,Arial,sans-serif;padding:28px;width:100%;box-sizing:border-box">
  <div style="display:flex;justify-content:space-between;gap:20px;align-items:flex-start;flex-wrap:wrap;margin-bottom:22px">
    <div>
      <div style="color:#FFFFFF;font-family:'Playfair Display',Georgia,serif;font-size:26px;letter-spacing:1.4px;text-transform:uppercase;margin-bottom:6px">DIGITAL ASSET FUNDING STACK</div>
      <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:2px;text-transform:uppercase">SELECT ROUNDS / USD MILLIONS / LUCCI RESEARCH</div>
    </div>
    <div style="border:1px solid #1E1E1E;padding:12px 16px;min-width:150px;text-align:right">
      <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.6px;text-transform:uppercase">LATEST ROUND</div>
      <div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:28px;font-weight:700">$355M</div>
    </div>
  </div>
  <div id="canton-bars" style="display:grid;gap:14px"></div>
  <div style="border-top:1px solid #1E1E1E;margin-top:22px;padding-top:12px;color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.5px;text-transform:uppercase">SOURCE: DIGITAL ASSET, THE BLOCK, THE DEFIANT, CRYPTO BRIEFING. SELECT RECENT ROUNDS ONLY.</div>
</div>
<script>
const rounds = [
  {label:'JUN 2025 STRATEGIC', value:135, color:'#00FFA3'},
  {label:'DEC 2025 EXTENSION', value:50, color:'#00FFA3'},
  {label:'JUN 2026 A16Z-LED', value:355, color:'#00FFA3'}
];
const max = 355;
const root = document.getElementById('canton-bars');
rounds.forEach(function(r){
  const row = document.createElement('div');
  row.style.display = 'grid';
  row.style.gridTemplateColumns = '170px 1fr 70px';
  row.style.gap = '14px';
  row.style.alignItems = 'center';
  row.innerHTML = '<div style="color:#888888;font-family:JetBrains Mono,monospace;font-size:11px;letter-spacing:1.4px;text-transform:uppercase">'+r.label+'</div><div style="height:28px;border:1px solid #1E1E1E;background:#080808;position:relative"><div style="position:absolute;left:0;top:0;height:100%;width:'+((r.value/max)*100)+'%;background:#00FFA3;box-shadow:0 0 18px rgba(0,255,163,0.14)"></div></div><div style="color:#FFFFFF;font-family:JetBrains Mono,monospace;font-size:13px;text-align:right">$'+r.value+'M</div>';
  root.appendChild(row);
});
</script>
</HTMLWidget>

### What is Canton Network?

Canton Network is a **public Layer 1 blockchain designed for regulated finance**, created by Digital Asset and built around the company’s open-source smart contract language, **Daml**. The core design goal is simple: let institutions get shared execution, atomic settlement and interoperability without exposing sensitive transaction data to the whole network.

Most public blockchains replicate state broadly. That is powerful for transparency, but toxic for regulated markets where parties cannot reveal trading strategies, client positions, margin calls, bilateral contract terms or commercial payment details. Canton takes the opposite approach: **data is shared only with parties entitled to see it**.

According to Canton’s own documentation, the network uses **sub-transaction privacy**: a transaction can be decomposed into views, and each participant receives only the view relevant to its role. Validators store data for the parties they host. The Global Synchronizer orders and coordinates encrypted messages, but does not see transaction content. In practical terms, Canton tries to keep the integrity guarantees of a shared ledger while avoiding the “everyone sees everything” problem of standard public chains.

That architecture matters for RWAs. A bank can settle a tokenized treasury repo, a broker can manage collateral, and a custodian can confirm asset movement without every party seeing the full economics of the whole workflow. Canton’s pitch is not “more decentralization than Ethereum.” It is **institutional composability under confidentiality constraints**.

### Why the raise was possible: Canton is selling to buyers, not tourists

The investor list explains the round better than any pitch deck. Many of the backers are not financial tourists looking for token beta. They are market participants with direct incentives to lower settlement friction, collateral latency and reconciliation cost.

We think the round cleared at this size for five reasons.

**1. The market is finally ready for tokenized assets.** Tokenized treasuries, private credit, repo, money-market funds and collateral mobility have moved from conference narrative to production pipeline. If global finance does bring even a small percentage of securities settlement on-chain, the infrastructure layer is a large prize.

**2. Canton solves a real blocker: privacy.** Visa’s March 2026 announcement that it would join Canton as a Super Validator framed the problem directly: banks cannot put sensitive financial workflows on chains where transaction details are public. Canton’s “need-to-know” data model is built for that constraint.

**3. Digital Asset already has institutional credibility.** The company was founded in 2014 and has spent a decade selling to financial institutions. That matters. Traditional finance does not adopt infrastructure because a token chart is moving; it adopts after procurement, legal, risk, compliance and integration teams get comfortable.

**4. The round creates strategic alignment.** When firms like Broadridge, Tradeweb, Citadel Securities, CME Ventures, HSBC and BNP Paribas are on the cap table, they are not just passive capital. They are potential users, distributors, validators, integration partners or liquidity providers.

**5. The company is raising balance-sheet capital for expansion, not survival.** Several reports noted management positioning the capital for network growth, developer engagement, partnerships and potential M&A. That is a very different message from distressed crypto fundraising.

### The hidden wedge: repo and collateral mobility

The most important Canton use case is not consumer payments. It is the plumbing of capital markets.

Repo, margin, securities lending and collateral transfers are huge, operationally complex and highly sensitive. They also suffer from settlement delays, reconciliation overhead and fragmented ledgers. A privacy-enabled shared ledger can create immediate value if it reduces fails, improves intraday collateral visibility and lets institutions reuse liquidity more efficiently.

Canton and its ecosystem have repeatedly pointed to large RWA and repo activity. Canton’s privacy documentation claims the network architecture supports institutional workflows at scale, including **over $100B in U.S. Treasury repo transactions per day** and **over $4T in on-chain real-world asset volume**. LayerZero’s March integration announcement separately cited **more than $350B in daily U.S. Treasury repo volume** flowing through Canton-linked rails. We would treat these numbers as ecosystem-reported, not neutral third-party audit data, but the direction is clear: Canton is focused on high-value institutional workflows, not retail speculation.

This is why the round matters. If Canton becomes the coordination layer for tokenized collateral, the fee pool is not dependent on NFT mints or memecoin trading. It is tied to the balance sheets of banks, asset managers, clearing firms and market makers.

### How Canton is different from Ethereum, Solana and private DLT

Canton sits between public blockchains and private enterprise ledgers.

- Compared with Ethereum or Solana, Canton sacrifices radical transparency for configurable privacy. That makes it less attractive for open DeFi culture, but more useful for regulated workflows.
- Compared with private DLT systems, Canton tries to avoid isolated silos through a shared synchronization layer and interoperable Daml applications.
- Compared with generic RWA chains, Canton has a decade-old enterprise software company behind it and a cap table full of real market infrastructure firms.

The trade-off is complexity. Daml is not Solidity. The privacy model is more sophisticated than simply querying a global RPC endpoint. Developers need to think in terms of parties, signatories, observers and controllers. For TradFi, that may be acceptable. For crypto-native developers, it raises the onboarding bar.

### What investors should watch next

The $355M round is bullish for Canton’s credibility, but it does not remove execution risk. The key watch points are practical:

- **Production adoption:** are major institutions moving live workflows, or are announcements still pilot-heavy?
- **Developer growth:** can Canton attract builders beyond Digital Asset’s direct enterprise relationships?
- **Token economics:** Canton Coin is used for network fees, but the value capture depends on sustained transaction demand, not headlines.
- **Governance and neutrality:** as more large financial firms join, the network must avoid looking like a club controlled by incumbents.
- **Interoperability:** integrations such as LayerZero matter because RWA liquidity cannot live in a closed institutional island forever.

Our base view: Canton is one of the clearest examples of crypto infrastructure being pulled by enterprise demand rather than pushed by retail narrative. That does not mean it will dominate every RWA category. It does mean investors should stop treating “institutional blockchain” as a dead 2017 story. In 2026, the category is back — with better architecture, larger checks and more serious buyers.

### Our view

The $355M raise is best understood as a **strategic underwriting of private, compliant settlement rails**. Canton’s edge is not speed marketing or token hype. It is solving the one problem that has blocked many institutions from using public chains: confidentiality.

If Canton converts its cap table into live workflows, it can become a core RWA infrastructure layer. If it cannot, the network risks becoming another well-funded enterprise ledger with impressive names and limited open liquidity. For now, the signal is strong: **Wall Street is not just experimenting with tokenization anymore; it is funding the rails it wants to use.**

> Lucci Research view: Canton is a high-conviction infrastructure story, but the proof will be live settlement volume, not investor logos. Watch repo, tokenized treasuries and collateral mobility first.
