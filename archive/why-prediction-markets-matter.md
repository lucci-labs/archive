<Header title="Why prediction markets matter" categories={["Market"]} date="2026-05-29" readTime={5} />

<AlphaBox content="Prediction markets tận dụng khả năng tổng hợp thông tin của thị trường để ước đoán xác suất xảy ra một sự kiện cụ thể. Khi hoạt động tốt, chúng cung cấp các tín hiệu theo thời gian thực, có động lực (skin in the game) và phạm vi áp dụng rộng—từ nội bộ doanh nghiệp tới dự báo khoa học và tin tức công chúng—nhưng vẫn đối mặt với thách thức về thiết kế hợp đồng, tính minh bạch, và rủi ro thao túng hoặc thiếu nguồn thông tin phù hợp." />

<Signals title="Key signals" data={[{ title: "Price-as-probability", value: "Market prices can be read as probability estimates", trend: "up", trendValue: "growing adoption by media & research" },{ title: "Incentives", value: "Participants have skin in the game", trend: "up", trendValue: "improves signal quality when informed traders join" },{ title: "Infrastructure risk", value: "Resolution & validation challenges", trend: "neutral", trendValue: "active research into AI/judges & auditability" }]} />


<Blockquote content="Prediction markets are simply markets. Markets aggregate dispersed information into prices; prediction markets introduce event-specific assets that convert beliefs about future events into probability-like prices." author="Scott Duke Kominers" />



### Tại sao prediction markets quan trọng

Prediction markets — nền tảng cho phép giao dịch dựa trên kết quả sự kiện — đã xuất hiện ở quy mô lớn tại Mỹ vào năm gần đây và đang được sử dụng để theo dõi mọi thứ, từ geopolitics tới người thắng các giải thưởng giải trí. Nhưng prediction markets là gì thực sự?

Với tư cách một economist nghiên cứu market design và incentive mechanisms, câu trả lời ngắn gọn: prediction markets đơn giản là *markets*. **Markets** là công cụ nền tảng để phân bổ tài nguyên — đảm bảo hàng hoá và dịch vụ đến với những người đánh giá chúng cao nhất. Đồng thời, markets còn *tổng hợp thông tin*: quá trình cân bằng cung-cầu tinh luyện mọi thông tin mà người tham gia biết và biểu diễn chúng qua các tín hiệu như **price**.

Prediction market platforms tận dụng trực tiếp khả năng tổng hợp thông tin này để dự báo các sự kiện tương lai cụ thể: họ giới thiệu một asset gắn với sự kiện (một contract trả tiền nếu một kết quả xảy ra), rồi mọi người giao dịch asset đó dựa trên niềm tin của họ về khả năng xảy ra. Các công ty từ lâu đã [embraced prediction markets][1] để khai thác thông tin ngầm từ nhân viên về khả năng một sản phẩm ra mắt đúng hạn. Các nhà khoa học cũng dùng prediction markets để ước lượng thí nghiệm nào [có khả năng nhân rộng cao][2]. Gần đây nhiều [media outlets][3][4] hợp tác với prediction markets để bổ sung “wisdom-of-the-crowd” cho báo cáo truyền thống.

Bằng cách thu thập niềm tin tương lai trực tiếp từ người tham gia và tổng hợp chúng trong marketplace, prediction markets trả lời câu hỏi về xác suất của các kịch bản khác nhau. Người ta có thể “bet” trên các sự kiện tương tự như việc đầu tư trên thị trường chứng khoán; khác ở chỗ asset ở prediction markets chỉ trả khi và chỉ khi một kết quả xác định xảy ra.

Ví dụ, thay vì dựa vào sự biến động của dầu (mà nguyên nhân có thể rất nhiều), prediction markets cho phép cô lập dự đoán cho một khả năng riêng biệt. Một contract “Will the Strait of Hormuz be open at [ngày giờ cụ thể]?” có thể trả 1 USD nếu sự kiện xảy ra. Giá thị trường của contract này có thể được hiểu là một **probability sensor** — ước tính niềm tin tập thể của trader về xác suất sự kiện.

Cách hoạt động: nếu giá cho một đơn vị là $0.50 (tương ứng probability 50%), và bạn tin xác suất thật là 67%, bạn sẽ mua. Nếu đúng, bạn thu $0.67 trên giá $0.50; giao dịch này đẩy giá lên, phản ánh rằng có người đánh giá thị trường đang đánh giá thấp. Ngược lại, khi ai đó thấy thị trường đang quá cao, họ sẽ bán (hoặc short), kéo xác suất ước tính xuống.

