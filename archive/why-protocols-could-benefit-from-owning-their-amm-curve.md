<Header title="Why Protocols Could Benefit From Owning Their AMM Curve" categories={["Insights","Research","DeFi Research"]} date="19 Jun 2024" readTime={8} />

<AlphaBox content="Bài viết phân tích lỗ rò giá trị trong hệ sinh thái DEX AMM: nhiều protocol tạo ra khối lượng giao dịch lớn khi ra token nhưng không thể thu lại phí hay capture value — phí thuộc về LPs và nền tảng DEX. Trường hợp FriendTech (BunnySwap) và Ronin/Katana cho thấy: sở hữu AMM riêng giúp protocol thu được phí giao dịch‑giao thức trực tiếp, tăng khả năng giữ lại giá trị cho hệ sinh thái. Tuy nhiên, chiến lược này đòi hỏi kiểm soát chặt chẽ luồng giá trị, nguồn lực kỹ thuật và chấp nhận rủi ro bảo mật, đồng thời đánh đổi network‑effects từ DEX lớn. Với Uniswap V4/Balancer V3, lựa chọn trung gian (custom pool trên nền tảng lớn) xuất hiện — có thể là giải pháp ưu việt cho nhiều đội ngũ muốn capture value nhưng vẫn tận dụng liquidity và security của hệ sinh thái lớn." />

<Signals title="Key Metrics" data={[
  { title: "Top 5 airdrops (2024) tạo giá trị cho người dùng", value: "$6.6b", trend: "up", trendValue: "Q1–Q2 2024" },
  { title: "Wormhole / Starknet: khối lượng giao dịch ngày ra mắt", value: "> $1b (mỗi dự án)", trend: "up", trendValue: "Launch day" },
  { title: "Tỷ lệ đóng góp phí bởi Altcoin pools trên Uniswap", value: "70%–80%", trend: "up", trendValue: "Since Apr 2023" },
  { title: "Phí giao thức thu được BunnySwap (35 ngày)", value: "$8.26M WETH", trend: "up", trendValue: "35 days post‑launch" },
  { title: "Katana DEX: tổng khối lượng từ Nov 2021", value: "$10b", trend: "up", trendValue: "Since Nov 2021" },
  { title: "Katana DEX: phí tích lũy cho Ronin Treasury", value: "$5M", trend: "up", trendValue: "Since Nov 2021" }
]} />



### Tóm tắt ngắn (Executive summary)

Token launch là sự kiện tạo ra đột biến volume và phí giao dịch — giá trị này thường rơi vào tay sàn (CEX/DEX) và LP, chứ không phải nhà phát hành token. Đa số DEX hiện tại (Uniswap, Balancer, v.v.) không có cơ chế chuẩn để trả phần phí cho tác nhân tạo ra nhu cầu (protocol issuer). Kết quả: protocol “rò” giá trị lớn.

Hai case thực tế minh họa mô hình ngược lại: FriendTech triển khai BunnySwap (fork Uniswap V2) với cấu hình phí tùy chỉnh, và Ronin Chain có Katana DEX gắn chặt hệ token game — cả hai đều thu được phần phí giao thức và giữ lại đáng kể giá trị cho hệ sinh thái. Tuy nhiên, sở hữu AMM riêng đi kèm chi phí phát triển, audit, mất liquidity network effects và yêu cầu cơ chế kiểm soát luồng token để tránh bị “vô phép” khai thác thanh khoản bên ngoài.

Giải pháp trung gian đang xuất hiện: Uniswap V4 / Balancer V3 cho phép pools tùy biến (hook/fee) — là cơ hội để các protocol capture fee mà vẫn hưởng security và liquidity network effect của nền tảng lớn. [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).



## 1. Bối cảnh: Token launch là sự kiện tạo giá trị

