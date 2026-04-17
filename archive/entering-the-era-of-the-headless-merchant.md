<Header title="Entering the era of the headless merchant" categories={["Market"]} date="2026-04-17" readTime={5} />

<AlphaBox content="Khi AI agents có thể đọc API, thanh toán theo yêu cầu và giao dịch tức thì, một dạng thương mại mới — ‘headless merchant’ — xuất hiện: doanh nghiệp không có storefront hay frontend, chỉ có các endpoint API gọn nhẹ, giá theo yêu cầu và thanh toán nhúng ngay trong HTTP request." />

<Signals title="Key signals from the article" data={[{ title: "Agents active", value: "894 agents", trend: "up", trendValue: "31,000+ transactions in first week" },{ title: "Transactions (first week)", value: "31,000+", trend: "up", trendValue: "$0.003–$35 per request" },{ title: "Services listed", value: "60+ services", trend: "up", trendValue: "machine-readable catalogs" }]} />


# Entering the era of the headless merchant

Tuần trước một [marketplace](https://mpp.dev/services) mở cửa với hơn 60 dịch vụ được thiết kế để tiêu thụ bởi AI agents chứ không phải con người.

Trong số đó:
- Full-text search trên mọi hồ sơ SEC từng nộp, tính phí theo truy vấn
- CAPTCHA solving cho những agent vướng rào kiểm tra dành cho bots
- In và gửi thư vật lý từ một tài liệu và địa chỉ
- Image generation từ [fal.ai](https://fal.ai) trên hơn 600 AI models với chi phí chỉ vài phần trăm cent cho mỗi request

Giao thức làm nền cho marketplace này là **Machine Payments Protocol (MPP)** từ Stripe và Tempo, cho phép agents thanh toán bằng card, stablecoins, hoặc [Lightning](https://www.lightspark.com/news/insights/what-does-the-lightning-network-do) chỉ trong một HTTP request. Trong tuần đầu, 894 agents thực hiện hơn 31.000 giao dịch trên directory với mức giá dao động từ $0.003 đến $35 cho mỗi request.

Không dịch vụ nào trong số này có trang thanh toán (checkout). Catalog của họ là các schema đọc được bằng máy. Giá được nhúng trong HTTP response. Agents đọc schema, gửi request, trả tiền và nhận output trong một lần trao đổi.

Một merchant trước đây là một storefront. Ngay cả khi thương mại chuyển lên online, mô hình vẫn tương tự: hình ảnh sản phẩm, trang thanh toán, email xác nhận. Trong e‑commerce, “headless” thường có nghĩa là tách frontend ra khỏi backend. Trong nền kinh tế agentic mới, headless nghĩa là loại bỏ frontend hoàn toàn.

Đây là headless merchant: một doanh nghiệp không có storefront, không có accounts, không có sales team. Chỉ một server, một tập endpoint, và một mức giá cho mỗi call.

Các payment rails làm điều này khả thi giờ đã hoạt động. [x402](https://x402.org) và [MPP](https://mpp.dev) đi theo cách tiếp cận khác nhau, nhưng cả hai đều nhúng thanh toán trực tiếp vào HTTP request. Công cụ CLI của Visa ([visacli.sh](https://visacli.sh)) mở rộng card rails ra terminal. Những primitives này đang cấp năng lực cho headless merchants.  


## **Tại sao headless merchants khác biệt**

Để dựng một phần mềm truyền thống, bạn cần website, checkout flow, user accounts, customer service, subscription management, hệ thống billing, và đội sales/marketing để thu hút khách. Một headless merchant chỉ cần một API tốt và một lớp middleware mỏng — đó chính là toàn bộ doanh nghiệp.

Điều này quan trọng vì ai là người mua. Một agent đến với một task, một ngân sách và các ràng buộc. Nó đánh giá documentation của endpoint, giá cả và độ tin cậy. Nếu dịch vụ thỏa tiêu chí, nó trả tiền và tiếp tục.

Thanh toán chính là authentication.

Simon Taylor ([@sytaylor](https://x.com/sytaylor)) gọi đây là “intention economy”: agent đến đã có intent, và nhiệm vụ của merchant chỉ là thực hiện intent đó.

Điều này đảo ngược cách bạn nghĩ về xây dựng doanh nghiệp. Buyer là agent sẽ không bao giờ thấy website của bạn. Nó sẽ thấy API docs của bạn, pricing và uptime. Một headless merchant với docs rõ ràng và giá ổn định sẽ gần như luôn thắng một merchant có website đẹp nhưng API tệ.

Thương mại trước đây diễn ra ở nơi chốn: cửa hàng, website, app. Headless merchants biến thương mại thành khoảnh khắc. Ngay khi một agent cần capability mà nó không có, nó giao dịch.

## **Sự dịch chuyển mô hình**

Subscriptions giúp phân bổ chi phí billing. Đăng ký, nhập thẻ, chọn tier, quản lý gia hạn — tất cả overhead đó tồn tại vì việc tính một con người vài phần trăm cent cho một API call đơn lẻ không thực tế. Agents làm được việc đó. Một agent có thể trả từng phần của cent cho mỗi request, hàng nghìn lần một ngày, qua hàng chục dịch vụ, mà không cần tạo account.

Điều này thay đổi những doanh nghiệp nào có thể tồn tại. Dịch vụ tính $0.003 cho mỗi image generation hoặc $0.01 cho một web scrape không cần đội sales. Nó không cần free tier hay lo churn, vì không có subscription để hủy, không có mối quan hệ cần quản lý. Nó chỉ cần đủ tốt để khi agent đánh giá docs và pricing, nó được chọn.

Nếu hôm nay bạn bán dịch vụ qua API key và subscription, có phiên bản của sản phẩm đó tính theo request, không cần account, và có thể được discover bởi bất kỳ agent có wallet nào. Phiên bản đó có thể tiếp cận khách hàng mà sản phẩm theo subscription không thể, bởi vì khách hàng ấy sẽ không từng đăng ký — agent sẽ chuyển sang endpoint khác.

Pay-as-you-go có thể thay thế subscription cho một lớp dịch vụ ngày càng tăng. Không phải vì subscription xấu, mà vì buyer không còn cần chúng nữa.

## **Các merchants mới là trọng tâm**

Đầu tháng này tôi đã lập luận rằng làn sóng thương mại tiếp theo sẽ do merchants chọn stablecoins thay vì “nothing” vì traditional processors không thể underwrite họ. Kể từ đó, hạ tầng tiến nhanh hơn dự đoán. Card networks đang mở rộng rails tới agents. Những protocol mới hỗ trợ card, stablecoins và mô hình settlement như per-session billing. Rails không còn là cổ chai.

Điều quan trọng giờ là các merchants. Một headless merchant có API sạch, output tin cậy và giá theo request là một dạng doanh nghiệp mới, với cấu trúc chi phí không thể tồn tại cách đây 5 năm và một cơ sở buyer chưa tồn tại một năm trước.

Cơ hội lớn nhất trong agentic commerce không phải là xây dựng payment rail kế tiếp. Là xây dựng các headless merchants mà những rails đó được thiết kế để phục vụ. Thế hệ merchant tiếp theo sẽ không có storefront. Họ sẽ có endpoints.  


> *Bài viết này được biên dịch từ [nguồn gốc](https://a16zcrypto.com/posts/article/ai-agent-commerce-headless-merchant/).*