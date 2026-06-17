---
title: "Everything You Need to Know Before Ethereum's Glamsterdam Upgrade"
categories: ["Technology", "Market"]
date: "2026-06-17"
readTime: 12
coverImage: "https://raw.githubusercontent.com/lucci-labs/archive/main/images/everything-you-need-to-know-before-glamsterdam-upgrade-banner.png"
---

Ethereum's Glamsterdam upgrade is not a fee-cut patch. It is a **block-production and execution-pipeline redesign** aimed at making higher L1 capacity operationally safe. The headline package is clear: **EIP-7732 enshrined proposer-builder separation**, **EIP-7928 block-level access lists**, and a set of gas/state repricing and networking changes that prepare Ethereum for a post-Fusaka path toward materially larger blocks.

Our base view: Glamsterdam is bullish for Ethereum's long-term settlement business, but investors should not model it as an instant demand shock. Engineers should treat it as a protocol-interface change that affects clients, validators, builders, indexers, MEV infrastructure, and gas-sensitive applications. Financial managers should treat it as a capacity and operational-risk event: ETH balances do not need to be converted, but validator/client readiness, staking-provider disclosures, and infrastructure counterparties matter.

Key numbers to anchor the upgrade: ethereum.org says Glamsterdam is planned for **H2 2026**; ePBS expands the critical data propagation window from roughly **2 seconds to about 9 seconds**; BAL research estimates an average compressed block access list around **72.4 KiB** at a **60M gas limit**; and Ethereum core-dev discussions are testing a path toward a **~200M gas-limit floor**, with state-growth pricing designed around a **120 GiB/year** sustainability target. That is the real thesis: Glamsterdam increases the amount of work Ethereum can safely coordinate without abandoning home-node economics.

<HTMLWidget>
<div id="glamsterdam-brief" style="background:#0B0B0B;border:1px solid #1E1E1E;color:#D1D1D1;font-family:Inter,Arial,sans-serif;padding:28px;width:100%;box-sizing:border-box">
  <div style="display:grid;grid-template-columns:1.1fr 1fr;gap:20px;align-items:stretch">
    <div style="border:1px solid #1E1E1E;padding:22px;background:#080808">
      <div style="color:#FFFFFF;font-family:'Playfair Display',Georgia,serif;font-size:28px;letter-spacing:1.8px;text-transform:uppercase;margin-bottom:8px">GLAMSTERDAM BASE CASE</div>
      <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:2px;text-transform:uppercase;line-height:1.7">ETHEREUM HARD FORK / H2 2026 / SCOPE STILL SUBJECT TO CORE-DEV TESTING</div>
      <div style="margin-top:22px;display:grid;grid-template-columns:repeat(2,minmax(0,1fr));gap:12px">
        <div style="border-top:1px solid #1E1E1E;padding-top:14px"><div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:1.6px;text-transform:uppercase">ePBS</div><div style="color:#FFFFFF;font-size:24px;font-weight:700;margin-top:4px">2s → ~9s</div><div style="color:#888888;font-size:12px;margin-top:4px">propagation window</div></div>
        <div style="border-top:1px solid #1E1E1E;padding-top:14px"><div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:1.6px;text-transform:uppercase">BAL</div><div style="color:#FFFFFF;font-size:24px;font-weight:700;margin-top:4px">~72 KiB</div><div style="color:#888888;font-size:12px;margin-top:4px">avg compressed access list</div></div>
        <div style="border-top:1px solid #1E1E1E;padding-top:14px"><div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:1.6px;text-transform:uppercase">Capacity Path</div><div style="color:#FFFFFF;font-size:24px;font-weight:700;margin-top:4px">~200M</div><div style="color:#888888;font-size:12px;margin-top:4px">gas-limit floor under discussion</div></div>
        <div style="border-top:1px solid #1E1E1E;padding-top:14px"><div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:1.6px;text-transform:uppercase">State Budget</div><div style="color:#FFFFFF;font-size:24px;font-weight:700;margin-top:4px">120 GiB/yr</div><div style="color:#888888;font-size:12px;margin-top:4px">EIP-8037 target framing</div></div>
      </div>
    </div>
    <div style="border:1px solid #1E1E1E;padding:22px;background:#0A0A0A;display:flex;flex-direction:column;justify-content:space-between">
      <div>
        <div style="color:#FFFFFF;font-family:'Playfair Display',Georgia,serif;font-size:22px;letter-spacing:1.5px;text-transform:uppercase;margin-bottom:16px">WHO SHOULD CARE</div>
        <div style="display:grid;gap:10px;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:1.2px;text-transform:uppercase">
          <div style="border-left:3px solid #00FFA3;padding:10px 12px;background:#080808">Engineers: client, validator, API, indexing, gas-model changes</div>
          <div style="border-left:3px solid #00FFA3;padding:10px 12px;background:#080808">Investors: L1 capacity, MEV market structure, ETH settlement premium</div>
          <div style="border-left:3px solid #00FFA3;padding:10px 12px;background:#080808">Financial managers: staking provider readiness, node upgrade controls, counterparty review</div>
        </div>
      </div>
      <div style="border-top:1px solid #1E1E1E;margin-top:18px;padding-top:12px;color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.5px;text-transform:uppercase">SOURCE: ETHEREUM.ORG, EIP-7732, EIP-7928, EF CHECKPOINT #8</div>
    </div>
  </div>