Token launches (kèm airdrops) là những thời điểm tạo đột biến thanh khoản và thu hút lượng lớn người dùng tạm thời. Các airdrop lớn trong nửa đầu 2024 đã tạo ra một khối lượng giá trị đáng kể cho người dùng: "Top 5 largest airdrops since start of 2024 created roughly $6.6b USD in value to users" — con số được Wintermute tổng hợp và nêu rõ trong báo cáo gốc [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).

Hành vi thị trường trong giai đoạn ra token:
- Nhiều người giữ/đẩy bán theo cấu trúc kỳ vọng (speculation), dẫn tới khối lượng giao dịch lớn trên ngày ra mắt và những ngày tiếp theo.
- Các sàn (đặc biệt CEX) đạt lợi nhuận đáng kể từ khối lượng giao dịch thời gian ngắn; tương tự DEX hưởng phí swap và lợi ích từ LPs cung cấp thanh khoản.

Ví dụ định lượng trong báo cáo:
- Wormhole và Starknet đều đạt hơn $1b USD khối lượng trên ngày launch [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).
- Một số dự án nhận hơn 50% tổng khối lượng trong 14 ngày đầu khi so sánh chu kỳ 50 ngày sau ra mắt [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).

Hình: Biểu đồ Top 2024 Airdrops (đã giữ nguyên ảnh gốc)



