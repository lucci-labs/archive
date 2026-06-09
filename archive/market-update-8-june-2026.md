---
title: "Cập nhật thị trường 8/6/2026: Khi bid ETF biến mất"
categories: ["Market", "Weekly Outlook"]
date: "2026-06-09"
readTime: 10
coverImage: "https://raw.githubusercontent.com/lucci-labs/archive/main/images/market-update-8-june-2026-banner.png"
---

BTC đã phá xuống dưới **$62k**, giảm khoảng **14% trong tuần** và chạm vùng giá thấp nhất kể từ tháng 9/2024. Theo chúng tôi, đây không chỉ là phản ứng với việc Strategy bán **32 BTC**; đó là thời điểm thị trường nhận ra **bid tổ chức qua ETF đã đảo chiều**, AI equities không còn che chắn được risk appetite, còn macro lại quay về chế độ “good news is bad news”.

Điểm quan trọng của tuần 8/6 không nằm ở quy mô bán của Saylor — **32 BTC là rất nhỏ so với hơn 843k BTC Strategy còn nắm giữ** — mà nằm ở tín hiệu: một narrative “never sell” bị test đúng lúc spot BTC ETFs ghi nhận chuỗi rút vốn dài nhất từ khi ra mắt. Khi dòng tiền Mỹ từng kéo BTC từ vùng $70k lên $83k giờ chuyển sang bán, thị trường rơi không phải vì thiếu câu chuyện, mà vì **không còn marginal buyer đủ lớn để hấp thụ supply**.

### Key takeaways

- **BTC thủng $62k**, có lúc về quanh **$59.1k** trước khi hồi về vùng $63k; ETH quanh **$1,660**, SOL quanh **$65-66** và vẫn giảm hai chữ số theo tuần.
- **ETF flows là biến số số 1**: 10 phiên rút ròng liên tiếp tới 30/5 đạt khoảng **$2.97B**; dữ liệu SoSoValue/Farside được CoinTelegraph và Bitcoin.com tổng hợp cho thấy tuần kết thúc 5/6 BTC ETFs rút thêm **~$1.72B**, trong đó IBIT chiếm khoảng **$1.34B**.
- **Macro xấu cho risk assets**: BLS báo cáo Mỹ tạo **172k việc làm trong tháng 5**, unemployment giữ **4.3%**; ISM Services PMI lên **54.5**, prices index **71.3** — cao nhất từ 8/2022. Lợi suất 10Y tiến về **~4.55%**, làm giảm xác suất Fed sớm easing.
- **AI trade bắt đầu nứt**: Nasdaq giảm **4.7%** trong tuần, S&P có tuần giảm đầu tiên từ tháng 3. Khi equity momentum yếu đi, crypto — vốn đã thiếu flow — bị bán mạnh hơn.

<HTMLWidget>
<div id="lucci-market-dashboard" style="background:#0B0B0B;border:1px solid #1E1E1E;color:#D1D1D1;font-family:Inter,Arial,sans-serif;padding:28px;width:100%;box-sizing:border-box">
  <div style="display:flex;justify-content:space-between;gap:18px;align-items:flex-end;border-bottom:1px solid #1E1E1E;padding-bottom:18px;margin-bottom:20px;flex-wrap:wrap">
    <div>
      <div style="color:#FFFFFF;font-family:'Playfair Display',Georgia,serif;font-size:28px;letter-spacing:1.4px;text-transform:uppercase">Market Stress Map</div>
      <div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:2px;text-transform:uppercase;margin-top:6px">8 Jun 2026 / BTC - ETF - Macro - Equities</div>
    </div>
    <div style="color:#00FFA3;font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:2px;text-transform:uppercase;border:1px solid #00FFA3;padding:8px 10px">REGIME: FLOW-LED SELLING</div>
  </div>
  <div style="display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:12px;margin-bottom:24px">
    <div style="border:1px solid #1E1E1E;background:#080808;padding:16px"><div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.8px;text-transform:uppercase">BTC weekly move</div><div style="color:#FF3B5C;font-size:26px;font-family:'JetBrains Mono',monospace;margin-top:10px">-14%</div><div style="color:#D1D1D1;font-size:12px;margin-top:8px">Break dưới $62k</div></div>
    <div style="border:1px solid #1E1E1E;background:#080808;padding:16px"><div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.8px;text-transform:uppercase">BTC ETF week</div><div style="color:#FF3B5C;font-size:26px;font-family:'JetBrains Mono',monospace;margin-top:10px">-$1.72B</div><div style="color:#D1D1D1;font-size:12px;margin-top:8px">Week ending Jun 5</div></div>
    <div style="border:1px solid #1E1E1E;background:#080808;padding:16px"><div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.8px;text-transform:uppercase">US payrolls</div><div style="color:#FFFFFF;font-size:26px;font-family:'JetBrains Mono',monospace;margin-top:10px">172k</div><div style="color:#D1D1D1;font-size:12px;margin-top:8px">vs ~80-85k expected</div></div>
    <div style="border:1px solid #1E1E1E;background:#080808;padding:16px"><div style="color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.8px;text-transform:uppercase">Nasdaq week</div><div style="color:#FF3B5C;font-size:26px;font-family:'JetBrains Mono',monospace;margin-top:10px">-4.7%</div><div style="color:#D1D1D1;font-size:12px;margin-top:8px">AI trade cracked</div></div>
  </div>
  <div style="height:310px"><canvas id="stress-chart"></canvas></div>
  <div style="border-top:1px solid #1E1E1E;margin-top:18px;padding-top:12px;color:#888888;font-family:'JetBrains Mono',monospace;font-size:10px;letter-spacing:1.5px;text-transform:uppercase">SOURCE: BLS, ISM, SOSOVALUE/FARSIDE VIA MARKET REPORTS; LUCCI RESEARCH COMPILED</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