</div>
<style>@media(max-width:760px){#glamsterdam-brief>div{grid-template-columns:1fr!important}#glamsterdam-brief div[style*="repeat(2"]{grid-template-columns:1fr!important}}</style>
</HTMLWidget>

### What Glamsterdam actually is

Glamsterdam is Ethereum's next major network upgrade after Fusaka. The name combines **Gloas** on the consensus side and **Amsterdam** on the execution side. The protocol objective is straightforward: take bottlenecks that are currently handled by off-protocol infrastructure or sequential execution assumptions, then move them into explicit, verifiable protocol rules.

The upgrade is currently framed around two headliners:

- **[EIP-7732: Enshrined Proposer-Builder Separation](https://eips.ethereum.org/EIPS/eip-7732)** — separates consensus block proposal from execution payload construction inside the protocol.
- **[EIP-7928: Block-Level Access Lists](https://eips.ethereum.org/EIPS/eip-7928)** — records every account/storage location touched by a block, plus post-execution values, so clients can prefetch state, parallelize validation paths, and support executionless state updates.

Ethereum's own roadmap page describes the broader goal as **Scale L1** and **Scale Blobs**: larger throughput without turning Ethereum into a high-hardware datacenter chain. That constraint matters. The upgrade is not about raw TPS marketing; it is about making higher gas limits compatible with decentralization.

The scope is not completely frozen. The [Ethereum Foundation's Checkpoint #8](https://blog.ethereum.org/2026/01/20/checkpoint-8) listed **17 considered non-headliner EIPs**, while ethereum.org's current page highlights additions such as EIP-2780, EIP-8037, EIP-8038, EIP-8045, EIP-8080, EIP-7975, EIP-7997 and EIP-7708. Treat every non-headliner as **probable-but-not-guaranteed** until client releases and public testnet activations are final.

### The engineering core: ePBS changes who is trusted

Today's Ethereum already uses proposer-builder separation in practice. Most validators outsource block construction to builders via MEV-Boost and relays. The problem is that this relay layer is not native protocol machinery. It introduces external trust, operational dependency, and a tight validation hot path.

[EIP-7732](https://eips.ethereum.org/EIPS/eip-7732) moves the handshake into Ethereum itself. Instead of embedding a full `ExecutionPayload` directly in the beacon block, the proposer includes a signed execution payload bid. The builder later reveals the payload. Validators in a **Payload Timeliness Committee** attest to whether the payload arrived on time and whether blob data was available. Builder payments become enforceable through protocol accounting rather than relay trust.

The important technical shift is temporal: execution validation is decoupled from consensus validation. Ethereum's roadmap page says this expands the propagation window from roughly **2 seconds to about 9 seconds**. That is why ePBS matters for scale. If the network has more time to propagate and validate larger payloads, higher gas limits and more data become safer.

For engineers, this means:

- validator clients and consensus clients must support new builder bid, payload attestation and fork-choice logic;
- builders become protocol-visible actors, not just off-chain MEV infrastructure;
- MEV strategies that depend on relay assumptions need to be re-audited;
- monitoring must distinguish full slots, empty slots and payload timing failures.

For investors, the signal is market-structure quality. ePBS does not remove MEV. It makes more of the block-production market explicit, observable and enforceable. That should reduce some relay trust risk, but it may also professionalize builders further. We would not assume builder centralization disappears.

### BALs are the path to parallel Ethereum

Ethereum is still largely constrained by serial execution. A client cannot safely process two transactions in parallel if it does not know whether both will touch the same storage slot. [EIP-7928](https://eips.ethereum.org/EIPS/eip-7928) attacks that constraint directly.

BALs add a block-level record of state access. The block header commits to a `block_access_list_hash`; the execution payload carries the RLP-encoded access list; and clients validate that the supplied list matches actual execution. According to the EIP, BALs enable **parallel disk reads**, **parallel transaction validation**, **parallel state-root computation**, and **executionless state updates**.

The design trade-off is extra block data for better execution visibility. The EIP's empirical analysis estimates an average compressed BAL size of **~72.4 KiB** at a **60M block gas limit**. That is not free, but it is small relative to the scaling option it buys: clients can pre-load the state a block will touch instead of discovering dependencies transaction by transaction.

<HTMLWidget>
<div id="bal-chart" style="background:#0B0B0B;border:1px solid #1E1E1E;color:#D1D1D1;font-family:Inter,Arial,sans-serif;padding:28px;width:100%;box-sizing:border-box">
  <div style="color:#FFFFFF;font-family:'Playfair Display',Georgia,serif;font-size:26px;letter-spacing:1.5px;text-transform:uppercase;margin-bottom:6px">BLOCK ACCESS LIST COMPOSITION</div>
  <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:2px;text-transform:uppercase;margin-bottom:22px">EIP-7928 EMPIRICAL SIZE ESTIMATE / 60M GAS LIMIT / COMPRESSED</div>
  <div style="display:grid;grid-template-columns:120px repeat(8,1fr);column-gap:8px;row-gap:0;align-items:end;height:320px;border:1px solid #1E1E1E;background:repeating-linear-gradient(to top,#080808 0,#080808 39px,#1E1E1E 40px);padding:18px 14px 44px 14px;box-sizing:border-box;overflow:hidden">
    <div style="align-self:stretch;border-right:1px solid #1E1E1E;margin-right:14px;display:flex;flex-direction:column;justify-content:space-between;color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1px;text-transform:uppercase;padding-right:10px;box-sizing:border-box"><span>30 KiB</span><span>20</span><span>10</span><span>0</span></div>
    <div style="height:97%;background:#00FFA3;border:1px solid #00FFA3;box-shadow:0 0 18px rgba(0,255,163,0.14);position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">29.2</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">WRITES</span></div>
    <div style="height:62%;background:#00FFA3;border:1px solid #00FFA3;position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">18.7</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">READS</span></div>
    <div style="height:22%;background:#00FFA3;border:1px solid #00FFA3;position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">6.7</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">BALANCE</span></div>
    <div style="height:4%;background:#00FFA3;border:1px solid #00FFA3;position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">1.1</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">NONCE</span></div>
    <div style="height:4%;background:#00FFA3;border:1px solid #00FFA3;position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">1.2</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">CODE</span></div>
    <div style="height:26%;background:#D1D1D1;border:1px solid #D1D1D1;position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">7.7</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">ACCOUNTS</span></div>
    <div style="height:12%;background:#D1D1D1;border:1px solid #D1D1D1;position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">3.5</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">TOUCHED</span></div>
    <div style="height:15%;background:#888888;border:1px solid #888888;position:relative"><span style="position:absolute;top:-24px;left:50%;transform:translateX(-50%);color:#FFFFFF;font-family:'JetBrains Mono',monospace;font-size:10px">4.4</span><span style="position:absolute;bottom:-34px;left:50%;transform:translateX(-50%) rotate(-35deg);transform-origin:center;white-space:nowrap;color:#888888;font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:1px">RLP</span></div>
  </div>
  <div style="border-top:1px solid #1E1E1E;margin-top:18px;padding-top:12px;color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.5px;text-transform:uppercase">SOURCE: EIP-7928 BAL SIZE CONSIDERATIONS. VALUES IN KiB.</div>
</div>
<style>@media(max-width:760px){#bal-chart{padding:20px!important}#bal-chart>div:nth-of-type(3){grid-template-columns:54px repeat(8,minmax(18px,1fr))!important;padding-left:8px!important;padding-right:8px!important}#bal-chart span{font-size:8px!important}}</style>
</HTMLWidget>

The near-term developer takeaway: Glamsterdam probably will not mean "your smart contract now runs in parallel" in the way an application developer might imagine. It means clients get the metadata required to make parallelism and faster sync credible at the protocol level. The first-order benefits accrue to client performance, node sync, state access, and future gas-limit increases.

### The gas and state package is where business impact shows up

The market will focus on ePBS and BALs because they are clean narratives. The business impact may come from the less glamorous repricing EIPs.

The ethereum.org Glamsterdam page highlights **EIP-8037** as a state-creation gas-cost increase. The intent is to price new accounts, storage and contract deployment more closely to their long-term burden on the state database. The page frames this around a **120 GiB/year** state-growth target and a reservoir model for state gas. That is good protocol hygiene, but it is not universally "cheaper gas."

The same page also describes **EIP-8038**, which raises some state-access costs to better match the compute and database load of reading old state. For developers with storage-heavy applications, this is the line item to watch. Apps that assume cheap state reads or cheap permanent state creation may see economics change.

On the user-cost side, **EIP-2780** proposes reducing intrinsic transaction gas and ethereum.org says standard ETH transfers between existing accounts could become up to **71% cheaper**. That is meaningful for wallets, exchanges and payments flows, but it should not be confused with a blanket 71% reduction across DeFi transactions. Complex contract interactions remain bounded by execution, state access and calldata costs.

For financial managers, the practical framing is:

- simple ETH transfer costs may improve if EIP-2780 ships;
- deployment and state-heavy operations may become more accurately priced, not necessarily cheaper;
- higher capacity should reduce congestion pressure over time, but fee outcomes still depend on demand;
- accounting systems should monitor **EIP-7708**, which would emit logs for ETH transfers and burns, reducing reliance on custom traces.

### What changes for validators, stakers and node operators

There is no ETH conversion. Anyone saying you must "upgrade" ETH is running a scam. But node operators and validators do have work.

Glamsterdam requires both execution-layer and consensus-layer client updates. ePBS touches consensus block structure, validator duties and payload timeliness attestations. BALs touch execution payloads, Engine API structures and block validation. Networking companions such as **EIP-8159 eth/71 Block Access List Exchange** and **EIP-7975 eth/70 partial block receipt lists** matter because higher-capacity blocks need safer peer-to-peer data distribution.

Institutional stakers should ask providers four questions before mainnet activation:

1. **Client readiness:** which EL/CL client versions are planned for Glamsterdam, and what is the rollback plan?
2. **Builder policy:** will the provider opt into any ePBS builder market behavior at launch, and how will it monitor builder failures?
3. **MEV accounting:** how will proposer payments, builder payments and relay/ePBS revenues be reported?
4. **Testnet evidence:** did the provider run through public testnet forks and multi-client devnets without missed duties?

The upgrade also includes validator-resilience proposals under consideration, including **EIP-8045** to exclude slashed validators from proposing and **EIP-8080** to let exits use the consolidation queue. These are not sexy, but they matter for staking operations and liquidity planning.

### Investor read-through: why this matters for ETH

We think Glamsterdam is strategically positive for ETH because it strengthens Ethereum's settlement layer in three ways.

First, it reduces off-protocol trust in the MEV supply chain. MEV remains, but ePBS makes the handoff between proposer and builder more native, monitorable and enforceable.

Second, it creates a credible route to more L1 capacity. The market has spent two years treating Ethereum scaling as mostly an L2/blob story. Fusaka expanded blob capacity through PeerDAS and BPO forks; Glamsterdam brings attention back to **L1 execution throughput** without abandoning the L2 roadmap.

Third, it improves institutional legibility. Financial institutions care about deterministic settlement, infrastructure risk, auditability and operational controls. BALs, ETH-transfer logs, partial receipt lists and clearer builder mechanics all push Ethereum toward a more analyzable settlement environment.

The caveat: upgrades do not automatically create demand. If ETH underperforms because app revenue, stablecoin settlement, tokenization flows or ETF demand are weak, Glamsterdam alone will not fix price. It improves the supply side of blockspace. Demand still has to show up.

<HTMLWidget>
<div id="impact-matrix" style="background:#0B0B0B;border:1px solid #1E1E1E;color:#D1D1D1;font-family:Inter,Arial,sans-serif;padding:28px;width:100%;box-sizing:border-box">
  <div style="color:#FFFFFF;font-family:'Playfair Display',Georgia,serif;font-size:26px;letter-spacing:1.5px;text-transform:uppercase;margin-bottom:6px">GLAMSTERDAM IMPACT MATRIX</div>
  <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:2px;text-transform:uppercase;margin-bottom:22px">AUDIENCE-SPECIFIC READ THROUGH</div>
  <div style="display:grid;grid-template-columns:1fr 1fr 1fr;gap:0;border:1px solid #1E1E1E">
    <div style="padding:16px;border-right:1px solid #1E1E1E;background:#080808"><div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:12px;letter-spacing:1.5px;text-transform:uppercase;margin-bottom:12px">Engineers</div><div style="font-size:13px;line-height:1.65">Re-test gas assumptions, tracing pipelines, validator monitoring, Engine API integrations, builder/relay workflows and state-heavy execution paths.</div></div>
    <div style="padding:16px;border-right:1px solid #1E1E1E;background:#0A0A0A"><div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:12px;letter-spacing:1.5px;text-transform:uppercase;margin-bottom:12px">Investors</div><div style="font-size:13px;line-height:1.65">Watch L1 fee share, staking rewards composition, builder concentration, gas-limit trajectory, ETH beta to scaling narratives and L2 blob demand.</div></div>
    <div style="padding:16px;background:#080808"><div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:12px;letter-spacing:1.5px;text-transform:uppercase;margin-bottom:12px">Financial Managers</div><div style="font-size:13px;line-height:1.65">Confirm custodians, staking providers, node vendors and accounting tools have upgrade plans, testnet proof and post-fork reporting controls.</div></div>
  </div>
  <div style="border-top:1px solid #1E1E1E;margin-top:18px;padding-top:12px;color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.5px;text-transform:uppercase">LUCCI RESEARCH FRAMEWORK</div>
</div>
<style>@media(max-width:760px){#impact-matrix>div:nth-of-type(3){grid-template-columns:1fr!important}#impact-matrix>div:nth-of-type(3)>div{border-right:0!important;border-bottom:1px solid #1E1E1E}}</style>
</HTMLWidget>

### The risk register

Glamsterdam is ambitious. The largest risks are not conceptual; they are implementation and coordination risks.

- **Scope risk:** the non-headliner set can still change. If an EIP delays the fork, core devs may remove it.
- **Client complexity:** ePBS is a deep consensus change. More state machines mean more edge cases.
- **Builder-market risk:** in-protocol PBS can reduce relay trust, but builders may still concentrate around latency, capital and order-flow advantages.
- **Application gas risk:** state repricing can change the economics of smart wallets, bridges, rollups, DeFi protocols and indexers.
- **Timeline risk:** H2 2026 is the broad plan, but mainnet activation depends on stable devnets, public testnets, client releases and final All Core Devs coordination.

We are skeptical of any analysis that markets Glamsterdam as a guaranteed instant fee collapse or a fixed TPS target. The protocol work is real, but Ethereum's upgrade process is conservative for a reason.

### Pre-upgrade checklist

For engineers:

- review EIP-7732, EIP-7928, EIP-8037, EIP-8038, EIP-7708 and EIP-2780;
- run staging infrastructure against public testnets once fork dates are announced;
- audit assumptions around traces, receipts, ETH-transfer detection, state access and gas estimation;
- monitor client release notes for Engine API changes and BAL retention behavior.

For investors:

- track whether the gas-limit path toward ~200M becomes explicit after stable devnets;
- watch builder concentration and staking reward dispersion after ePBS launches;
- separate L1 capacity expansion from L2 blob demand when modeling ETH value capture;
- do not price non-headliner EIPs as final until they are in client releases.

For financial managers:

- confirm custodians and staking providers do not require any ETH conversion;
- require written upgrade procedures from staking and node vendors;
- verify accounting systems can adapt if ETH transfer logs ship;
- prepare communications for clients or boards explaining that balances remain unchanged while infrastructure must upgrade.

### Our view

Glamsterdam is Ethereum trying to scale like a serious settlement network rather than a benchmark-chasing execution chain. ePBS attacks block-production trust and timing. BALs attack serial execution and state visibility. The repricing package attacks database bloat before higher gas limits make it worse.

That combination is exactly what Ethereum needs: **more capacity, fewer off-protocol assumptions, and better hardware sustainability**. The market may underprice it because the benefits are infrastructural rather than cosmetic. But for long-term ETH value, infrastructure is the product.

> **Our base case:** Glamsterdam is a medium-term positive for ETH and Ethereum-based businesses, but the correct trade is not "fees go down tomorrow." The correct trade is that Ethereum's L1 becomes more scalable, more auditable and more institutionally usable without giving up decentralization as the core constraint.