![Image](https://wp-corp-site.s3.eu-central-1.amazonaws.com/wp-content/uploads/2025/01/17212809/Top-2024-Airdrops.png)



Vì vậy: token launch = nguồn doanh thu tiềm năng khổng lồ. Vấn đề là phần lớn dòng tiền đó không chảy về chủ thể tạo ra token.



## 2. Vấn đề chính: DEX Value Leak (Lỗ rò giá trị)

Tại sao protocol không capture được giá trị?

- Thiết kế phí hiện tại của nhiều AMM: Uniswap V2 cố định 0.3% cho pool thông thường; 100% tiền phí trả cho LPs. Protocol creators (người khởi tạo token) không nhận phần phí trực tiếp trừ khi DEX cung cấp cơ chế protocol fee cho DAO (ví dụ Uniswap: 0.05% protocol fee accrues to Uniswap DAO treasury) [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).
- Pool fee tiers: Majors & Stables thường dùng fee tiers thấp (0.01% / 0.05%), Altcoin pools thường dùng 0.3% hoặc 1%. Mặc dù Altcoin chiếm phần nhỏ khối lượng, chúng sinh ra phần lớn phí do fee tier cao hơn — dẫn tới Altcoin pools tạo tới 70%–80% tổng phí hàng tháng trên Uniswap (since Apr 2023) [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).
- Liquidity capture mismatch: Teams bỏ tiền seed liquidity trên DEX (tạo pools, incentivize) nhưng không có cách trực tiếp nhận lại phần phí swap — phí đó hoàn toàn thuộc về LPs hoặc stream về DAO/DEX.

Biểu đồ minh họa (Uniswap volumes and fees):



![Image](https://wp-corp-site.s3.eu-central-1.amazonaws.com/wp-content/uploads/2025/01/17212808/Trading-volume.png)



![Image](https://wp-corp-site.s3.eu-central-1.amazonaws.com/wp-content/uploads/2025/01/17212808/Uniswap-monthly-trading-vol-by-pool-category.png)



![Image](https://wp-corp-site.s3.eu-central-1.amazonaws.com/wp-content/uploads/2025/01/17212809/Total-trading-fees-by-pool-category.png)



Hệ quả:
- Protocol teams mất đi dòng doanh thu có thể phục vụ treasury, phát triển, buyback hoặc tài trợ cộng đồng.
- Nếu team muốn capture value, họ buộc phải dùng biện pháp khác — ví dụ buy/sell taxes thu phí trên mỗi trade. Một ví dụ thành công là Unibot (sử dụng cơ chế thu phí giao dịch) — Unibot thu về ~ $36M USD (theo thống kê Dune) [Dune / Unibot revenue](https://dune.com/whale_hunter/unibot-revenue). Nhưng giải pháp này:
  - Phức tạp hoá hợp đồng token (on‑chain tax logic).
  - Chỉ áp dụng cho token mà team kiểm soát trực tiếp.
  - Có thể gây bất lợi cho thanh khoản, UX và sẽ bị người dùng chỉ trích nếu tax quá lớn.



## 3. Case studies: Khi protocol sở hữu AMM của mình

Có hai mô hình điển hình được Wintermute mô tả: (1) protocol tự fork AMM và cấu hình phí để thu phần phí giao thức; (2) chain + DEX nội bộ giành lấy hầu hết thanh khoản trong hệ đóng.

3.1 FriendTech — BunnySwap (Uniswap V2 fork)

FriendTech triển khai BunnySwap (Uniswap V2 fork) để phục vụ token FRIEND với hai thay đổi quyết định:
- 1.5% trading fee (đi vào LPs của FRIEND‑WETH pool).
- 1.5% protocol fee (đi vào một address do FriendTech kiểm soát) — địa chỉ minh họa trong báo cáo gốc [FriendTech address](https://basescan.org/address/0x831be9e08185eba7d88aab1efc059336babef430) [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).

Kết quả định lượng:
- BunnySwap thu về ~ $8.26M USD (wETH) dưới dạng protocol fees trong 35 ngày kể từ khi FRIEND ra mắt.
- Ngày ra mắt FRIEND đạt ~$89M giao dịch, đem lại ~$1.7M phí giao thức cho FriendTech ngay trong ngày đầu [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).

Hình: BunnySwap trading activity & protocol fees collected



![Image](https://wp-corp-site.s3.eu-central-1.amazonaws.com/wp-content/uploads/2025/01/17212810/BunnySwap-FRIEND-trading-activity.png)



3.2 Ronin Chain — Katana DEX (ecosystem‑native DEX)

Ronin thiết kế Katana DEX làm DEX chính trên chain, thu 0.05% protocol fee vào Ronin Treasury. Katana được tạo để phục vụ Axie Infinity ecosystem (AXS, SLP) và nhanh chóng gom phần lớn thanh khoản liên quan.

Kết quả:
- Katana đã xử lý > $10B tổng khối lượng kể từ Nov 2021 và tích luỹ khoảng $5M fee cho Ronin Treasury [Katana DEX](https://app.roninchain.com/swap) / [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).
- Khi AXS/SLP được migrate vào Ronin và giao dịch chủ yếu trên Katana, DEX nội bộ chiếm ~97% volume DEX cho các cặp này — chứng minh hiệu quả của một ecosystem kín trong việc giữ giá trị.
- Song, trước khi Katana xuất hiện, AXS/SLP đã tạo ~$3.8B volume trên các DEX khác, tương ứng với ước tính mất mát ~ $1.9M phí giao thức mà Ronin không nhận được — minh hoạ rõ ràng lỗ rò giá trị khi không có DEX nội bộ [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).

Hình: Katana DEX trading activity & fees



![Image](https://wp-corp-site.s3.eu-central-1.amazonaws.com/wp-content/uploads/2025/01/17212809/Katana-DEX-trading-activity.png)



Kết luận rút ra từ case studies:
- Khi ecosystem có ràng buộc kỹ thuật hoặc kinh tế (native chain, minting constraints, UI kiểm soát, token non‑transferable trong thời gian ban đầu), protocol có khả năng cao hơn để capture fee.
- Sở hữu AMM cho phép protocol “khóa” một phần quan trọng của chuỗi giá trị: từ mint → giao dịch → phí → treasury.

Tuy nhiên, như phần sau phân tích, chiến lược này không phải không có chi phí.



## 4. Đánh đổi và thách thức (Trade-offs & Challenges)

4.1 Mất network effects và liquidity

- Liquidity network effects là tài sản lớn: Uniswap/major DEX có tập người dùng, aggregators, router, front‑ends, arbitrageurs — tất cả tăng tính sâu của book và giảm slippage. Chuyển khối lượng giao dịch sang AMM riêng có thể dẫn tới spread rộng, slippage cao, và giảm nhu cầu bên mua.
- Ví dụ: nếu chỉ có cặp TOKEN‑WETH trên AMM riêng, mọi người phải mua WETH trước khi mua token — friction tăng, giảm conversion rate.

4.2 Rủi ro kỹ thuật và chi phí vận hành

- Phát triển AMM, thay đổi smart contract (thêm protocol fee logic), audit lại code, bảo trì, xử lý exploit — đều tốn tiền và thời gian.
- Các AMM fork chưa chắc đã được cộng đồng tin tưởng như Uniswap; rủi ro bảo mật cao hơn nếu không được audit đầy đủ.

4.3 Giải pháp kiểm soát luồng giá trị có thể bóp nghẹt tính permissionless

- Để capture fee, nhiều đội buộc phải đặt hạn chế (ví dụ: hạn chế transfer, độc quyền UI, chỉ mint trên chain riêng). Điều này đi ngược với tinh thần permissionless của DeFi và có thể làm giảm adoption.
- Ngoài ra, bất kỳ token đều có thể bị “copy‑liquidity”: bên thứ 3 có thể deploy pool trên DEX khác, hút volume; vì vậy cần có cơ chế kinh tế để giữ thanh khoản bên trong.

4.4 Rủi ro pháp lý / market perception

- Thu phí trực tiếp có thể bị hiểu là "tax" đối với người dùng; nếu không minh bạch hay không mang lại lợi ích rõ rệt cho holder, có thể gặp backlash cộng đồng.
- Tùy biến hợp đồng có thể bị coi là “centralized” và gây tổn hại tới niềm tin.



## 5. Giải pháp trung gian: pools tùy biến trên nền tảng lớn

Cuộc chơi đang chuyển dịch: Balancer V3 và Uniswap V4 giới thiệu cơ chế pool customizable — cho phép tạo swap fees bổ sung (protocol fee kiểu mới) mà pool creator/protocol có thể capture, trong khi vẫn tận dụng liquidity & security của Uniswap/Balancer.

- Balancer V3: product announcement về pools tùy biến (v3) — nguồn chính thức [Balancer V3](https://medium.com/balancer-protocol/balancer-v3-embracing-the-future-of-defi-46f37f4368aa) được Wintermute trích dẫn.
- Uniswap V4: hook architecture cho phép pool creators thêm swap fees, capture value trực tiếp mà không cần fork toàn bộ AMM; docs chính thức: [Uniswap V4 whitepaper](https://github.com/Uniswap/v4-core/blob/main/docs/whitepaper-v4.pdf) [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).

Lợi điểm:
- Capture fee trực tiếp mà vẫn dùng liquidity pool lớn.
- Giảm chi phí audit/core security so với fork hoàn chỉnh.
- Dễ tích hợp với aggregators nếu Uniswap/Balancer được hỗ trợ rộng.

Hạn chế còn tồn tại:
- Vẫn bị ràng buộc bởi cơ chế protocol fee của nền tảng host (ví dụ Uniswap vẫn có underlying protocol fee structure).
- Need to design economics so that market makers / LPs vẫn tham gia pool với fee tier mới mà không thoát ra pool khác.



## 6. Toán học và mô hình hóa đơn giản: tính toán capture potential

Để làm rõ tradeoffs, mô tả một mô hình đơn giản.

Giả sử project A có launch day volume V. Trên DEX trung lập:
- Fee tier trung bình f_pool = 0.3% (Altcoin).
- 100% fee → LPs.
- Protocol nhận 0.

Nếu project A sở hữu AMM riêng với cấu trúc:
- Fee LP = 1.5% (LP vẫn nhận phần này).
- Protocol fee = 1.5% (thu trực tiếp vào treasury).

Giả sử V = $100M (số vòng nhỏ dễ hình dung).

Trên DEX trung lập:
- Fees to LPs = V × f_pool = $100M × 0.003 = $300k → LPs
- Protocol revenue = $0

AMM riêng:
- Fees to LPs = V × 1.5% = $100M × 0.015 = $1.5M
- Protocol revenue = V × 1.5% = $1.5M

So project captures $1.5M trực tiếp. Thực tế con số này không chỉ là immediate revenue: protocol revenue này có thể dùng để buyback, đăng ký treasury operations, fund incentives.

Tương quan với FriendTech:
- Report ghi BunnySwap thu $8.26M WETH protocol fees trong 35 ngày; nếu dùng mô hình phía trên, điều này phản ánh volume khổng lồ trong giai đoạn launch và fee tier cao [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).

Caveats mô hình:
- Volume có thể dịch chuyển khi fee quá cao (market response).
- LP incentives / impermanent loss considerations: LPs sẽ đòi fee cao hơn nếu rủi ro tăng.
- Giá token biến động ảnh hưởng tới WETH denominated revenue.



## 7. Kế hoạch triển khai cho protocol muốn capture fee

Bước 0 — Quyết định chiến lược:
- Mục tiêu: short‑term capture (monetize launch) hay long‑term treasury revenue?
- Mức chấp nhận rủi ro: security, reputational, liquidity.

Bước 1 — Thiết kế tokenomics & fee logic:
- Quyết định fee tiers, phân bổ giữa LPs và protocol (VD: 1.5%/1.5%).
- Xác định cơ chế sử dụng fee (treasury, buyback, staking rewards).

Bước 2 — Kỹ thuật và bảo mật:
- Nếu fork Uniswap V2 ⇒ audit toàn bộ contract, kiểm thử exploit vectors.
- Ưu tiên: dùng V4 hooks hoặc Balancer nếu muốn tận dụng liquidity & security lớn.
- Thiết kế multisig / timelock cho address thu phí; minh bạch accounting.

Bước 3 — Containment & network control:
- Xem xét ràng buộc minting/transfer (tính khả thi, UX).
- Tạo thanh khoản đủ sâu trên AMM riêng để giữ trải nghiệm thấp slippage.
- Design incentive programs để migrate LPs (liquidity mining) thay vì chỉ mua trên DEX lớn.

Bước 4 — Compatibility & aggregators:
- Làm việc với aggregators (1inch, Paraswap) để list pool custom/own AMM.
- Bảo đảm UX: đơn giản hóa flow mua token (bypass need to buy WETH trước), VD: tích hợp fiat/on‑ramp hoặc cặp fiat/WETH.

Bước 5 — Monitoring & ops:
- Thiết lập dashboard theo dõi fees, volume, TVL, on‑chain leaks (tracking pools trên DEX khác).
- Thiết lập alarm cho front‑running, MEV, rug risks.

Bước 6 — Community & governance:
- Truyền thông rõ ràng về mục đích phí: treasury use, buyback, phát triển.
- Nếu muốn decentralize, đưa cơ chế chia sẻ phí vào governance roadmap.

Ví dụ thực thi: FriendTech đã kiểm soát transferability ban đầu, cung cấp UI duy nhất để giao dịch — điều đó hạn chế khả năng bên thứ 3 open pool ngay lập tức và giúp capture phí hiệu quả [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).



## 8. Rủi ro cụ thể và cách giảm thiểu

- Smart contract exploits: audit nhiều vòng, bug bounty, formal verification cho các phần core.
- Liquidity fragmentation: khuyến khích LP bằng incentives, initial bootstrap bằng treasury‑backed liquidity mining.
- Governance attack: fee address phải be controlled with multisig + timelock; rõ ràng spend policy để tránh misuse.
- Reputational risk: minh bạch reporting, báo cáo định kỳ về phí thu vào và sử dụng.
- MEV & front‑running: thiết kế pool logic để giảm MEV (CFMM parameters, TWAMM, batch auctions nếu cần).
- Regulatory scrutiny: nếu fees tương tự "tax", cân nhắc implications theo jurisdiction, có thể cần tư vấn pháp lý.



## 9. Lợi ích dài hạn nếu capture fee thành công

- Nguồn thu ổn định cho treasury: tài trợ phát triển, grants, bug bounties.
- Tăng optionality cho tokenomics: buyback‑and‑burn, vesting, staking rewards.
- Giảm phụ thuộc vào CEX listing deals để có thanh khoản ban đầu.
- Tạo cơ chế incentive khép kín: khuyến khích liquidity bên trong hệ để tăng capture value.
- Khi kết hợp đúng, capture fee có thể chuyển hoá token launch thành nguồn vốn hoạt động thực tế cho protocol.



## 10. Chính sách thiết kế fee — checklist kỹ thuật và kinh tế

Checklist cần thực hiện trước khi quyết định:
- [ ] Ước tính expected launch volume (V) dựa trên cohort user và precedents.
- [ ] Tối ưu fee tier sao cho balance giữa capture và giữ volume.
- [ ] Đo lường elasticity of demand: fee tăng bao nhiêu thì volume giảm bao nhiêu?
- [ ] Hạch toán cost: audit + dev + monitoring vs projected protocol revenue.
- [ ] UX flows: có làm buyer friction giảm không?
- [ ] Plan B: nếu pool trên DEX lớn vẫn capture majority, có phương án migration.

Thực tế triển khai phải đi kèm model số: scenario analysis (base / optimistic / pessimistic) với các giả định về volume retention sau khi fee tăng.



## 11. Kết luận phân tích

- Hiện trạng: nhiều protocol đang để mất phần lớn giá trị tạo ra trong quá trình token launch do mô hình phí của DEX AMM hiện tại [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).
- Sở hữu AMM curve (hoặc sử dụng pool customizable trên Uniswap V4/Balancer V3) là một phương án thực tế để capture fee, nhưng đi kèm chi phí và rủi ro lớn.
- Case studies (FriendTech/BunnySwap; Ronin/Katana) chứng minh rõ tính hiệu quả khi có constraints hệ sinh thái giúp giữ thanh khoản nội bộ và cho phép thu phí giao thức [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).
- Roadmap khả thi cho hầu hết protocol: bắt đầu bằng pool custom trên nền tảng lớn (V4/V3), chỉ khi cần thiết mới fork AMM toàn bộ — đây là con đường tối ưu để cân bằng capture value và giữ liquidity network effects [Uniswap V4 whitepaper](https://github.com/Uniswap/v4-core/blob/main/docs/whitepaper-v4.pdf) / [Balancer V3](https://medium.com/balancer-protocol/balancer-v3-embracing-the-future-of-defi-46f37f4368aa).



## 12. Tài liệu tham khảo & links (trích từ báo cáo gốc)

- Bài gốc: Why Protocols Could Benefit From Owning Their AMM Curve — Wintermute Research [Wintermute](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve)
- Unibot revenue analysis (Dune): [Dune / Unibot revenue](https://dune.com/whale_hunter/unibot-revenue)
- FriendTech protocol fee address: [BaseScan address](https://basescan.org/address/0x831be9e08185eba7d88aab1efc059336babef430)
- Katana DEX (Ronin): [Katana DEX](https://app.roninchain.com/swap)
- Balancer V3 announcement: [Balancer V3](https://medium.com/balancer-protocol/balancer-v3-embracing-the-future-of-defi-46f37f4368aa)
- Uniswap V4 whitepaper / hooks: [Uniswap V4 whitepaper](https://github.com/Uniswap/v4-core/blob/main/docs/whitepaper-v4.pdf)



*Bài viết này được biên dịch từ [nguồn gốc](https://www.wintermute.com/insights/research/defi-research/why-protocols-could-benefit-from-owning-their-amm-curve).*