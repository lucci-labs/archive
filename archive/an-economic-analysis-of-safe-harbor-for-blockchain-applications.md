<Header title="An economic analysis of safe harbor for blockchain applications" categories={["Market"]} date="2026-04-07" readTime={5} />

<AlphaBox content="Báo cáo phân tích kinh tế của Giáo sư Craig Lewis (cựu Chief Economist của SEC) đánh giá rằng đề xuất ‘safe harbor’ dành cho các blockchain front-end apps sẽ giải phóng lợi ích lớn của tokenization—atomic settlement, onchain transparency, giao dịch 24/7 và tiết giảm chi phí—trong khi các rủi ro (mất mát bảo hộ nhà đầu tư, regulatory arbitrage, phân mảnh thị trường, chi phí DeFi cho retail) có thể được quản lý. Lewis kết luận lợi ích tổng thể có thể vượt trội chi phí." />

<Signals title="Key signals from the analysis" data={[{ title: "Atomic settlement", value: "Giảm rủi ro đối tác", trend: "up", trendValue: "↓ counterparty risk" },{ title: "Onchain transparency", value: "Ghi nhận giao dịch công khai", trend: "up", trendValue: "↑ verifiability" },{ title: "24/7 trading", value: "Mở rộng price discovery", trend: "up", trendValue: "↑ liquidity windows" },{ title: "Operational cost reduction", value: "40–60% (est.)", trend: "up", trendValue: "40–60%" },{ title: "Barriers to entry", value: "Giảm, thúc đẩy cạnh tranh", trend: "up", trendValue: "↑ competition" }]} />


### Tổng quan

Việc đưa securities truyền thống lên Onchain là trọng tâm chính của SEC. Nhận thấy tiềm năng của tokenization, Ủy ban dưới quyền Chủ tịch Atkins đã khởi động Project Crypto với mục tiêu cập nhật khung rules và regulations nhằm cho phép thị trường tài chính Hoa Kỳ vận hành onchain — đem lại instant settlement, hoạt động 24/7, giảm chi phí và nhiều lợi ích khác.

Để thực sự giải phóng tiềm năng của tokenized securities, các nhà đổi mới và nhà đầu tư cần có "rules of the road" rõ ràng cho các blockchain applications, cho phép người dùng giao dịch tokenized securities theo cơ chế peer-to-peer mà không cần intermediaries.

Tháng 8 năm trước, A16z cùng DeFi Education Fund đã gửi một đề xuất safe harbor tới SEC, nêu rõ tiêu chí khi nào các blockchain-based applications — các phần mềm trung tính giúp tương tác với public blockchain và smart contract protocols — nên được loại khỏi registration requirements theo Securities Exchange Act of 1934. Mục tiêu của đề xuất là nêu cách các ứng dụng này vừa mang lại lợi ích cho thị trường, vừa hỗ trợ mission của SEC: bảo vệ nhà đầu tư, duy trì thị trường công bằng/ổn định/hiệu quả và thúc đẩy capital formation.

Gần đây, Giáo sư Craig Lewis (Vanderbilt), cựu Chief Economist và Director of the Division of Economic and Risk Analysis của SEC, đã gửi tới Ủy ban một phân tích kinh tế về đề xuất safe harbor. Phân tích của Lewis tập trung vào đề xuất này, đồng thời trình bày chi phí và lợi ích kinh tế rộng hơn của tokenized securities — cung cấp cái nhìn sâu về tiềm năng của blockchain để biến đổi hệ thống tài chính truyền thống. a16z tài trợ cho nghiên cứu này nhưng Lewis áp dụng phương pháp luận độc lập trong việc đo đếm lợi ích và chi phí.

### Năm lợi ích chính mà safe harbor có thể mở khóa

Lewis xác định **5 lợi ích** mà safe harbor có thể cho phép các ứng dụng đủ điều kiện đạt được:

- **Atomic settlement** — loại bỏ credit risk của counterparty liên quan đến các cửa sổ settlement trì hoãn, đồng thời giảm nguy cơ hệ thống khi một central counterparty thất bại và lan rộng sang thị trường.
- **Onchain transparency** — thay thế ledger nội bộ mờ với một bản ghi giao dịch công khai, có thể xác minh.
- **Continuous 24/7 trading of tokenized securities** — mở rộng price discovery và liquidity vượt ra khỏi giới hạn địa lý và thời gian của giờ giao dịch truyền thống.
- **Concrete direct cost reductions** nhờ smart contracts — tự động hóa corporate actions như thanh toán dividend và một số chức năng compliance. Ví dụ, nghiên cứu từ Ripple và BCG ước tính tokenizing một investment-grade bond có thể cắt giảm operating costs 40–60% so với issuance truyền thống.
- **Lower barriers to entry** — khuyến khích developers mới cạnh tranh với institutions truyền thống, buộc intermediaries phải đổi mới, cuối cùng có lợi cho người dùng.