const ctx = document.getElementById('stress-chart');
new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ['BTC %', 'ETH %', 'SOL %', 'BTC ETF $B', 'ETH ETF $B', 'NASDAQ %'],
    datasets: [{
      data: [-14, -16.3, -19, -1.72, -0.17, -4.7],
      backgroundColor: ['#FF3B5C','#FF3B5C','#FF3B5C','#FF3B5C','#FF3B5C','#FF3B5C'],
      borderColor: '#FF3B5C',
      borderWidth: 1
    }]
  },
  options: {
    responsive:true,
    maintainAspectRatio:false,
    plugins:{legend:{display:false}, tooltip:{backgroundColor:'#121212', borderColor:'#1E1E1E', borderWidth:1, titleColor:'#FFFFFF', bodyColor:'#D1D1D1'}},
    scales:{
      x:{ticks:{color:'#888888',font:{family:'JetBrains Mono, monospace',size:10}},grid:{color:'#1E1E1E'}},
      y:{ticks:{color:'#888888',font:{family:'JetBrains Mono, monospace',size:10}},grid:{color:'#333333',borderDash:[4,4]}}
    }
  }
});
</script>
</HTMLWidget>

### Macro: dữ liệu tốt lại trở thành tin xấu

Tinh thần tuần này có thể tóm gọn trong một câu: **good news is bad news**. Báo cáo việc làm tháng 5 của Mỹ từ [BLS](https://www.bls.gov/news.release/archives/empsit_06052026.htm) cho thấy nonfarm payrolls tăng **172k**, cao hơn nhiều so với kỳ vọng quanh **80-85k**, trong khi April được revised lên **179k** từ mức công bố trước đó **115k**. Unemployment giữ **4.3%**.

Một nền kinh tế còn tạo việc làm tốt thường là tin tốt. Nhưng trong regime hiện tại, đó là vấn đề: Fed không có lý do để cắt lãi sớm nếu labor headline vẫn mạnh và lạm phát dịch vụ vẫn nóng. ISM Services PMI tháng 5 tăng lên **54.5**, còn prices index lên **71.3**, mức cao nhất từ tháng 8/2022 theo các tổng hợp thị trường. Lợi suất 10Y vì vậy nhảy về vùng **4.53-4.55%**.

Điểm đáng chú ý: bên dưới headline vẫn có vết nứt. Jobless claims tăng lên **225k**, mức cao nhất từ tháng 2, và announced layoffs tăng tháng thứ ba liên tiếp, trong đó AI được các doanh nghiệp nêu như một lý do chính. Nói cách khác, labor market không “nóng đều”; nó đang mỏng dần ở rìa nhưng headline đủ mạnh để giữ Fed hawkish.

Với crypto, đây là môi trường khó: **rates cao hơn làm tăng discount rate cho tài sản high-beta**, dollar mạnh hơn hút thanh khoản, còn kỳ vọng easing bị đẩy xa hơn. Nếu CPI ngày 10/6 tiếp tục nóng, cú hồi từ $59k lên $63k rất dễ chỉ là relief rally.

### Equities: AI trade không còn miễn nhiễm

Hai tuần trước, câu chuyện là crypto lag equities: Nasdaq và software còn chạy, trong khi BTC/ETH bị ETF outflows kéo xuống. Tuần này lớp bảo vệ đó cũng mất. **Nasdaq giảm 4.7%**, S&P có tuần giảm đầu tiên từ tháng 3. Việc Nvidia có kết quả mạnh nhưng stock không phản ứng nhiều trước đó là tín hiệu exhaustion; đến tuần 8/6, thị trường bắt đầu chốt lời mạnh hơn ở nhóm AI.

Nguyên nhân không chỉ là valuation. Một pipeline IPO quy mô rất lớn — nổi bật là SpaceX ngày 12/6, cùng các thương vụ AI/private tech khác như Anthropic — có thể hút bớt liquidity từ những cổ phiếu AI đã tăng mạnh. Nếu nhà đầu tư muốn tham gia các placement trillion-dollar-plus, cách dễ nhất là bán bớt các winner đã crowded.

Điều này quan trọng với crypto vì suốt tháng 5, equities là nơi retail và vốn risk-on chọn ở lại. Khi AI trade còn tăng, crypto yếu nhưng chưa panic. Khi AI trade nứt, phần thị trường có cấu trúc flow yếu hơn — BTC/ETH — bị bán trước.

### Digital assets: Strategy là catalyst, ETF mới là nguyên nhân

Strategy bán **32 BTC** trong giai đoạn 26-31/5 ở giá trung bình **$77,135/BTC**, thu khoảng **$2.5M** để fund preferred stock distributions, theo [CoinDesk](https://www.coindesk.com/markets/2026/06/01/strategy-sold-32-btc-for-usd2-5-million-in-late-may-filing-shows) và filing 8-K. CNBC ghi nhận đây là lần bán đầu tiên kể từ 2022, khi công ty từng bán trong bối cảnh tax-loss harvesting.

Về mặt cơ học, **32 BTC gần như không đáng kể**: CoinDesk tính con số này chỉ khoảng **0.0038%** lượng BTC Strategy nắm giữ, với balance sheet còn **843,706 BTC** tại cuối tháng 5. Nhưng thị trường không giao dịch trên quy mô tuyệt đối; nó giao dịch trên narrative và positioning. “Saylor bán” xuất hiện đúng lúc bid ETF yếu, OTC participation giảm và retail đang chase equities — vì vậy headline trở thành que diêm châm vào thị trường đã rò khí.

Dữ liệu ETF xác nhận vấn đề lớn hơn. BTC ETFs có **10 phiên rút ròng liên tiếp tới 30/5**, tổng khoảng **$2.97B**, khiến tháng 5 rút ròng **$2.43B**, tháng tệ nhất của 2026. Sau đó, các báo cáo dựa trên SoSoValue/Farside cho tuần kết thúc 5/6 cho thấy:

- BTC spot ETFs rút thêm khoảng **$1.72B** trong tuần, tuần rút vốn thứ tư liên tiếp.
- IBIT của BlackRock chiếm khoảng **$1.34B** outflows; FBTC mất khoảng **$201.9M**, GBTC khoảng **$144.3M**.
- ETH spot ETFs cũng rút khoảng **$168-173M** trong tuần và khoảng **$885M** trong 4 tuần.
- Ngược lại, HYPE ETFs vẫn hút vốn nhỏ nhưng tích cực, khoảng **$16-17M** trong tuần; XRP ETFs cũng có inflows nhẹ.

Đây không phải capitulation đẹp. CoinDesk lưu ý tuần BTC về gần $60k nhưng ETF volume không bùng nổ như các đợt panic trước; outflows tăng trong khi participation mỏng. Theo chúng tôi, đó là **steady exodus**, không phải washout. Một đáy bền thường cần seller exhaustion cộng với bid quay lại; hiện mới có phần đầu, chưa có phần sau.

### Technical: vùng $60k là tâm lý, không phải hỗ trợ dày

Một chi tiết kỹ thuật rất đáng chú ý: trên đường đi lên năm 2024, BTC **không dành nhiều thời gian trong vùng $50-59k**. Điều đó khiến cấu trúc support ở dưới $60k khá mỏng. Khi price discovery đi xuống vùng ít volume history, technical levels kém đáng tin hơn; flow mới là thứ quyết định hướng.

Các vùng cần theo dõi trong ngắn hạn:

- **$62k-63k**: vùng BTC đang cố giữ sau cú hồi đầu tuần. Nếu giữ được, thị trường có cơ hội xây base ngắn.
- **$64.5k-65k**: vùng cần reclaim để giảm áp lực bán theo momentum.
- **$60k**: mốc tâm lý và vùng gần 200-week MA trong nhiều phân tích thị trường. Đóng cửa dưới đây sẽ mở lại rủi ro về **$57.5k-59k**.
- **ETF daily flows**: quan trọng hơn mọi đường MA trong 1-2 tuần tới. Nếu outflows giảm tốc và chuyển thành inflows nhiều phiên, cấu trúc mới đáng tin hơn.

### Altcoins: không có decoupling thật trong tuần như thế này

ETH giảm mạnh hơn BTC theo tuần, có lúc về vùng **$1,540-1,570** trước khi hồi quanh **$1,660**. Vấn đề của ETH vẫn là narrative: network có hoạt động, staking và L2 vẫn phát triển, nhưng **token value capture chưa đủ thuyết phục** trong mắt dòng vốn ETF. Khi ETH ETFs rút gần **$900M** trong 4 tuần, thị trường không cần tranh luận quá nhiều về narrative; flow đang bỏ phiếu bằng tiền.

SOL quanh **$65-66**, giảm gần **19%** theo tuần theo dữ liệu thị trường ngày 8/6. High-beta altcoins không thể đứng vững khi BTC thủng support và funding/leverage bị reset. HYPE là ngoại lệ tương đối nhờ câu chuyện perps/on-chain exchange và ETF cấu trúc riêng, nhưng ngay cả HYPE cũng bị kéo xuống bởi beta thị trường — trong tuần risk-off sâu, correlation sẽ tăng.

ZEC là case riêng: soundness bug trong shielded pool, về lý thuyết, có thể cho phép counterfeit supply không bị phát hiện. Dù emergency fork diễn ra và chưa thấy exploit, niềm tin với privacy coin bị đánh trực diện; ZEC giảm **40-50%** từ đỉnh. Với privacy assets, **confidence in shielded supply is the product** — mất niềm tin là mất định giá.

### Điều gì có thể đảo chiều?

Chúng tôi không gọi đáy ở đây. Lý do đơn giản: **chưa có bằng chứng inflows tổ chức quay lại bền vững**. Nhưng rủi ro/lợi nhuận dài hạn bắt đầu tốt hơn so với vùng $75-80k vì forced selling đã loại bỏ một phần leverage và sentiment rơi nhanh sang extreme fear.

Ba catalyst cần theo dõi:

1. **CPI ngày 10/6**: số mát hơn kỳ vọng có thể kéo yields xuống và cho BTC một cú hồi sạch lên $65-68k. Số nóng sẽ củng cố “higher for longer”.
2. **FOMC ngày 17/6**: thị trường gần như không kỳ vọng cắt lãi, nên vấn đề là dot plot và ngôn ngữ về inflation risk.
3. **SpaceX IPO/placement ngày 12/6**: nếu deal được tiêu hóa tốt, đó là tín hiệu retail/risk appetite còn sống; nếu thị trường phải bán winner để hấp thụ deal, crypto có thể tiếp tục thiếu bid.

### Quan điểm của chúng tôi

Tuần 8/6 là một **flow shock được kích hoạt bởi narrative shock**. Strategy bán 32 BTC không làm thị trường sụp về mặt supply, nhưng nó phá vỡ một giả định tâm lý đúng lúc ETF outflows đã nói rằng tổ chức đang rút chân ga. Macro thêm áp lực qua payrolls mạnh, ISM prices nóng và 10Y về 4.55%; AI equities — nơi hút vốn risk-on tháng trước — cũng bắt đầu nứt.

Vì vậy, chiến lược hợp lý không phải là bắt dao chỉ vì BTC đã giảm 14% trong tuần. Theo chúng tôi, cần đợi **ETF flows ổn định**, BTC reclaim **$64.5k-65k**, và CPI không làm yields bùng tiếp. Nếu không có ba yếu tố đó, cú hồi từ $59k lên $63k chỉ là thị trường thở sau khi leverage bị quét.

> **Lucci Research base case:** BTC dao động rộng trong vùng **$60k-65k** cho tới CPI/FOMC; downside về **$57.5k-59k** vẫn mở nếu ETF outflows tiếp tục. Với khung hơn 12 tháng, vùng low 60s bắt đầu đáng tích lũy từng phần, nhưng chưa đủ dữ kiện để gọi đây là đáy chu kỳ.
