<Header title="On-chain AI Agents: Từ Chatbots đến Quản lý Tài sản Tự động" categories={["DeFi", "AI", "Agentic Finance"]} date="2026-03-05" readTime={15} />

<AlphaBox>
Sự chuyển mình của hệ sinh thái tiền điện tử sang nền kinh tế do máy móc điều khiển đánh dấu bước ngoặt kiến trúc quan trọng nhất kể từ khi smart contract ra đời. Từ những lớp giao diện chatbot đơn giản dựa trên Large Language Models (LLM), đến đầu năm 2026, thị trường đã phát triển thành các tác nhân AI tự trị hoàn chỉnh, có khả năng quản lý tài sản, triển khai chiến lược DeFi phức tạp đa chuỗi và sở hữu định danh on-chain tiêu chuẩn ERC-8004. Tuy nhiên, sự tăng trưởng này bị bóp nghẹt bởi chi phí hạ tầng và khó khăn trong việc đạt "độ cuối cứng" cho các giao dịch tự trị giá trị cao. [0G](https://0g.ai/blog/agentic-ai-market-infra-2026)
</AlphaBox>

### Kiến trúc kỹ thuật: Xác minh làm tiền đề cho tính tự trị

Cho đến năm 2025, để AI agent hoạt động như một thực thể kinh tế có chủ quyền, phần xử lý cần phải được xác minh một cách đáng tin cậy. Hệ sinh thái phân quyền thay thế niềm tin bằng các chuẩn mật mã hoặc phần cứng minh bạch. Hai pháp chế chủ lực hiện nay là Trusted Execution Environments (TEE) và Zero-Knowledge Machine Learning (zkML), đứng ở hai cực của tam giác cân bằng giữa độ trễ, chi phí và an toàn. [arXiv](https://arxiv.org/html/2512.20176v1)

#### Phương thức Xác minh: TEE so với zkML

- **TEE** tận dụng enclave phần cứng bảo mật (Intel SGX, TDX; NVIDIA H100/H200) để chạy inference gần tốc độ native, thích hợp cho giao dịch tần suất cao. Tuy nhiên, rủi ro đến từ các cuộc tấn công kênh bên cũng như sự phụ thuộc vào nhà sản xuất phần cứng. Chi phí GPU TEE cao ngất, từ 25,000 đến 40,000 đô la một unit. [ICME](https://blog.icme.io/trustless-agents-with-zkml/)
  
- **zkML** cung cấp bằng chứng tính hợp lệ dựa trên mật mã mà không cần tin vào phần cứng hoặc tiết lộ tham số model. Hạn chế lớn nhất là "Overhead chứng minh" do chuyển các phép tính float-point thành số học trường hữu hạn, khiến thời gian chứng minh tăng theo hàm \( T_{prove} \approx O(k \cdot N \log N) \) trong đó \(k\) rất lớn (~10^3 đến 10^4). Các zkVM như JOLT-Atlas đã rút ngắn thời gian chứng minh tới 99% so với zkML truyền thống, tuy nhiên khối lượng model trên 70 tỷ tham số vẫn là thách thức. [ICME](https://blog.icme.io/the-definitive-guide-to-zkml-2025/)

<Chart
  type="column"
  title="So sánh hiệu suất và chi phí kỹ thuật giữa TEE, zkML và opML"
  figure="$"
  dataPoints={[500, 60, 10080]} 
  labels={["TEE (~500ms)", "zkML (Seconds-Minutes)", "opML (7 ngày)"]}
/>

| Metric              | Trusted Execution Environments (TEE)                  | Zero-Knowledge Machine Learning (zkML)          | Optimistic Machine Learning (opML)           |
|---------------------|------------------------------------------------------|-------------------------------------------------|----------------------------------------------|
| Trust Model         | Nhà sản xuất phần cứng (Intel/NVIDIA)                 | Chứng minh mật mã (Toán học)                      | Honest Sequencer + 7 ngày tranh chấp           |
| Verification Latency | ~500 ms (Provisional)                                 | Từ vài giây đến vài phút (Hard Finality)          | 7 ngày thách thức                              |
| Privacy Guarantee    | Cao (Bộ nhớ mã hóa enclave)                           | Cao (Ẩn input/quân trọng lượng)                   | Trung bình (Tiết lộ trong tranh chấp)            |
| Inference Cost       | Gần native                                           | 10,000x đến 1,000,000x gánh nặng                   | Gần native                                    |
| Model Size Support   | 70B+ (phụ thuộc GPU TEE)                              | Hạn chế (<1 tỷ tham số hiện nay)                    | Hỗ trợ cao (bị giới hạn bởi khả năng tái tạo dấu vết) |
| Use Case             | Chat tương tác thời gian thực, giao dịch thuận mua     | DeFi giá trị cao, quản trị, kiểm toán              | DeFi trễ độ trễ thấp                           |

Nguồn: [arXiv](https://arxiv.org/html/2512.20176v1)

### Định danh on-chain: Chuẩn ERC-8004

Chuẩn ERC-8004 do Ethereum Foundation phối hợp với MetaMask, Coinbase và Google phát triển là bước ngoặt trong chuẩn hóa định danh tác nhân AI trên chuỗi. Trước đây, những tác nhân này chỉ được nhận biết thông qua địa chỉ ví đơn giản, thiếu metadata để xây dựng danh tiếng và tương tác liên tổ chức. ERC-8004 tích hợp ba registry on-chain nhẹ: Định danh, Uy tín và Xác nhận, tất cả được token hóa dưới dạng ERC-721 NFT, tạo "hộ chiếu blockchain" ghi nhận kỹ năng, endpoint và lịch sử hoạt động. Đến đầu 2026, hơn 24,000 agent đã đăng ký trên mạng Ethereum và các L2, hình thành một "Internet of Agents" cho phép máy móc đánh giá độ tin cậy trước khi giao dịch. [Backpack Learn](https://learn.backpack.exchange/articles/erc-8004-explained)

### Solana dẫn đầu mặt trận agentic

Ethereum vẫn là lớp thanh toán chính cho các định danh agentic giá trị cao, song Solana chiếm đa phần hoạt động thực thi nhờ thông lượng lớn và độ trễ thấp. Các tính năng Solana Actions và "Blinks" cho phép bất kỳ hành động on-chain nào đều có thể chuyển thành URL chia sẻ, được agent xử lý trực tiếp mà không cần interface dApp truyền thống. Solana Agent Kit hỗ trợ kết nối mô hình AI với hơn 30 protocol, cho phép hơn 60 hành động tự động như swap token, cho vay và giao dịch perp, mặc dù tồn tại nguy cơ bảo mật private key nếu agent bị đánh lừa chuyển tiền. Sự áp dụng trong tổ chức được thể hiện qua các dự án như Chronoeffector AI Arena và Breeze Agent Kit. [Solana Foundation](https://solana.com/developers/guides/advanced/actions), [GitHub](https://github.com/sendaifun/solana-agent-kit)

### Số liệu phát triển hệ sinh thái Solana (2024-2025)

| Metric                   | Giá trị / Tốc độ tăng trưởng | Ý nghĩa tổ chức                      |
|--------------------------|-----------------------------|------------------------------------|
| Nhà phát triển hoạt động hàng tháng | >1,000 (Mã nguồn mở)            | Tăng trưởng hệ sinh thái bền vững   |
| Tăng trưởng nhà phát triển mới      | 83% YoY                        | Hệ sinh thái số 1 về phát triển 2024|
| Tỷ trọng giao dịch DEX             | 81% tổng giao dịch DEX         | Tập trung thanh khoản cho giao dịch agentic |
| Số giao dịch hàng ngày (Base L2)    | 11.65 triệu (24h)               | Môi trường tần suất cao cho agent     |
| Vốn hóa stablecoin (Base L2)        | >8.8 tỷ USD                   | Thanh khoản thanh toán agent nội bộ   |

Nguồn: [PatentPC](https://patentpc.com/blog/blockchain-developer-activity-github-ecosystem-stats), [DefiLlama](https://defillama.com/chain/base)

Tuy nhiên, phần lớn hoạt động vẫn được kích thích bởi các đợt "AI Meme" đầu cơ. Công cụ như Solana Developer MCP hứa hẹn chuyển đổi cơ sở hạ tầng từ đồ chơi đầu cơ thành môi trường phát triển chuyên nghiệp, cho phép agent truy vấn tài liệu cập nhật và triển khai smart contract trực tiếp từ IDE. [Solana Foundation GitHub](https://github.com/solana-foundation/awesome-solana-ai)

### Kiến trúc kinh tế: Chuẩn thanh toán x402

Các kênh thanh toán truyền thống vốn định hướng con người như thẻ tín dụng hay đăng ký KYC không phù hợp với thực thể agent tự động. Chuẩn x402, đồng sáng lập bởi Coinbase và Cloudflare, thay thế bằng phương thức thanh toán native internet qua mã trạng thái HTTP 402 "Payment Required," cho phép agent thanh toán ổn định (USDC chủ yếu) ngay trong HTTP headers.

Quy trình x402 vận hành không tốn gas cho client, gồm các bước:

- Agent yêu cầu tài nguyên → server trả HTTP 402 đi kèm dữ liệu thanh toán (số tiền, người nhận, chuỗi),

- Agent ký xác nhận gasless tại chỗ rồi gửi lại góilệnh kèm header PAYMENT-SIGNATURE.

Cơ chế này giải quyết bài toán thiếu API key và trả trước, tối ưu cho mô hình trả tiền từng yêu cầu phù hợp giao dịch tần suất cao. [Allium](https://www.allium.so/blog/x402-explained-the-internet-native-payments-standard-for-apis-data-and-agent-commerce/)

| Tiêu chí             | API Truyền thống (Stripe/SaaS)   | x402 (Stablecoin-native)           |
|---------------------|---------------------------------|-----------------------------------|
| Giao dịch tối thiểu  | ~0.30 USD (Phí cố định cản ngại) | ~0.001 USD (Tối ưu gas L2)          |
| Thời gian setup      | Nhiều giờ (KYC, tài khoản, thẻ)  | Millisecond (Chữ ký dựa trên blockchain)  |
| Rủi ro thu hồi tiền  | Cao (dễ mất doanh thu)            | Bằng 0 (finality blockchain)        |
| Yêu cầu can thiệp người | Cần                           | Tự động hoàn toàn                  |
| Mô hình thanh toán   | Trả theo tháng / trả trước        | Thanh toán thời gian thực theo yêu cầu |

Tính đến đầu năm 2026, x402 đã xử lý hơn 75.4 triệu giao dịch với tổng khối lượng 24.24 triệu USD, có 22,000 người bán và 94,000 người mua duy nhất. Khoảng 40% hoạt động thuộc về agent mua dữ liệu hoặc dịch vụ tính toán chuyên biệt, báo hiệu sự hình thành nền kinh tế dịch vụ agent-to-agent. [x402.org](https://www.x402.org/)

### Case Study I: Virtuals Protocol và Agentic GDP

Virtuals Protocol định vị mình là "Agentic GDP" — bộ máy phối hợp cho hệ sinh thái token hóa và tạo doanh thu từ các AI agent. Mục tiêu của Virtuals là chuyển vai trò con người từ lao động trực tiếp sang điều phối và phân bổ vốn, với các agent tự quản lý tài nguyên và giao dịch sử dụng token $VIRTUAL làm thanh khoản nền tảng.

Các trụ cột kiến trúc:

1. **Agent Commerce Protocol (ACP):** chuẩn hóa discovery và thanh toán agent-to-agent.  
2. **Stateful AI Runner (SAR):** môi trường host agent đa phương thức (text, speech, 3D) tương tác thời gian thực.  
3. **Tokenization Platform:** cơ chế fair-launch qua Initial Agent Offerings (IAO) để cân bằng lợi ích giữa nhà tạo và agent.  
4. **Long-Term Memory Processor:** cho phép agent học hỏi và thích nghi từ dữ liệu tương tác lịch sử.  

| Chỉ số              | Q4 2024   | Q1 2025   | Q2 2025   | Q3 2025   | Q4 2025   |
|---------------------|-----------|-----------|-----------|-----------|-----------|
| Doanh thu gộp       | $20.63M   | $19.49M   | $10.76M   | $7.00M    | $8.89M    |
| Khối lượng DEX 24h   | $49.37M   | -         | -         | -         | $94.28M   |
| TVL                 | -         | -         | -         | -         | $16.21M   |
| TVL điều chỉnh (aTVL)| -         | -         | -         | -         | $21.74M   |
| Doanh thu giao dịch hàng ngày | - | -         | -         | -         | $2.51M*   |

\*Số liệu Q1 2026 còn hoàn thiện một phần. [Virtuals Whitepaper](https://whitepaper.virtuals.io/), [CoinGecko](https://www.coingecko.com/en/coins/virtual-protocol)

Mô hình giảm phát sử dụng phí 1% từ giao dịch agent để mua lại và đốt $VIRTUAL, tạo vòng tuần hoàn kinh tế bền vững. Mặc dù doanh thu gộp sụt giảm trong 2025, phản ánh chuyển dịch từ agent "meme" sang thực dụng, thanh khoản $VIRTUAL vẫn được duy trì cao trên các sàn lớn như Binance, OKX.

### Case Study II: Wayfinder – Lớp Điều Hướng On-chain

Wayfinder (token PROMPT) xây dựng cơ sở hạ tầng giúp các "Shell" - agent tự trị - điều hướng đa chuỗi DeFi. Giao diện "Ecosystem Graph" tập hợp smart contract, tài sản và protocol, cho phép agent triển khai các workflow giao tiếp phức tạp.

Điểm mới là "Wayfinding Path" - bộ lệnh do cộng đồng phát triển hướng dẫn agent đến đích cụ thể (DEX pool, thị trường NFT). Các đường đi này được "Verification Agents" bảo vệ bằng staking PROMPT: nếu phát hiện lỗi, stake bị thu giữ.

Token PROMPT có tổng cung 1 tỷ, chức năng chính gồm thanh toán phí gas, kích hoạt Shell, và quyền biểu quyết on-chain cùng con người.

| Loại phân bổ         | Tỷ lệ %  | Chức năng                                  |
|---------------------|----------|--------------------------------------------|
| Ecosystem Caching    | 45%      | Phần thưởng token cho holders bảo vệ protocol |
| Wayfinding Rewards  | 5%       | Thưởng sáng tạo đường dẫn tương tác mới    |
| Nhà đầu tư & nhóm phát triển | Còn lại  | Dự phòng phát triển và tài trợ              |
| Quản trị             | Bắt buộc | Biểu quyết nâng cấp giao thức (bằng agent và con người) |

Wayfinder hoạt động đa chuỗi, hỗ trợ Ethereum, Base, Solana, Cosmos. Hợp tác với Biconomy cho phép Shell thanh toán gas trực tiếp bằng PROMPT, đơn giản hoá thao tác on-chain. [Wayfinder](https://paper.wayfinder.ai/wayfinder_paper_v1.pdf), [IQ.wiki](https://iq.wiki/wiki/wayfinder)

### Case Study III: Morpheus – Trí Tuệ AI Phi Tập Trung

Morpheus phát triển mạng lưới P2P phân quyền, giảm tập trung trong việc truy cập "Smart Agents" cá nhân. Mô hình fair-launch, không có pre-mine hay private sale, hoàn toàn vận hành bởi cộng đồng mã nguồn mở.

Mỗi ngày mạng cấp phát 14,400 token MOR cho 4 nhóm đóng góp chính: Code, Compute, Capital (cung cấp thanh khoản stETH), và Community. 50% yield stETH được dùng mua MOR, sau đó phối hợp thanh khoản sở hữu bởi protocol.

| Nhóm đóng góp       | Phân bổ MOR (hàng ngày) | Tiêu chí nhận thưởng                     |
|---------------------|-------------------------|------------------------------------------|
| Code                | 3,456                   | Đóng góp commit code                      |
| Compute             | 3,456                   | Số lượng API inference phục vụ            |
| Capital             | 3,456                   | Yield stETH đóng góp (PoL)                 |
| Community           | 3,456                   | Xây dựng frontend và công cụ tương tác    |
| Quỹ bảo vệ          | 576                     | Dự phòng bảo mật hợp đồng và lỗi          |

Hiện tại, trên 320,000 ETH đã được stake trong mạng lưới, với hơn 6,500 nhà cung cấp thanh khoản, tạo nền tảng cho inference phi tập trung, trả công theo nhu cầu sử dụng tính toán. Dù vậy, chu kỳ phát hành token kéo dài 16 năm tiềm ẩn rủi ro pha loãng nếu không chuyển đổi kịp sang mô hình phí dịch vụ. [Morpheus GitHub](https://github.com/MorpheusAIs/Docs/blob/main/!KEYDOCS%20README%20FIRST!/WhitePaper.md)

### Triển vọng đầu tư: Sự suy tàn của MEV độc hại

Sự ra đời của các agent tự trị đã làm thay đổi cấu trúc thị trường DeFi từ mô hình đối đầu sang có trung gian điều phối. Từ các hoạt động MEV gây hại như front-running, sandwich attack vào liquidity cá nhân, đến năm 2025, việc chuyển sang kênh riêng tư và hệ thống giải quyết vấn đề (solver-based routing) đã tạo ra "bầy bảo vệ" cho người dùng.

Các agent đại diện cho trader tương tác trực tiếp với block builder hoặc dark pool off-chain, phân nhỏ lệnh lớn thành các micro giao dịch mã hoá tránh bộ nhớ công khai, hạn chế trượt giá và giảm thiểu rủi ro. Song điều này cũng tập trung quyền lực vào một chuỗi cung ứng nhỏ hẹp hơn.

| Đặc tính            | 2020-2024 (Cấu trúc thị trường) | 2025-2026 (Chuyển đổi Agentic)       |
|---------------------|---------------------------------|-------------------------------------|
| Thực thi           | Mempool công khai (Slippage cao) | Routing riêng tư / Giải pháp solver |
| Hoạt động MEV       | Bot thù địch / Độc hại           | Protective Agents / Auctions solver |
| Thanh khoản         | Định hướng bán lẻ / đầu cơ       | Có cấu trúc / Tổ chức               |
| Minh bạch           | Cao trước giao dịch (dễ tấn công) | Thấp hơn, đã công nghiệp hoá         |
| Phí                  | Giá gas biến động               | Được trung gian/Facilitator thanh toán |

Dòng tiền tổ chức tăng mạnh đến cuối 2025, với các quỹ Digital Asset Treasury (DAT) và ETF nắm giữ khoảng 10% nguồn cung Bitcoin và Ethereum. Báo cáo a16z “State of Crypto 2025” nhận định crypto đã trở thành "xương sống tài chính" cho hệ thống tự trị, là tầng phối hợp trung lập cung cấp chứng cứ nguồn gốc nội dung và cấp phép IP trong thế giới AI. [Flashbots](https://collective.flashbots.net/t/rise-of-ai-agents/4813), [a16z](https://a16zcrypto.com/posts/article/state-of-crypto-report-2025/)

### Rủi ro: An ninh, Pháp lý và Triết lý

- **Tấn công phần cứng TEE:** GPU TEE mở mặt phẳng tấn công mới như buffer dữ liệu và phụ thuộc vào firmware NVIDIA độc quyền làm tăng nguy cơ bị kiểm soát hoặc can thiệp. [ICME](https://blog.icme.io/trustless-agents-with-zkml/)
- **Hallucination trong tài chính:** LLM đầu có thể sai sót ở điểm thập phân hoặc địa chỉ hợp đồng, dẫn đến tổn thất lớn. [Phemex](https://phemex.com/academy/what-is-gentic-finance-machine-economy)
- **Tấn công Sybil và gian lận uy tín:** ERC-8004 dễ bị lạm dụng tạo hồ sơ giả tạo để xây dựng lòng tin không trung thực. [Medium](https://medium.com/@gwrx2005/erc-8004-and-the-ethereum-ai-agent-economy-technical-economic-and-policy-analysis-3134290b24d1)
- **Quản trị khóa cá nhân:** Các agent cần private key để tự động tranh thủ, dễ bị tấn công prompt injection lừa chuyển tiền. [Solana](https://solana.com/developers/guides/getstarted/intro-to-ai)
- **Độc quyền phần cứng:** Chi phí GPU H100/H200 cao tạo rào cản tập trung hóa vào các nhà cung cấp đám mây lớn, đi ngược lại tinh thần phi tập trung. [ICME](https://blog.icme.io/trustless-agents-with-zkml/)
- **Chính sách pháp lý:** EU quy định AI trong tài chính thuộc nhóm "rủi ro cao" theo AI Act, yêu cầu bảo mật và audit nghiêm ngặt. Các thể chế khác như EBA, DORA và MiCA đang tích hợp thêm tầng quản lý AI cụ thể. UAE đặt quy tắc cư trú dữ liệu cứng nhắc khiến việc triển khai mạng agent toàn cầu gặp khó khăn. [TwoBirds](https://www.twobirds.com/en/insights/2026/recent-developments-on-the-interplay-between-ai-and-financial-institutions), [RiseUpLabs](https://riseuplabs.com/ai-agents-in-finance-in-uae/)

### Kết luận và khuyến nghị chiến lược

Chuyển đổi từ chatbot sang asset manager tự trị không còn là tương lai xa mà đã là thực tế với TVL 124 tỷ USD cuối 2025. Kiến trúc kỹ thuật chia làm hai nhánh rõ rệt: TEE cho tương tác thời gian thực hiệu năng cao và zkML cung cấp độ bảo đảm toán học cho những giao dịch trọng yếu.

Các giao thức như Virtuals và Wayfinder đã thiết lập nền tảng cho "Agentic GDP," trong khi Morpheus là động lực thanh khoản cho trí tuệ phi tập trung. Về mặt chiến lược, tổ chức cần ưu tiên áp dụng routing agent bảo vệ để thích ứng thị trường MEV công nghiệp hóa, đồng thời tích hợp chuẩn ERC-8004 để quản trị rủi ro danh tiếng đối tác tự trị.

Thành công của nền kinh tế máy móc phụ thuộc vào việc giảm tiếp tục chi phí chứng minh zkML và đồng bộ hoá khung pháp lý toàn cầu như MiCA, EU AI Act. Góc nhìn bi quan cho thấy người thắng cuối cùng sẽ là kẻ kiểm soát hạ tầng xác minh hiệu suất cao và hệ thống danh tiếng làm nền tảng cho niềm tin máy-máy.

---

### Tài liệu tham khảo (Trích chọn)

1. [Agentic AI Market at $7.3B: Infrastructure Gaps Blocking Scale | 0G](https://0g.ai/blog/agentic-ai-market-infra-2026)  
2. [Optimistic TEE-Rollups: A Hybrid Architecture for Scalable and Verifiable Generative AI Inference on Blockchain - arXiv](https://arxiv.org/html/2512.20176v1)  
3. [ERC-8004 Explained: Ethereum's AI Agent Standard Guide 2025 - Backpack Learn](https://learn.backpack.exchange/articles/erc-8004-explained)  
4. [The Definitive Guide to ZKML (2025). - ICME](https://blog.icme.io/the-definitive-guide-to-zkml-2025/)  
5. [What is Agentic Finance? The Dawn of the Trillion-Dollar Machine Economy - Phemex](https://phemex.com/academy/what-is-gentic-finance-machine-economy)  
6. [Trustless Agents — with zkML - ICME](https://blog.icme.io/trustless-agents-with-zkml/)  
7. [Solana Developer and Transaction Metrics](https://patentpc.com/blog/blockchain-developer-activity-github-ecosystem-stats)  
8. [x402: Internet-Native Payments for APIs and AI Agents - Allium](https://www.allium.so/blog/x402-explained-the-internet-native-payments-standard-for-apis-data-and-agent-commerce/)  
9. [Virtuals Protocol Whitepaper](https://whitepaper.virtuals.io/)  
10. [Wayfinder - Dapps | IQ.wiki](https://iq.wiki/wiki/wayfinder)  
11. [MOR: Decentralized AI Smart Agent Network | MOR Whitepaper - Bitget](https://www.bitget.com/price/mor/whitepaper)  
12. [State of DeFi 2025 - DL News](https://www.dlnews.com/research/internal/state-of-defi-2025/)  
13. [State of Crypto 2025: The year crypto went mainstream - a16z crypto](https://a16zcrypto.com/posts/article/state-of-crypto-report-2025/)  
14. [ERC-8004 and the Ethereum AI Agent Economy: Technical, Economic, and Policy Analysis](https://medium.com/@gwrx2005/erc-8004-and-the-ethereum-ai-agent-economy-technical-economic-and-policy-analysis-3134290b24d1)  
15. [Recent developments on the interplay between AI and financial institutions - TwoBirds](https://www.twobirds.com/en/insights/2026/recent-developments-on-the-interplay-between-ai-and-financial-institutions)  
16. [AI Agents In Finance In UAE: Use Cases, Regulations, And Deployment Guide](https://riseuplabs.com/ai-agents-in-finance-in-uae/)