### Bốn chi phí tiềm tàng mà Lewis nêu

Lewis cũng trình bày **4 chi phí/rủi ro** có thể phát sinh từ đề xuất safe harbor:

- **Eroding investor protections.** Lewis so sánh trực tiếp broker-dealers truyền thống và các qualifying apps, kết luận phạm vi hẹp của đề xuất giữ được protections bằng cách chỉ cho phép phần mềm không tạo ra các rủi ro mà quy định nhắm tới. Tuy nhiên, ông chỉ ra các rủi ro mới: ví dụ, framework broker-dealer cho phép intermediary freeze assets và reverse transactions như biện pháp bảo vệ nhà đầu tư — trong khi eligible apps theo thiết kế thường không có khả năng này.
- **Regulatory arbitrage.** Broker-dealers truyền thống có thể cố gắng tái cấu trúc thành qualifying apps để trốn tránh nghĩa vụ. Nhưng Lewis cho rằng các yêu cầu vận hành để một intermediary truyền thống đáp ứng tiêu chí nghiêm ngặt của đề xuất sẽ là trở ngại lớn.
- **Tokenized securities và phân mảnh thị trường.** Mở rộng giao dịch tokenized securities có nguy cơ phân mảnh thị trường và spillover hệ thống; đòn bẩy trong DeFi có thể truyền stress sang thị trường truyền thống. Lewis khuyến nghị đánh giá rủi ro này so sánh với dark pools và các off-exchange venues vốn đã phân mảnh thị trường hiện tại, đồng thời lưu ý rằng các cấu trúc thị trường phi tập trung thường thể hiện độ resilient vận hành ngay cả trong thời kỳ biến động cao.
- **DeFi trading costs cho retail.** Variable gas fees, price slippage và lỗ hổng smart contract là rủi ro thực tế, nhưng Lewis nhấn mạnh cần so sánh những yếu tố này với chi phí ẩn trong traditional finance (DTC fees, clearing/settlement, intermediary markups, insurance buffers, v.v.). Ông cũng lưu ý chi phí DeFi đang giảm nhanh — ví dụ Ethereum's Dencun upgrade đã giảm chi phí để L2s post data lên mainnet "by over 90%".

### Tiêu chí phạm vi phân tích

Phân tích của Lewis được giới hạn vào front-end applications thỏa mãn tiêu chí đủ điều kiện của đề xuất safe harbor. Lewis nhấn mạnh rằng các ứng dụng đáp ứng **bốn tiêu chí** sau là những *passive software interfaces* và theo thiết kế **không** tạo ra các rủi ro mà Exchange Act nhắm tới:

- Non-custodial architecture
- No discretionary trade execution
- No solicitation or investment recommendations
- Exclusive integration with genuinely decentralized protocols (với một số khoan nhượng cho các giao thức đang pursue decentralization in good faith)

Lewis còn nhắc rằng phép so sánh phù hợp không phải giữa các blockchain apps và một cấu trúc thị trường lý tưởng, mà là giữa chúng và **hệ thống broker-dealer hiện hữu**, vốn chứa nhiều chi phí nhúng và thường không minh bạch: DTC fees, clearing and settlement charges, intermediary markups, insurance buffers, v.v.

### Kết luận của Lewis

Tổng kết, Lewis viết rằng nếu SEC tiến hành một formal economic analysis, kết quả có khả năng chỉ ra rằng Safe Harbor sẽ thúc đẩy hiện thực hóa các lợi ích kinh tế đáng kể vốn có trong tokenized securities. Nói ngắn gọn: có những trade-offs, nhưng lợi ích dự kiến nên vượt trội chi phí.

### Kết luận của bài viết

Tokenization “could transform the financial system as we know it”, như Chủ tịch Atkins đã nhận xét — và SEC đã hỗ trợ tầm nhìn đó qua Project Crypto, joint staff guidance và các bước khác.

Tuy nhiên, để hiện thực hóa tiềm năng đầy đủ của tokenized securities cần có rules rõ ràng và hiệu quả cho các blockchain applications giúp nhà đầu tư giao dịch peer-to-peer không cần intermediaries. Đó là mục tiêu của đề xuất safe harbor — và phân tích của Giáo sư Lewis xác nhận rằng lập luận kinh tế ủng hộ việc áp dụng đề xuất này là thuyết phục. Giáo sư Lewis đã vẽ bản đồ.


> *Bài viết này được biên dịch từ [nguồn gốc](https://a16zcrypto.com/posts/article/economic-analysis-safe-harbor-blockchain-applications-defi/).*