Khi prediction markets [hoạt động tốt][5][6], lợi ích so với phương pháp dự báo khác là rõ rệt. Trước hết, việc cung cấp một ước lượng xác suất là một lợi thế lớn: polls thường chỉ cho “opinion share” — để chuyển thành probability cần phân tích thêm và giả định về mẫu. Polls cũng là snapshot; prediction markets cập nhật theo thời gian thực khi có thông tin hoặc người chơi mới.

Quan trọng nữa, prediction markets có incentive: người mua bán có “skin in the game” — rủi ro mất tiền nếu sai. Điều này khuyến khích người tham gia nghĩ kỹ về thông tin họ nắm và tập trung vốn vào những vấn đề họ cho là mình có lợi thế thông tin. Đồng thời, khả năng kiếm lợi từ kiến thức còn khuyến khích người ta tự nghiên cứu thêm. (Trong cuộc bầu cử tổng thống Mỹ 2024, có trường hợp một người tham gia thậm chí tổ chức cuộc thăm dò riêng để tìm thông tin mà pollsters chưa nắm.)

Cuối cùng, prediction markets có lợi thế về bề rộng chủ đề. Nhiều kết quả nhỏ, micro hoặc niche không được phản ánh tốt trên thị trường hàng hoá hay cổ phiếu lớn — nhưng prediction markets có thể được thiết lập và tài trợ để trả lời chính xác các câu hỏi đó. Ví dụ: prediction markets đã xuất hiện để ước lượng mô hình AI nào sẽ hoạt động tốt nhất ở các tác vụ nhất định — quá vi mô để hiện diện trong thị trường truyền thống.

Những khái niệm này không mới: đã có hình thức tương tự từ châu Âu thế kỷ 16 (dự đoán ai sẽ là Pope). Prediction markets đương đại bắt nguồn từ kinh tế học, thống kê, market design và computer science: Charles Plott và Shyam Sunder [giới thiệu khung học thuật đầu tiên][7] vào thập niên 1980; Iowa Electronic Markets là prediction market hiện đại đầu tiên. Nhờ internet, mô hình này phát triển để tổng hợp thông tin phân tán toàn cầu.

### Những thách thức còn phải giải quyết

Tuy vậy, prediction markets vẫn cần vượt qua nhiều vấn đề để hoàn thiện tiềm năng. Có các câu hỏi hạ tầng: làm sao xác nhận và đạt được consensus rằng một sự kiện đã xảy ra (contract resolution)? Làm sao đảm bảo hoạt động minh bạch và auditable? Vấn đề resolution có thể bị tranh chấp hoặc bị thao túng; cần các cơ chế (ví dụ AI judges, or on-chain arbitration) để giải quyết ở quy mô.

Ngoài ra còn có thách thức về market design:

- Người có thông tin phải tham gia. Nếu tất cả người tham gia đều uninformed, price signal vô ích. Ngược lại, nếu chỉ có một nhóm thông tin bị lệch (ví dụ những người không bắt kịp xu hướng), thị trường sẽ cho kết quả biased — tác giả từng [lập luận][8] rằng prediction markets trong quá khứ có thể đã đánh giá thấp Brexit và chiến thắng đầu tiên của Trump vì người tham gia khi đó không đủ gắn kết với sự trỗi dậy của chủ nghĩa dân túy.
- Nếu một insider “biết mọi thứ” tham gia — và đặc biệt nếu họ có khả năng ảnh hưởng đến kết quả — thì đó là vấn đề. Ví dụ, nếu ai đó trong conclave bầu Giáo hoàng giao dịch trong thị trường “next Pope”, họ có thể front-run thông báo công khai, hoặc tệ hơn, cố can thiệp để làm kết quả phù hợp với vị cược của họ. Kết quả là những người khác có động cơ tránh tham gia, khiến thị trường sụp đổ.
- Rủi ro thao túng thông tin: các bên có thể cố gắng làm sai lệch giá để tác động nhận thức công chúng về khả năng xảy ra một kết quả (ví dụ một team truyền thông của ứng viên dùng tiền để đẩy prediction market theo hướng có lợi). Tuy nhiên, prediction markets có cơ chế tự điều chỉnh phần nào: người khác luôn có thể chơi side ngược lại nếu giá vượt xa nền tảng hợp lý.

Tất cả điều này cho thấy cần có sự minh bạch và rõ ràng hơn trong quản trị tham gia, thiết kế hợp đồng và vận hành. Nếu những vấn đề này được giải quyết thành công, prediction markets có thể trở thành công cụ cốt lõi để chúng ta điều hướng tương lai.

> *Bài viết này được biên dịch từ [nguồn gốc](https://a16zcrypto.com/posts/article/why-prediction-markets-matter-prediction-markets-explained/).*
