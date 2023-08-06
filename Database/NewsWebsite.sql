USE [WebNews]
GO
/****** Object:  Table [dbo].[Catogories]    Script Date: 8/6/2023 10:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catogories](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catogories_News]    Script Date: 8/6/2023 10:15:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catogories_News](
	[ID_Catogories] [int] NULL,
	[ID_News] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Count_News]    Script Date: 8/6/2023 10:15:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Count_News](
	[Dem] [int] NOT NULL,
	[ID_News] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_News] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 8/6/2023 10:15:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Desc] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[User_author] [varchar](25) NULL,
	[Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/6/2023 10:15:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](25) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DOB] [date] NOT NULL,
	[IsAuthor] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Catogories] ([ID], [Name]) VALUES (1, N'Front-end/Mobile apps')
GO
INSERT [dbo].[Catogories] ([ID], [Name]) VALUES (2, N'Back-end/Deveps')
GO
INSERT [dbo].[Catogories] ([ID], [Name]) VALUES (3, N'UI/UX design')
GO
INSERT [dbo].[Catogories] ([ID], [Name]) VALUES (4, N'Others')
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 1)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 2)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 2)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 3)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 4)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 5)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 6)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (2, 6)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 7)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (2, 7)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 8)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 9)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (2, 9)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (3, 9)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 9)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 10)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (2, 10)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (3, 10)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 10)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (2, 11)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 12)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 13)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (4, 14)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (1, 15)
GO
INSERT [dbo].[Catogories_News] ([ID_Catogories], [ID_News]) VALUES (3, 15)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (9, 1)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (2, 2)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 3)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (5, 4)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (4, 5)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 6)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (1, 7)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 8)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (1, 9)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 10)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 11)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 12)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 13)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 14)
GO
INSERT [dbo].[Count_News] ([Dem], [ID_News]) VALUES (0, 15)
GO
SET IDENTITY_INSERT [dbo].[News] ON 
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (1, N'Tại sao nên thêm rel="noopener" khi sử dụng target="_blank"?', N'Như chúng ta đã biết, sử dụng target="_blank" cho thẻ a thì khi người dùng click vào liên kết trình duyệt sẽ mở trên một tab mới, thường là do liên kết trong thẻ a dẫn tới một website khác và chúng ta không muốn người dùng rời khỏi website của mình.', N'Vấn đề là gì?
Với cách làm trên có 2 vấn đề về bảo mật và hiệu suất:

Tại trang đích có thể sử dụng window.opener để kiểm soát được cửa sổ trang gốc của chúng ta, ví dụ chạy window.opener.location.href = ''https://unitym.tech/'' là có thể chuyển hướng cửa sổ gốc tới https://unitym.tech/. Hãy tưởng tượng bạn bị chuyển tới một URL có nội dung "độc hại" như 18+ (khi ngồi cạnh người yêu), hay các trang giả mạo để đánh cắp tài khoản ngân hàng, thông tin cá nhân, v.v...
Trang đích chạy cùng tiến trình xử lý Javascript với trang gốc, nếu trang đích sử dụng nhiều logic "nặng" hoặc tối ưu chưa tốt về mặt hiệu năng có thể làm ảnh hưởng tới trang web của bạn đang được mở tại cửa sổ gốc.
Khắc phục thế nào?
Để khắc phục vấn đề trên, bạn hãy thêm rel="noopener" vào toàn bộ các thẻ a có target="_blank" nhé. Ví dụ:

<a href="https://unitym.tech/" target="_blank" rel="noopener">UniTech Blog</a>
Bạn cũng có thể sử dụng rel="noreferrer" thay cho rel="noopener" tuy nhiên không được khuyến nghị vì noreferrer sẽ làm cho trang đích không thể biết người dùng tới từ nguồn nào, điều này có thể ảnh hưởng tới kết quả phân tích, thống kê truy cập của trang đích.
Tham khảo: https://web.dev/external-anchors-use-rel-noopener/', N'Image\rel-noopener.png', N'Thinh123', CAST(N'2023-03-08' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (2, N'Làm Game Rắn Săn Mồi Bằng Javascript', N'Chắc hẳn mọi người cũng đã quá quen thuộc với tựa game tuổi thơ rắn săn mồi. Lần này, chúng ta sẽ cùng nhau làm lại nó bằng Javascript và thư viện p5.js. Qua đó, bạn sẽ nắm vững hơn một số khái niệm trong Javascript cũng như biết cách dùng p5.js để làm đồ họa, animation trên web.', N'1. Giới thiệu thư viện p5.js
p5.js là một thư viện Javascript được dựa trên nền tảng Processing. Thư viện này giúp xử lý đồ họa, tương tác trên trang web dễ hơn, p5.js cung cấp đầy đủ các chức năng để vẽ animation lên trang web và một số thư viện để tương tác với các đối tượng trong HTML5 như text, input, video, webcam và âm thanh.

Để bắt đầu với p5.js thì bạn chỉ cần thêm thư viện vào thông qua thẻ <script>, một file html mẫu sẽ như sau:

<html>
<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.0.0/p5.js"></script>
    <script src="game.js"></script>
</head>
<body>
</body>
</html>
Trong p5.js có 2 function mà bạn chắc chắn sẽ sử dụng đó là:

setup(): Đây là function sẽ chạy ngay lập tức khi mở chương trình. Thường thì hay dùng để config cho chương trình.
draw(): Function này sẽ chạy ngay sau function setup() ở trên. Đây là function chính của p5.js và sẽ được lặp đi lặp lại đến khi kết thúc chương trình.
Bạn có thể tìm hiểu sâu hơn về p5.js tại trang chủ.

2. Làm game
2.1 Thiết kế giao diện và Hiển thị rắn

Phần giao diện khá đơn giản, sẽ gồm một lưới các ô vuông. Mỗi ô vuông sẽ hiển thị một phần thân con rắn, hoặc là mồi. Chúng ta tạo ra 4 file:

1. index.html

Đây là file html chứa giao diện của game:

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Snake game</title>
</head>
<body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.0.0/p5.js"></script>
    <script src="config.js" charset="utf-8"></script>
    <script src="snake.js" charset="utf-8"></script>
    <script src="food.js" charset="utf-8"></script>
    <script src="game.js" charset="utf-8"></script>
</body>
</html>
2. config.js

Đây là file chứa các hằng số trong game (đội rộng, cao của màn hình, ...)

const GRID_SIZE = 30;

const WITDH = 600;
const HEIGHT = 600;
3. snake.js

Đây là Class chứa toàn bộ code để điều khiển con rắn.

class Snake {
    constructor() {
        this.head = createVector(0,0);
    }
    show() {
        noStroke();
        // Draw snake head
        fill(255);
        rect(this.head.x, this.head.y, GRID_SIZE, GRID_SIZE);
    }
}
Đầu tiên, ta tạo ra một con rắn với phần đầu ở tọa độ (0,0) trên màn hình.

Class này sẽ có một hàm show(), giúp hiển thị con rắn lên màn hình.

4. game.js

Đây là file chứa code của toàn bộ game.

let snake;

function setup() {
    createCanvas(WITDH, HEIGHT);
    newGame();
}

function draw() {
    background(0);
    drawSnake();
}

function drawSnake() {
   snake.show();
}

function newGame() {
   snake = new Snake();
}
Sau khi chạy code, bạn sẽ được một màn hình kết quả: Bạn sẽ thấy một ô vuông màu trắng được vẽ ở tọa độ (0,0), đó chính là đầu của con rắn, sang đến phần sau chúng ta sẽ xử lý đến phần chuyển động.

2.2 Tạo chuyển động cho rắn

Để xử lý chuyển động, ta sẽ tăng hoặc giảm tọa độ x,y của phần đầu rắn. Vậy ta sẽ có 4 trường hợp như sau:

Đi lên: y += 1.
Đi xuống: y -= 1.
Sang trái: x -= 1.
Sang phải: x += 1.
Nhưng như vậy sẽ phải xử lý 4 trường hợp rất dài dòng. Vậy nên ta sẽ dùng một Vector khác, gọi là Vector vel dùng để xác định phương hướng đang đi.

Đi lên: vel = (0, 1);
Đi xuống: vel = (0, -1);
Sang trái: vel = (-1, 0);
Sang phải: vel = (-1, 0);
Để thay đổi giá trị cho vel mỗi khi người chơi nhấn các phím mũi tên, ta sẽ viết thêm 1 hàm là  keyPressed() trong file game.js

function keyPressed() {
   if (keyCode == UP_ARROW && snake.vel.y != 1) {
      snake.vel.y = -1;
      snake.vel.x = 0;
   } else if (keyCode == DOWN_ARROW && snake.vel.y != -1) {
      snake.vel.y = 1;
      snake.vel.x = 0;
   }  else if (keyCode == LEFT_ARROW && snake.vel.x != 1) {
      snake.vel.y = 0;
      snake.vel.x = -1;
   } else if (keyCode == RIGHT_ARROW && snake.vel.x != -1) {
      snake.vel.y = 0;
      snake.vel.x = 1;
   }
}
Ta cũng sẽ viết thêm một hàm vào class Snake là update() để cập nhật lại vị trí của con rắn

   update() {
      this.head.x += this.vel.x * GRID_SIZE;
      this.head.y += this.vel.y * GRID_SIZE;

      this.head.x = (this.head.x + WITDH) % WITDH;
      this.head.y = (this.head.y + HEIGHT) % HEIGHT;
   }
Hàm drawSnake() cũng sẽ được viết thêm để cập nhật lại vị trí

function drawSnake() {
   // update every SNAKE_SPEED frame
   if(frameCount % SNAKE_SPEED == 0)
 {
      snake.update();
   }
   snake.show();
}
Chạy lại code và dùng các phím mũi tên để điều khiển, ta sẽ được kết quả như sau:


2.3 Hiển thị thức ăn

Đến phần này, ta sẽ hiển thị ra thức ăn để rắn có thể ăn. Tạo thêm một file food.js nữa để xử lý phần này

class Food {
   constructor () {
      this.newFood();
   }
   newFood() {
      this.x = Math.floor(random(width));
      this.y = Math.floor(random(height));

      this.x = Math.floor(this.x / GRID_SIZE) * GRID_SIZE;
      this.y = Math.floor(this.y / GRID_SIZE) * GRID_SIZE;
   }
   show() {
      fill(255, 40, 0);
      rect(this.x, this.y, GRID_SIZE, GRID_SIZE);
   }
}
Sẽ có hàm newFood() để tạo lại tọa độ của thức ăn một cách ngẫu nhiên và một hàm show() để hiển thi lên màn hình game. Sau đó trong hàm drawSnake() chỉ cần gọi thêm 

food.show();
là đã hiển thị được thức ăn.

2.4 Xử lý khi rắn ăn thức ăn

Để biết được khi nào rắn đã ăn mồi, ta chỉ cần kiểm tra xem tọa độ của phần head có trùng với tọa độ của food không là được, đồng thời cũng tạo thêm 1 biến length ở bên snake - đây sẽ là chiều dài của con rắn, mỗi khi ăn mồi sẽ tăng thêm 1. Ta viết thêm vào file game.js như sau:

function drawSnake() {
   // update every SNAKE_SPEED frame
   if(frameCount % SNAKE_SPEED == 0)
 {
      snake.update();
   }

   snake.show();
   food.show();

   // Handle when snake eat food
   if(snake.head.x == food.x && snake.head.y == food.y) {
      eatFood();
   }
}

function eatFood() {
   snake.length++;
   food.newFood();
}
Ta sẽ có kết quả như sau:


Như vậy là ta đã hoàn thành phần ăn thức ăn. Tiếp theo sẽ đến việc xử lý phần thân của con rắn, làm sao để mỗi khi ăn thức ăn thì nó sẽ dài ra.

Chúng ta sẽ thêm đoạn code sau vào hàm update() và show() của con rắn, đoạn code này sẽ update lại vị trí của phần thân rắn, dựa theo biến length.

  update(){
      this.body.push(createVector(this.head.x, this.head.y));

      this.head.x += this.vel.x * GRID_SIZE;
      this.head.y += this.vel.y * GRID_SIZE;

      this.head.x = (this.head.x + WITDH) % WITDH;
      this.head.y = (this.head.y + HEIGHT) % HEIGHT;

      if(this.length < this.body.length)
 {
         this.body.shift();
      }
   }
   show() {
      noStroke();
      // Draw snake head
      fill(255);
      rect(this.head.x, this.head.y, GRID_SIZE, GRID_SIZE);

      // Draw snake body
      fill(155);
      for(let vector of this.body)
 {
         rect(vector.x, vector.y, GRID_SIZE, GRID_SIZE);
      }
   }
Sau khi chạy, ta được kết quả sau:


2.5 Xử lý khi kết thúc game

Trò chơi kết thúc khi con rắn cắn vào thân của nó, tương tự như phần ăn thức ăn, ta chỉ cần kiểm tra xem có phần thần nào trùng tọa độ với head hay không là được. Ta tạo thêm 1 biến isDead tượng trưng cho trạng thái của con rắn và thêm đoạn code sau vào hàm update()

      for(let vector of this.body)
 {
         if(vector.x == this.head.x && vector.y == this.head.y)
 {
            this.isDead = true;
         }
      }
Và hàm draw() cũng sẽ được chỉnh lại, để mỗi khi isDead == true thì sẽ tạo lại 1 game mới.

function draw() {
   background(0);
   if(!snake.isDead) {
      drawSnake();
   } else {
      newGame();
   }
}
Và cuối cùng, đây là thành quả của chúng ta


3. Kết
Vậy là chúng ta đã cùng nhau làm một game rắn săn mồi đơn giản bằng Javascript. Hy vọng sau bài viết thì bạn sẽ cảm thấy hứng thú với Javascript hơn, cũng như với p5.js. Toàn bộ code, các bạn có thể tham khảo ở repo này: snake game', N'Image\snake-game.png', N'Duong123', CAST(N'2023-03-06' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (3, N'Lương lập trình website cao hay thấp? Cơ hội nghề nghiệp ra sao?', NULL, N'1. Lập trình website là gì? Lương lập trình website cao hay thấp?

Hiểu đúng về lập trình website
Lập trình website hay lập trình web chính là công việc của một web developer. Những người này sẽ có nhiệm vụ là: sau khi nhận toàn bộ dữ liệu (giao diện website tĩnh) từ bộ phận thiết kế, họ sẽ chuyển nó thành một hệ thống website hoàn chỉnh, bao gồm cả việc tương tác với CSDL và có thể tương tác với người dùng dựa trên các ngôn ngữ máy tính.

Thông thường, hiện nghề lập trình website sẽ được chia làm 2 vị trí chính: lập trình viên Front-end và lập trình viên Back-end.

Lập trình viên Front-end
Lập trình viên Front-end sẽ là người đảm nhiệm việc phát triển tất cả những thứ mà người dùng có thể nhìn thấy trên website.

Lập trình viên Back-end
Xét về bản chất cơ bản thì lập trình viên Backend là những người đảm nhiệm công việc chủ yếu bên phía máy chủ, cũng như mọi thứ liên quan tới giao tiếp giữa máy chủ và cơ sở dữ liệu lẫn trình duyệt. Mọi thứ không dễ dàng có thể nhìn thấy được bằng mắt thường chính là công việc mà một lập trình viên Backend cần hoàn thành.

Vì vậy, với công việc này, ngoài việc cần biết các loại ngôn ngữ lập trình, bạn còn cần bổ sung các kiến thức liên quan việc thiết kế như CSS, HTML…Một câu hỏi mà các bạn sinh viên thường đặt ra đó là công việc lập trình web có thực sự dễ xin việc và kiếm tiền hay không?. Câu trả lời là “có” và nghề lập trình web được xem là nghề “hot” hiện nay.

Các ngôn ngữ lập trình web hiện nay

Với lập trình front-end, người ta có thể sử dụng HTML (ngôn ngữ đánh dấu siêu văn bản), CSS và JavaScript để phát triển. Khác với Front-end, để lập trình back-end thì cần có các ngôn ngữ lập trình như PHP, Java, hay Ruby, Python,....

Ranh lương lập trình website như thế nào?
Trong một xã hội phát triển, chắc chắn không thiếu việc làm cho lập trình viên, tuy nhiên, mức thu nhập của các lập trình viên tùy thuộc vào loại ngôn ngữ mà họ chọn, kĩ năng của bản thân cũng như điều kiện làm việc. Nhưng cho dù ở bất cứ đâu đi chăng nữa, thì mức thu nhập của người lập trình web luôn hấp dẫn và vượt xa những ngành nghề khác. Đây là một trong những ngành nghề được đánh giá là có rank lương cao và vô cùng tiềm năng.

2. Cơ hội nghề nghiệp của lập trình viên website

Nhu cầu thực tế của thị trường
Dựa trên khảo sát thực tế và quan sát nhu cầu trên thị trường, chúng ta đều có thể thấy rằng gần như tất cả các doanh nghiệp đều cần có cho mình một website. Website không chỉ có tác dụng làm tăng độ nhận diện của thương hiệu, tăng uy tín cho doanh nghiệp mà còn là một kênh bán hàng trực tiếp cho các công ty hay các cá nhân.

Chình vì nhu cầu xây dựng website tăng cao nên số lượng lập trình viên website cũng sẽ tăng lên theo. Các công việc dành cho lập trình viên website hiện rất nhiều và lương lập trình website cũng rất cao.

Theo đánh giá của một số khảo sát trên các kênh tuyển dụng, lập trình viên website đang là một trong những vị trí “khát” nhân sự vì số lượng công việc nhiều.

Tiềm năng của nghề lập trình website
Như vậy, có thể đánh giá lập trình viên website là một nghề rất tiềm năng trong thời gian tới. Công việc này cũng là một trong những ngành đòi hỏi có năng lực tốt, vì thế lương lập trình website cũng rất xứng đáng với công sức và những gì chúng ta bỏ ra.

Tuy nhiên, nhiều người cho rằng vì đang là nghề hot nên có rất nhiều bạn quyết định theo lập trình website, dẫn đến cung nhiều hơn cầu, tăng tỉ lệ chọi trong nghề và dễ thất nghiệp. Thế nhưng thực tế lại không phải vậy, vì nghề này vẫn khát nhân sự, nhưng là khát nhân sự giỏi. Chỉ cần bạn có năng lực tốt thì sẽ không bao giờ lo thất nghiệp, tỉ lệ cạnh tranh cũng sẽ giảm nếu bạn là một đối thủ đáng gờm, phải không?

3. Tạm kết
Mong rằng bài viết này sẽ giúp các bạn có cái nhìn tổng quan hơn về nghề lập trình website và hiểu hơn về lương lập trình website cũng như tiềm năng của nó. Chúc các bạn học tốt.', N'Image\Luong_lap_trinh_vien.jpg', N'Linh123', CAST(N'2023-12-03' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (4, N'Nữ giới có nên lựa chọn theo nghề IT không?', NULL, N'Những lợi thế của nữ giới khi theo nghề IT
Có nhiều sự ưu ái
Số lượng nữ lập trình viên thường rất ít, ít hơn số lượng lập trình viên là nam giới rất nhiều. Chính vì đặc thù này của ngành mà một lập trình viên là nữ giới sẽ có thể được nhận nhiều sự giúp đỡ và ưu ái của người trong ngành. Giống như trong một lớp học, nếu như lớp học ấy ít bạn nữ thì các bạn đó sẽ nhận được sự ưu ái nhiều hơn từ các bạn nam khác trong lớp.


Ngoài ra, hiện nay, đa phần các doanh nghiệp đều hướng đến sự cân bằng giới tính. Do đó, khi ứng tuyển, bạn cũng sẽ có cơ hội có lợi thế hơn cho vị trí.

Phụ nữ luôn bền bỉ, linh hoạt
Từ trước tới nay, nữ giới luôn có sự kiên nhẫn và linh hoạt hơn, trong khi đa phần nam giới thường thiếu kiên nhẫn, bảo thủ và hơi cứng nhắc. Khi có thế mạnh này thì các công việc được nữ giới xử lý sẽ uyển chuyển, linh động và đa dạng hơn.

Khả năng sử dụng ngôn ngữ và kỹ năng giao tiếp
Theo nhiều nghiên cứu, đa phần nữ giới thiên về trí thông minh ngôn ngữ, vì vậy họ cũng có khả năng sử dụng ngôn ngữ tốt hơn nam giới. Cùng một công việc, đàn ông có thể gây ra khủng hoảng, tranh cãi hoặc thậm chí xung đột bạo lực nhưng phụ nữ luôn biết cách mềm mảng, nhẹ nhàng để đạt được kết quả tốt nhất.


Ngoài ra, vì có lợi thế trên nên phái nữ cũng có thiên hướng học ngoại ngữ tốt hơn nam giới. Trong ngành IT có các vị trí BrSE, IT Comtor chính là người phụ trách giao tiếp giữa các nhà phát triển và người quản lý nước ngoài (Nhật Bản) phù hợp với nữ giới.

Cẩn thận, tỉ mỉ
Trên thực tế, đa số nữ giới theo học nghề IT đều không lựa chọn làm ở các vị trí lập trình mà thường lựa chọn làm các công việc như QA/QC (tester) - những vị trí luôn đòi hỏi sự cẩn trọng và tỉ mỉ tuyệt đối, rất phù hợp với nữ giới.

Khó khăn khi nữ giới theo nghề IT
Thiếu đi yếu tố "tốt"
Cha đẻ ngôn ngữ lập trình Perl - Larry Arnold Wall - từng cho rằng một lập trình viên nên có ba đức tính tốt sau: Tìm việc nhẹ; nhanh vội; cao ngạo.

Mới nghe qua có lẽ ai cũng ngạc nhiên, bởi 3 yếu tố này tưởng chừng như là không tốt, nhưng thực tế nó lại là chìa khóa giúp các lập trình viên có thể tăng sự sáng tạo, tối ưu tốc độ và có thể giải tỏa được căng thẳng khi làm việc.

Tuy nhiên những yếu tố này lại rất ít xuất hiện ở nữ giới, bởi phái nữ luôn nghiêm túc, siêng năng, kiên nhẫn và chấp nhận để tìm cách xử lý vấn đề.

Nhạy cảm với các thông số
Nếu như nữ giới có điểm mạnh về ngôn ngữ và giao tiếp thì nam giới lại nhạy cảm hơn về các con số và tư duy logic - 2 yếu tố rất quan trọng trong ngành IT. Vì vậy, nam giới thường xử lý vấn đề nhanh và chính xác hơn.


Tuy nhiên, không phải tất cả phái nữ đều như vậy, ngoài ra, khả năng tư duy logic và tư duy số liệu còn có thể được rèn luyện hàng ngày nếu thực sự quyết tâm.

Định kiến xã hội
Từ trước đến nay, con người phải sống và hành động dưới áp lực của rất nhiều định kiến xã hội, đặc biệt là với phái nữ. Nhiều người cho rằng nữ giới không nên học lập trình, bởi đây là một nghề vất vả, cần nhiều thời gian, công sức mà phụ nữ thì lại cần dành thời gian cho gia đình, cho việc sinh nở,...

Không chỉ riêng nghề IT, phụ nữ còn phải chịu đựng những đánh giá vô cùng sai lầm về các nghề khác như quân nhân, cảnh sát, vận động viên,.... Việc bị quy chụp rằng không thông minh bằng nam giới hay không giỏi bằng khiến họ ngày càng cảm thấy tự ti hơn. Điều này đã làm cho biết bao nhiêu ước mơ còn dang dở của những nữ lập trình viên tương lai bị vùi lấp.

Vậy nữ giới có nên theo nghề IT không?
Câu trả lời là có, hoàn toàn có thể! Ai cũng có ước mơ của mình, ai cũng có thế mạnh riêng của mình, vì thế đừng vi lo ngại những quy chuẩn, những phán xét của xã hội để rồi phải từ bỏ niềm đam mê của bản thân.

Đừng lo đến bất kì rào cản nào, bởi chỉ cần bạn thực sự yêu thích công việc này thôi, còn các yếu tố khác đều có thể thay đổi thông qua việc trau dồi, rèn luyện hàng ngày.

Lời kết
Mong rằng qua bài viết này, chúng ta đã có được cái nhìn bao quát hơn về việc nữ giới có thể chọn nghề IT hay không. Hy vọng các bạn luôn giữ lửa cho chính mình và vượt qua được mọi thử thách để yêu nghề, sống với nghề nhé!', N'Image\are-software-engineers-happy.png', N'Linh123', CAST(N'2023-12-03' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (5, N'Khám phá IT là gì? Những vị trí đang phổ biến trong ngành IT', NULL, N'1. Khám phá: IT là gì, đặc điểm của nghề ra sao?
IT là gì?
IT là một từ được viết tắt của Information Technology, dịch ra tiếng Việt có nghĩa là công nghệ thông tin. Đây là một chuyên ngành được ra đời để chỉ việc ứng dụng phần mềm, mạng Internet, hệ thống máy tính vào việc xử lý dữ liệu, trao đổi và lưu trữ thông tin dưới nhiều dạng khác nhau. IT (công nghệ thông tin) được cho là nền tảng của sự trao đổi thông tin bằng công nghệ với định hướng là cải tiến, bền vững và tái tạo. Hiện nay, các cơ sở đào tạo có tổng cộng khoảng 5 nhóm chuyên ngành được cho là nổi bật nhất trong ngành IT: Khoa học máy tính Kỹ thuật máy tính Hệ thống thông tin Mạng máy tính truyền thông Kỹ thuật phần mềm

Các kỹ năng cần có để trở thành một lập trình viên

Nhiều người từng nói, người trong ngành IT thường là những người hướng nội, bởi họ cần nhiều thời gian để phân tích, suy luận và tư duy, thế nhưng thực tế thì cả người hướng nội và hướng ngoại đều có thể theo đuổi ngành IT bởi có rất nhiều vị trí khác nhau phù hợp với từng tính cách và thế mạnh của từng cá nhân. Tuy nhiên, tựu chung lại thì người trong ngành IT cần có những tố chất dưới đây:

Yêu thích công nghệ: Nếu bạn đam mê công nghệ mới và có mong muốn sẽ đóng góp được điều gì đó để thay đổi thế giới bằng những sản phẩm công nghệ do mình làm ra thì IT có lẽ sẽ rất phù hợp.

Sở hữu khả năng tư duy logic: Như đã nói ở trên, người trong ngành IT cần có tư duy logic tốt để đưa ra các ý tưởng, giải pháp xử lý cho các vấn đề trong công việc. Ngành này cũng đòi hỏi những người theo đuổi nó có khả năng phân tích, suy luận tốt.

Khả năng sử dụng ngoại ngữ: Mặc dù người trong ngành IT không cần giao tiếp bằng tiếng Anh nhiều nhưng các kiến thức chuyên ngành và tài liệu, cộng đồng liên quan đều chủ yếu bằng tiếng Anh và ngôn ngữ mà họ dùng để giao tiếp với máy tính cũng sẽ sử dụng tiếng Anh, thế nên để đi xa trong ngành thì cần trau dồi thêm khả năng đọc, dịch, viết tiếng Anh.

Khả năng giải quyết vấn đề: Ngành IT mặc dù có rất nhiều vị trí công việc để bạn lựa chọn nhưng để đi xa và thành công khi theo đuổi ngành này, bạn phải là người nhận diện vấn đề tốt và có khả năng giải quyết vấn đề nhanh chóng.

2. Những vị trí phổ biến trong ngành IT là gì?

Ngành IT là một trong các ngành rộng nhất và sở hữu rất nhiều vị trí công việc, tùy thuộc vào từng mô hình và độ lớn của doanh nghiệp. Ở Việt Nam, các doanh nghiệp đang chủ yếu có các vị trí sau (ngoài ra còn rất nhiều vị trí khác tùy thuộc vào từng công ty, các vị trí dưới đây chỉ mang tính chất tham khảo):

IT helpdesk/support
IT helpdesk là một bộ phận thuộc phòng IT, sẽ tiếp nhận và chịu trách nhiệm trả lời các thắc mắc, câu hỏi kỹ thuật của người dùng.

Coder
Coder là người chịu trách nhiệm viết code dựa trên những mô tả có sẵn nhằm đảm bảo cho các ứng dụng chạy đúng. Công việc của Coder chỉ tập trung vào một quá trình cụ thể (viết code) chứ không tham gia vào toàn bộ quy trình phát triển phần mềm/ứng dụng.

IT Programmer
IT Programmer là người có am hiểu về thuật toán và có chuyên môn cao hơn Coder. Họ là người đảm nhiệm việc tạo ra các phần mềm từ các ngôn ngữ lập trình khác nhau và có khả năng viết hướng dẫn (documentation) cho nhiều loại hệ thống.

IT Developer
Công việc của IT Developer tương đối giống với IT Programmer, tuy nhiên, họ tham gia vào quy trình phát triển và hoàn thiện sản phẩm một cách toàn diện hơn: từ phân tích, xây dựng giải pháp và tiến hành thiết kế, viết code, kiểm thử.

Tester/ QA QC
Tester/QA QC sẽ có công việc là kiểm tra phần mềm, tìm kiếm các lỗi, thiếu sót của sản phẩm trong quá trình thực thi hệ thống.

Software Architect
Tester/QA QC là công việc kiểm tra phần mềm, tìm kiếm các lỗi, thiếu sót của sản phẩm trong quá trình thực thi hệ thống.

DevOps Engineer
DevOps Engineer là người đảm bảo tính hiệu quả cho công tác phát triển sản phẩm và vận hành hệ thống thông qua việc giao tiếp, kết nối giữa các team liên quan.

Project Manager

Project Manager đóng vai trò cầu nối giữa khách hàng và development team.

Công việc chính là tìm hiểu nhu cầu khách hàng, sau đó truyền đạt lại với team nhà và thiết lập quy trình làm việc, giám sát tối ưu nhất để đảm bảo chất lượng phần mềm cũng như hoàn thành dự án đúng tiến độ.

3. Kết luận
Như vậy bài viết đã chia sẻ về khái niệm IT là gì cùng những ngành nghề đang phổ biến trong ngành, mong rằng sẽ có ích với các bạn ^^', N'Image\How-to-Become-a-Software-Engineer.jpg', N'Thinh123', CAST(N'2023-12-03' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (6, N'ES6 Series #2: Bạn Đã Hiểu Rõ Về Arrow Function?', N'ES6 đã giới thiệu với chúng ta Arrow Function - một cách khai báo function mới giúp tiết kiệm thời gian, dễ hiểu và đơn giản hóa phạm vi function hơn. Hãy cùng mình tìm hiểu rõ hơn nhé.', N'Một số cách khai báo Arrow Function:
Nếu trong ES5, chúng ta sẽ khai báo function như sau: 

const greeting = function(name) {
    return "hello " + name;
}
Thì với ES6, bạn chỉ cần dùng mũi tên => là đã có thể khai báo một function, cụ thể như sau:

const greeting = (name) => {
    return `hello ${name}`;
}
Nếu chỉ có 1 parameter (tham số) thì ta còn có thể bỏ dấu ngoặc tròn đi 

const greeting = name => {
    return `hello ${name}`;
}
Tuy nhiên, nếu như chúng ta không có tham số nào thì bắt buộc phải có dấu ngoặc

const greeting = () => {
    return "hello";
}
Implicitly return
Trong arrow function, ta có thể bỏ qua từ khóa return mà return ngầm theo cú pháp sau:

const greeting = name => `hello ${name}`;
Bạn thấy đó, cú pháp mới này đã giúp code ngắn gọn hơn. Tuy nhiên bạn phải chú ý, đoạn code này cũng sẽ khó hiểu hơn. Nếu trong team có một người chưa nắm được về ES6 thì bạn hãy tránh sử dụng cú pháp implicity return này.

Ta cũng có thể implicity return cùng với  object literal như sau:

const race = "100m dash";
const runners = [ "Usain Bolt", "Justin Gatlin", "Asafa Powell" ];

const results = runners.map((runner, i) =>  ({ name: runner, race, place: i + 1}));

console.log(results);
// [{name: "Usain Bolt", race: "100m dash", place: 1}
// {name: "Justin Gatlin", race: "100m dash", place: 2}
// {name: "Asafa Powell", race: "100m dash", place: 3}]
Để Javascript hiểu dược chúng ta sẽ trả về (implicity return) là một  object literal thì ta cần đặt trong một cặp ngoặc nhọn.

Arrow Function là một Anonymous Funcion
Anonymous function (hàm ẩn danh), là một hàm được sinh ra đúng vào thời điểm chạy của chương trình. Thông thường khi bạn khai báo một hàm thì trình biên dịch sẽ lưu lại trong bộ nhớ nên bạn có thể gọi ở trên hay dưới vị trí khai báo hàm đều được, nhưng với anonymous function thì nó sẽ được sinh ra khi trình biên dịch xử lý tới vị trí của nó.

Callback cũng là 1 ví dụ điển hình cho anonymous function, bạn hoàn toàn có thể khai báo arrow function thành 1 callback như sau:

setTimeout(() => { 
   console.log("Hello");
}, 3000);
Nếu muốn gán arrow function với một cái tên, hãy gán hàm đó vào một biến.

const greeting = name => `hello ${name}`;
greeting("UniTech Blog");

// UniTech Blog
''This'' trong Arrow Funtion
Đây là là điều bạn cần chú ý nhất khi sử dụng arrow function bởi vì nó rất khác so với các function thường. Trong arrow function, từ khóa this sẽ được thừa hưởng từ scope cha của nó, ví dụ như sau:

<div class="box open">
	This is a box
</div>
const box = document.querySelector(".box");

box.addEventListener("click", function() {
    this.classList.toggle("opening");
    setTimeout(function(){
        this.classList.toggle("opening");
    },500);
});
Nếu bạn chạy đoạn code trên thì sẽ gặp lỗi sau:

Uncaught TypeError: cannot read property "toggle" of undefined
Tại sao lại vậy?? Ta có thể thấy, this ở trong callback của Event Click sẽ được gán thành biến box, tuy nhiên this ở setTimeout thì sẽ là Window ==> classList sẽ là undefined.

Do arrow function không có this riêng biệt như các function khác, vậy nên nó sẽ thừa hưởng this ở scope cha. Dựa vào tính chất này, để sửa lại đoạn code trên thành như sau:

const box = document.querySelector(".box");

box.addEventListener("click", function() {
    this.classList.toggle("opening");
    setTimeout(() => {
        this.classList.toggle("opening");
    },500);
});
Lúc này, this của hàm setTimeout sẽ được thừa hưởng từ scope cha (event click) và sẽ được gán với box. Lúc này đoạn code của chúng ta sẽ hoạt động đúng.

Tạm kết
Vậy là mình đã chia sẻ với các bạn những điểm thú vị của arrow function mà có thể bạn chưa biết đến. Hy vọng bài viết đã giúp bạn hiểu hơn về arrow function cũng như cách tận dụng nó.', N'Image\thumb.jpg', N'Duong123', CAST(N'2023-03-03' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (7, N'ES6 Series #1: Các Kiểu Khai Báo Biến Var, Let và Const', N'Một trong những tính năng nổi bật của ES6 đó là sự bổ sung let và const phục vụ cho việc khai báo biến dữ liệu.

Vậy tại sao lại cần tới let và const dù trước đó đã có var để khai báo biến, thì ở bài viết này chúng ta sẽ cùng tìm hiểu lý do của từng kiểu khai báo biến.', N'1. Function Scope vs Block Scope:
Function Scope

Các biến Function Scope sẽ có tác dụng trong phạm vi của một function mà nó được khai báo bên trong. Ngoài ra, nếu bạn khai báo không nằm trong một hàm nào thì sẽ trở thành biến toàn cục (global variable).

function hello() {
   console.log(''hello'')
}
Block Scope

Các biến Block Scope sẽ có tác dụng trong phạm vi của một block mà nó được khai báo bên trong và các block con trong đó. Một block là đoạn code bên trong cặp dấu ngoặc nhọn:

if(true) {
   console.log(''Hello'');
}
2. Var
Tất cả các biến được khai báo với var đều là function scope. Điều này đồng nghĩa, nếu ta khai báo trong một block scope thì biến đó vẫn có thể truy cập được ở bên ngoài.

Ví dụ:

if(true) {
    var name = ''UniTech Blog'';
}
console.log(name);
Kết quả:

UniTech Blog
Ta thấy biến name được khai báo bên trong một block của hàm if, nhưng vì ta dùng var nên name là một biến function scope (ở đây là biến toàn cục) ==> Ta có thể truy cập nó từ bên ngoài.

3. Let
Tất cả các biến được khai báo với let đều là block scope, ta chỉ có thể truy cập vào biến khi ở cùng 1 block hoặc là các block con.

Ví dụ:

let name = ''UniTech Blog'';
if(true) {
    let name = ''UniTym'';
    console.log(name);
}
console.log(name);
Kết quả:

UniTym
UniTech Blog
Có thể thấy, đoạn code trên sẽ tạo ra 2 biến name ở 2 block scope khác nhau:

name = ''UniTech Blog'' sẽ có scope là Global.
name = ''UniTym'' sẽ có scope là block của lệnh if.
Và 2 hàm log cũng nằm trong 2 scope khác nhau ==> Kết quả in ra sẽ khác nhau (tùy thuộc vào scope của nó).

4. Const
Từ khóa này tương tự với let, chỉ khác là giá trị của biến sẽ không thể thay đổi. Ta không thể gán một giá trị mới cho biến được khai báo bằng const.

Ví dụ:

const name = ''UniTech Blog'';
name = ''UniTym'';
Khi chạy, đoạn code trên sẽ trả về một lỗi như sau:

Uncaught TypeError: Assignment to constant variable.
Tuy nhiên, nếu biến được khai báo bằng const là một object thì ta vẫn có thể thay đổi các thuộc tính trong object đó. Do đây không phải là gán một giá trị mới cho biến, mà chỉ là thay đổi bên trong biến.

Ví dụ:

const person = {
   name: ''Dinh Anh Nguyen'',
   age: 19,
};
console.log(person.name);

person.name = ''D.A.N_3002'';
console.log(person.name);
Kết quả:

Dinh Anh Nguyen
D.A.N_3002
Tổng kết:
Vậy khi nào thì bạn nên dùng var, let hoặc const. Điều này thì tùy vào mục đích của bạn, tuy nhiên mình có một số lời khuyên như sau:

Không nên sử dụng var vì từ khóa này rất khó xác định scope cụ thể của biến.
Sử dụng let khi biến đó cần phải thay đổi giá trị.
Sử dụng const khi biến đó không cần thay đổi giá trị (Config DB, nhập liệu từ người dùng,... ).
Cảm ơn mọi người đã đọc hết bài viết của mình, hy vọng rằng bài viết đã giúp bạn có cái nhìn tổng quát hơn về việc khai báo biến cũng như là phạm vi của biến trong ES6. Mong mọi người sẽ ủng hộ series tìm hiểu về các phiên bản ES này của mình, cũng như là góp ý để bài viết được tốt hơn.', N'Image\VarLetConstJS.jpg', N'Linh123', CAST(N'2023-03-01' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (8, N'Tại sao mình chọn TailwindCSS cho các dự án frontend cá nhân?', N'Lời mở đầu
Khi nói đến thiết kế UI, đôi khi bạn sẽ bị ngợp trước số lượng đông đảo các CSS Framework đang được sử dụng như Bootstrap, ChakraUI, Tailwind CSS. Những người mới có thể sẽ phải “đau đầu” để tìm ra công cụ thực sự phù hợp với bản thân, dựa vào các yếu tố như thời gian học, độ phức tạp, sự hỗ trợ của cộng đồng,...

Trong bài viết này, mình sẽ nói về TailwindCSS - một CSS framework với sự dễ sử dụng và đa năng đang chiếm rất nhiều cảm tình của dev, trong đó có mình :D. Hơn nữa, như tiêu đề, mình sẽ giải thích lý do tại sao Tailwind là sự lựa chọn hàng đầu cho các project mình tự làm nhé. Ok, let’s go!

', N'1. Tailwind CSS là gì?
Theo nguyên gốc tiếng anh trên trang chủ

Tailwind A utility-first CSS framework packed with classes like flex, pt-4, text-center and rotate-90 that can be composed to build any design, directly in your markup.
Về cơ bản, Tailwind sử dụng các tên class được nhúng sẵn CSS để styling trang web. Tuy nhiên, nó không có “built-in class” được tích hợp sẵn như Bootstrap (nếu bạn đã tìm hiểu). Thay vào đó, chúng ta sẽ là những kiến trúc sư chính trong việc thiết kế giao diện cho sản phẩm của mình.

2. Những lý do khiến mình “ngã vào” Tailwind
2.1 Không cần đặt tên class
Chắc chắn trong quá trình học CSS bạn đã từng đau đầu nghĩ tên class cho một chiếc button cảnh báo hay một chiếc card. Với Tailwind, bạn chỉ cần sử dụng các utility-class có sẵn, trong khuôn khổ Design System được thiết kế rành mạch bởi đội ngũ phát triển của Tailwind. Dễ thở chưa nào? Đây chính là điểm mình thích nhất ở framework này, nó giúp mình tiết kiệm rất nhiều thời gian để làm những việc có ích hơn :3

Thay vì làm như sau với CSS thuần:

<button class="btn btn-danger">Delete</button>
.btn-danger {
  padding: 8px 16px;
  background-color: #ef4444;
  color: white;
  border-radius: 8px;

  &:hover {
    background-color: #b91c1c;
  }
}
Bạn chỉ cần một vài utility-class như sau:

<button class="px-4 py-2 bg-red-500 text-white rounded-lg hover:bg-red-700">
  Delete
</button>
2.2 Khả năng tùy biến cao
Với một con người yêu thích sự tự do trong thiết kế như mình thì đặc điểm này của Tailwind thực sự là một điểm cộng lớn. Mặc dù đã có một hệ thống utility-class hoàn chỉnh, Tailwind vẫn cho phép mình tùy biến các font chữ, khoảng cách, màu sắc, kích thước, v.v... qua file tailwind.config.js. Yêu thích font chữ Inter và một hệ màu theo ý của bạn? Cùng chỉnh sửa nào:

module.exports = {
  theme: {
    fontFamily: {
      sans: ["Inter", "sans-serif"],
    },
    extend: {
      colors: {
        primary: "#1F2937",
        secondary: "#10B981",
        danger: "#EF4444",
      },
    },
  },
};
2.3 Responsiveness
Gần như ở thời điểm hiện tại, chúng ta không bao giờ xây dựng một giao diện chỉ dành riêng cho màn hình desktop nữa, với sự phát triển vượt trội của các thiết bị mobile, hay xu hướng thiết kế mobile-first. Thật may mắn, Tailwind đã nắm bắt được điều này. Chỉ với những tiền tố như md:, lg: hay xl: đặt trước các utility-class bạn đã có thể dễ dàng tạo ra nhiều giao diện responsive cùng một lúc cho sản phẩm của mình. Cùng lấy ví dụ nhé:

<div class="md:flex md:justify-between">
  <div class="md:w-1/2">
    <h1 class="text-2xl font-bold">Hello</h1>
    <p class="text-gray-500">
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quae.
    </p>
  </div>
  <div class="md:w-1/2">
    <img src="https://picsum.photos/400/300" alt="image" />
  </div>
</div>
Giải thích code: Khi màn hình lớn hơn 768px, thuộc tính display: flex và justify-content: space-between cho div cha sẽ được áp dụng, còn khi màn hình nhỏ hơn 768px, các thuộc tính này sẽ bị bỏ qua. Cùng với đó, mỗi div con sẽ có chiều rộng là 50% của div cha.

2.4 Giúp mình học tốt hơn
Có thể bạn không tin, nhưng chính Tailwind CSS đã giúp mình có những khoảnh khắc "Wow" khi hiểu hơn được một số thuộc tính trong CSS được sử dụng như thế nào.

Ví dụ với class flex-1 của Tailwind, mình đã hiểu được thuộc tính tương đương flex: 1 1 0% của CSS. Nó có nghĩa là cho phép một flex item có thể co giãn theo nhu cầu, bất kể độ rộng ban đầu của nó. Hay như việc mình chưa từng nghe đến thuộc tính scroll-margin của CSS cho đến khi sử dụng nó trong Tailwind để kiểm soát khoảng cách giữa các items đang được focus và đường biên của trang web.

3. Lưu ý về việc sử dụng Tailwind
Tuy thuận tiện là thế, nhưng Tailwind về cơ bản là một framework CSS. Nói một cách ví von, không ai học chạy trước khi học đi cả. Vậy nên, bạn cần nắm rõ những điều cơ bản về plain CSS trước khi sử dụng Tailwind để có thể sử dụng nó một cách hiệu quả nhất, tránh phụ thuộc vào những công cụ framework. Các bạn newbie ghi nhớ điều đó nhé!

Lời kết
Hi vọng những gì mình chia sẻ đã kích thích sự tò mò và mong muốn đào sâu Tailwind CSS của các bạn. Tin mình đi, việc sử dụng nó một cách thành thạo sẽ khiến hành trình dev frontend của các bạn trơn tru hơn rất nhiều đấy 😄

Nếu có bất kỳ câu hỏi nào, các bạn có thể liên hệ mình qua facebook Phạm Quang Hưng nhé. Cảm ơn các bạn đã đọc bài viết của mình!', N'Image\tailwindcss.png', N'Linh123', CAST(N'2023-02-22' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (9, N'Một số VSCode extension hay ho mà bạn không nên bỏ lỡ (Phần 2)', N'Ở phần trước các bạn đã cùng chúng mình tìm hiểu một số extension hữu ích rồi đúng không nào. Vẫn là chủ đề ấy, chúng ta hãy tiếp tục khám phá các extension hay ho khác nữa nhé.
⁠Bạn có thể xem lại phần 1 tại đây: Một số VSCode extension hay ho mà bạn không nên bỏ lỡ', N'1. Prettier – Code formatter
Link: Prettier - Code formatter - Visual Studio Marketplace

Prettier – Code formatter đóng vai trò là một tiện ích giúp bạn định dạng lại code một cách tự động, hỗ trợ bạn duy trì sự nhất quán trong toàn bộ code của nhóm.


2. ESLint
Link: ESLint - Visual Studio Marketplace

ESLint là công cụ giúp chúng ta phân tích code, đặc biệt là Javascript, từ đó đưa ra các vấn đề mà code đang gặp phải như không tuân thủ coding style, sai coding convention. Ngoài ra, ESlint còn có thể giúp chúng ta tìm ra một số bug tiềm ẩn trong code như gán biến chưa khai báo, có thể gây lỗi runtime hoặc lấy giá trị từ một biến toàn cục khiến cho việc debug trở nên khó khăn, v.v...


3. GitLens – Git supercharged
Link: GitLens — Git supercharged - Visual Studio Marketplace

GitLens là tiện ích mở rộng được dùng kết hợp với VSCode, bao gồm nhiều tính năng như commit, add, commit search, history, Gitlens explorer. Nó giúp cá nhân dễ dàng hơn rất nhiều trong việc teamwork khi mọi người cùng làm việc trên cùng một Repo.


4. JavaScript (ES6) code snippets
Link: JavaScript (ES6) code snippets - Visual Studio Marketplace

Extension này giúp chúng ta viết những đoạn code Javascript và Typescript quen thuộc nhanh hơn, cải thiện tốc độ code. Ví dụ bạn chỉ cần gõ clg, ngay lập tức lệnh console.log() quen thuộc sẽ xuất hiện thay vì phải gõ tay như trước.


5. Mintlify Doc Writer
Link: Mintlify Doc Writer for Python, JavaScript, TypeScript, C++, PHP, Java, C#, Ruby & more - Visual Studio Marketplace

Bạn chán ngấy với việc phải ngồi viết Document cho những hàm của mình? Đừng lo, Mintlify Doc Writer sẽ giúp bạn tiết kiệm rất nhiều thời gian cho việc viết doc, bạn chỉ cần bôi đen đoạn code/hàm cần viết doc sau đó nhấn Generate Docs và xem điều kỳ diệu xảy ra thôi.


6. Tabnine AI Autocomplete
Link: Tabnine AI Autocomplete for Javascript, Python, Typescript, PHP, Go, Java, Ruby & more - Visual Studio Marketplace

Tabnine là trợ lý AI khiến việc lập trình dễ dàng hơn bao giờ hết. Tabnine giúp tăng tốc độ lập trình của bạn bằng việc tự gợi ý code trong tất cả các ngôn ngữ lập trình và IDE phổ biến nhất.


7. vscode-pets
Link: vscode-pets - Visual Studio Marketplace

Bạn cảm thấy căng thẳng mệt mỏi sau hàng giờ đồng hồ ngồi code, bạn hoa mắt chóng mặt với những đoạn mã trên màn hình? Đừng lo, những em pet cực kỳ dễ thương sẽ giúp bạn giải toả căng thẳng mệt mỏi ngay lập tức, bạn chỉ cần cài đặt extension này thôi.


Nếu bạn có những thắc mắc hay góp ý, đừng ngần ngại chia sẻ dưới phần bình luận hoặc nhắn tin trực tiếp với chúng mình trên fanpage nhé! 💖', N'Image\thumb.png', N'Duong123', CAST(N'2023-02-21' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (10, N'Một số VSCode extension hay ho mà bạn không nên bỏ lỡ', N'Visual Studio Code là một trong những trình soạn thảo mã nguồn rất phổ biến được các lập trình viên sử dụng. Với các ưu điểm nổi bật là sự nhanh chóng, nhẹ, hỗ trợ đa nền tảng cùng nhiều tính năng, đặc biệt là kho ứng dụng bổ trợ extension, Visual Studio Code ngày càng được ưa chuộng sử dụng, là lựa chọn hàng đầu của các lập trình viên. Chúng mình cũng đã tổng hợp được một số extension hay ho sẽ giúp việc lập trình của chúng ta trở nên hiệu quả hơn. Cùng tìm hiểu nhé!', N'1. Auto Rename Tag
Link: Auto Rename Tag - Visual Studio Marketplace

Đây là một extension hữu hiệu, giúp tự động thay đổi các thẻ mở và đóng trong quá trình viết HTML/XML.


2. Material Icon Theme
Link: Material Icon Theme - Visual Studio Marketplace

Extension này giúp thay đổi những Icon mặc định của VSCode, ngoài ra cũng bổ sung thêm icon cho những file, folder đặc biệt khác.


3. Better Comments
Link: Better Comments - Visual Studio Marketplace

Better Comments giúp cho các lập trình viên nắm bắt những dòng comment đặc biệt dễ dàng hơn bằng cách làm nổi bật những dòng comment ấy.


4. CodeSnap
Link: CodeSnap - Visual Studio Marketplace

CodeSnap sẽ giúp chúng ta chụp lại những dòng code một cách "ngầu" hơn, chỉ việc bôi đen đoạn code bạn muốn chụp, chuột phải và chọn CodeSnap.


5. Todo Tree
Link: Todo Tree - Visual Studio Marketplace

Bạn đang code dở một dự án nhưng có việc bận, hay chỉ đơn giản là buồn ngủ, nhưng lại sợ khi mở lại không biết hay không nhớ nên làm gì tiếp. Đừng lo, ToDo Tree sẽ giúp bạn giải quyết những khó khăn này.

Bạn chỉ cần comment và thêm từ TODO ở đầu, extension này sẽ đánh dấu nó. Việc của bạn đó là mở tab TODOs bên trái và xem mình cần phải làm gì tiếp theo thôi.


6. Git Graph
Link: Git Graph - Visual Studio Marketplace

Git Graph giúp cho việc hiển thị các branch cũng như các commit được dễ dàng hơn. Ngoài ra, công cụ này còn cho phép cậu thực hiện hầu hết thao tác cơ bản trên git một cách trực quan như Create, Checkout, Delete, Fetch, Merge, Pull, Push, Rebase, Rename & Reset Branches,... cùng với rất nhiều tính năng hữu ích dành cho lập trình viên ngay trên VSCode.


7. Bearded Theme
Link: Bearded Theme - Visual Studio Marketplace

Đây là một bộ các theme bổ sung dành cho VSCode, nếu vẫn chưa ưng ý thì chúng mình cũng đã có một bài nói về các chủ đề này, bạn có thể ghé qua nhé!

Tổng hợp các Theme đẹp dành cho VS Code (unitym.tech)

Bật mí: Theme tủ của mình là Arc Blueberry đó

Hy vọng bài viết này sẽ giúp các bạn có thêm nhiều thông tin bổ ích, nếu bạn thấy hay và mong muốn có phần tiếp theo thì có thể bình luận hoặc nhắn tin với page nhé!', N'Image\Thumbnail.png', N'Thinh123', CAST(N'2023-02-16' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (11, N'Memory cache là gì?', NULL, N'1. Memory cache là gì: In-memory cache sử dụng bộ nhớ(RAM) của máy server để lưu trữ data. Những data nào thường được lưu cache thỏa mãn 2 yếu tố: data được truy cập thường xuyên và ít thay đổi.

Mục đích của sử dụng memory cache hay bất kỳ loại cache nào là đều muốn cải thiện hiệu suất chương trình.

Ví dụ: lấy ra danh sách 100 sản phẩm bán chạy mỗi tháng. (dữ liệu này thỏa mãn tiêu chí ít thay đổi (1 tháng thay đổi 1 lần) + truy cập thường xuyên khi người dùng filter danh sách sản phẩm bán chạy). Ta có thể lưu cache cho data này để giảm thời gian truy cập xuống database để lấy dữ liệu.

Lưu ý: In-memory cache phù hợp cho 1 server duy nhất hoặc nhiều server có sử dụng sticky sessions.

Chỗ này mình sẽ giải thích sơ qua sticky session là gì?(Phần này liên quan đến kiến thức về load balancin) . Sticky session là một trong những tính năng cơ bản của load balancing cho phép định tuyến một máy chủ đơn lẻ cho một người dùng cụ thể, dựa trên HTTP session hoặc IP của họ.

Tại sao mình phải lưu ý vấn đề ở trên:

Nếu chỉ có 1 máy server thì khi ta lưu cache chỉ lưu trên bộ nhớ của máy server duy nhất đó => không xảy ra vấn đề gì.
Trong trường hợp có nhiều máy server (thông thường các hệ thống lớn đều xài multiple servers). Server A, B, C, D.... Khi ta lưu cache thì ta sẽ chỉ lưu ở một máy server A. Vậy khi lấy cache ra làm sao biết được ta sẽ lấy ở máy server nào trong nhiều servers. Sticky session sẽ giúp ta làm việc đó.
Thêm 1 lưu ý khi sử dụng nếu ta lưu quá nhiều memory cache thì sẽ tốn dung lượng lưu trữ dẫn đến server bị chậm.

2. Thực hành sử dụng memory cache trong .net core

Phần này để hiểu được cần có kiến thức cơ bản về c# và .net core

Trong .net core có hỗ trợ sẵn memory cache(IMemoryCache) vậy nên ta không cần phải xài third party.

Cấu hình service memory cache để sử dụng:
public void ConfigureServices(IServiceCollection services) {
    services.AddRazorPages();
    services.AddMemoryCache();
}
Sử dụng dependence injection để inject IMemoryCache
public class IndexModel : PageModel {
    private readonly ILogger<IndexModel> _logger;
    private IMemoryCache cache;
    public IndexModel(ILogger<IndexModel> logger, IMemoryCache cache) {
        _logger = logger;
        this.cache = cache;
    }
}
Set data cho cache bao gồm key và value(value có thể là kiểu int, string, double, object...)
 cache.Set<string>("timeCache", DateTime.Now.ToString());
var listUser = new List<User>() {
    new User {
        Id = 1,
        Name = "Iron man"
    },
    new User {
        Id = 2,
        Name = "Spider man"
    }
};
cache.Set<List<User>>("ListUser", listUser);
Lấy dữ liệu từ cache ta dùng phương thức get
ViewData["expiredCache"] = cache.Get<string>("expiredCache");
Sử dụng tryGet để kiểm tra sự tồn tại của key
if (!cache.TryGetValue<string>("timeCache", out string timeCache)) {
    ViewData["ExistingCache"] = "Cache với key: timeCache không tồn tại";
    cache.Set<string>("timeCache", DateTime.Now.ToString());
} else {
    ViewData["ExistingCache"] = $"Cache với key: timeCache đã tồn tại với value: {timeCache}";
}
Sử dụng GetOrCreate để tạo 1 cache mới nếu chưa tồn tại
var timeCacheGetOrCreate = cache.GetOrCreate<string>("timeCacheGetOrCreate", entry => {
    return DateTime.Now.ToString();
});
Xóa cache
cache.Remove("expiredCache");
Source demo: https://github.com/TechMarDay/Cache

Tham khảo: https://docs.microsoft.com/en-us/aspnet/core/performance/caching/memory?view=aspnetcore-5.0', N'Image\maxresdefault.jpg', N'Linh123', CAST(N'2023-01-30' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (12, N'Tips CSS: Sắp xếp các thuộc tính CSS sao cho gọn, đẹp, và dễ bảo trì.', NULL, N'Chào mọi người, hôm nay mình sẽ chia sẻ với các bạn một mẹo nhỏ về CSS mà mình đã tìm hiểu và thấy nó khá là hữu ích trong việc tổ chức code Css gọn gàng, đẹp, và dễ hiểu. Sau này khi cần bảo trì thì việc tìm các thuộc tính sẽ trở nên nhanh hơn và giúp các bạn tiết kiệm thời gian hơn. 

Dưới đây là một đoạn code mình dùng để style cho button trong project bài tập cuối khóa HTML-CSS của anh Sơn. Nhìn trông khá lộn xộn đúng không các bạn?


Khi bạn đọc đoạn code button này của mình bạn hông biết là cái ông này ổng dùng display gì cho button vậy ta? bạn sẽ mò từ trên xuống dưới để tìm thuộc tính display, đến khi có rồi thì bạn dừng lại, và biết là ổng dùng display: flex;

Tiếp tục, bạn tự hỏi ông này ổng canh giữa kiểu gì vậy nhỉ? Bạn sẽ mò từ trên xuống dưới và thấy 2 thuộc tính justify-content: center và align-items: center.

Một khi bạn muốn tìm cái gì đó thì hầu như bạn phải scan hết cái đống code này. Mà đây chỉ là 1 đoạn code trong một rừng code của mình thôi :v

Ứng với những dòng code đó mình viết lại như sau:


Giả sử, bây giờ bạn muốn tìm color của button, bạn chỉ cần đọc các dòng chú thích là bạn sẽ tìm thấy color ở dòng 21, 22. Hi vọng các bạn tia chú thích như cách bạn tia gái vậy. Khi bạn đã thấy color rồi thì bạn có thể skip qua các thuộc tính khác, tại nó không liên quan tới màu sắc.

Tương tự, nếu bạn đang tìm hiểu display, bạn chỉ cần xem block đầu tiên, bỏ qua các thằng khác, chả quan tâm. Liên quan tới thằng display: flex; ta có thêm justify-content: center và align-items: center cũng nằm chung một block.

Vì display và box-model nó khá là nhiều thuộc tính nên mình chia ra từng block nhỏ khoảng 3-5 dòng, và xếp nó vào những block liên quan với nhau giúp cho việc đọc code trở nên dễ dàng và nhanh chóng hơn.

Những lần sau, khi bạn xem lại code hoặc bảo trì thì việc tổ chức cấu trúc code như thế này giúp bạn tiết kiệm rất nhiều thời gian để bạn chỉnh sửa hoặc fix bug.

Đây là một phương pháp rất là hay mà mình đã đọc được trên CSS-Tricks khảo sát 10.000 người về việc nên gom nhóm CSS như thế nào?


Kết quả cho thấy 45% chọn cách gom nhóm theo loại chức năng. Thì có 5 nhóm đó là: Positioning, Display & Box model, Color, Text và Other (animation, cursor,...).

Chỉ cần áp dụng vài lần và trở thành thói quen thì code của bạn sẽ trở rất là đẹp, rất là gọn và giúp tiết kiệm thời gian cho những lần sau. Bởi vì khi lần đầu tiên mà bạn viết code thì bạn có thể sẽ nhớ được, tuy nhiên 1 tuần sau bạn quay lại xem chính code của mình viết ra thì bạn sẽ khóc ròng 1 dòng sông luôn. Đặc biệt là những người khác đọc code của bạn thì họ còn khóc bạo hơn nữa.

Hiện tại có thể bạn chưa thấy hậu quả nhưng mai mốt bạn sẽ thấy liền thôi ha =)). Cho nên hãy thử áp dụng thử một thời gian ha. Cảm ơn mọi người đã tốn thời gian đọc tới dòng này :).

Nguồn: https://css-tricks.com/poll-results-how-do-you-order-your-css-properties/', N'Image\css-tricks-social.png', N'Duong123', CAST(N'2023-01-24' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (13, N'Tổng hợp các Theme đẹp dành cho VS Code', NULL, N'1. One dark pro
Có lẽ nhiều bạn cũng biết trước khi VS Code phổ biến thì Atom là trình sửa mã được nhiều người yêu thích, và theme One Dark của Atom đã nổi tiếng vì quá đẹp. Với VS Code, bạn cũng hoàn toàn có thể cài đặt và sử dụng One Dark Pro. Mẫu theme này cho phép bạn tùy chỉnh màu sắc và thêm chữ in nghiêng vào giao diện người dùng.


Giao diện One dark pro

Lượt tải: ~ 6,444,675

Link download: One dark pro

2. Dracula Official
Dracula Official chắc hẳn đã trở nên quá quen thuộc với anh em trong ngành lập trình. Sở dĩ theme này có tới hơn 4,5 triệu lượt tải bởi mặc dù thiết kế của nó rất đơn giản nhưng lại mang đến cho người dùng một trải nghiệm gần như tốt nhất trong các chủ đề tối.


Giao diện Dracula Official

Lượt tải: ~ 4,572,172

Link download: Dracula Official

3. Ariake dark
Chủ đề Ariake dark lấy cảm hứng từ màu sắc truyền thống của Nhật Bản với những bài thơ được sáng tác cách đây 1000 năm. Bảng màu trong theme này đảm bảo được việc dù rất đẹp mắt nhưng không ảnh hưởng đến khả năng đọc code của lập trình viên. Tác giả theme khuyên bạn nên sử dụng phông chữ ''Fira code'' để có được trải nghiệm tốt nhất.


Giao diện Ariake dark

Lượt tải: ~ 100,611

Link download: Ariake dark

4. Rosé Pine
Mặc dù màu sắc của theme Rosé Pine không quá rực rỡ, nhưng đây lại được cho là một chủ đề mang lại cảm giác dễ chịu cho người dùng. Tone màu kết hợp giữa sắc gỗ thông tự nhiên và các gam màu trung tính mang đến cho giao diện này sự tối giản nhưng vẫn sang trọng.


Giao diện Rosé Pine

Lượt tải: ~ 38,852

Link download: Rosé Pine

5. Celestial
Đây được đánh giá là bản tối hơn của Horizon - một theme khá phổ biến khác trên VS Code. Mặc dù sở hữu giao diện tối nhưng nó vẫn được nhiều người dùng đánh giá rất cao vì được phối màu xuất sắc và được mệnh danh là “theme dành cho những người yêu thích code trong bóng tối”.


Giao diện Celestial

Lượt tải: ~ 53,965

Link download: Celestial

6. Winter is coming
Đây là một chủ đề đặc biệt ngay từ chính cái tên của nó: “mùa đông đang về”. Theo tác giả chia sẻ, nơi anh đang sống là cực tây bắc Montana - nơi mùa đông luôn bao phủ, vì vậy anh đã tạo ra theme này với các chủ đề: chủ đề tối (xanh dương và đen), tối không in nghiêng và chủ đề sáng. Hiện nay, theme này đã đạt ~2 triệu lượt tải trên VS Code.


Giao diện Winter is coming

Lượt tải: ~1,975,153

Link download: Winter is coming

7. Material Icon Theme
Với những người sử dụng VS Code, Material Icon xứng đáng là một trong các theme đẹp dành cho VS Code và đã sở hữu tới hơn 15 triệu lượt tải xuống. Đúng như tên gọi, nó cung cấp cho người dùng hàng trăm icon để làm nguyên liệu thiết kế cho nhiều loại file và folder khác nhau, đặc biệt là thường xuyên được bổ sung, cập nhật nên rất đầy đủ, chi tiết.


Giao diện Material Icon Theme

Lượt tải: ~15,023,252

Link download: Material Icon Theme

8. GitHub Theme
Đây là một giao diện được mô tả là "Chủ đề GitHub từ VS Code". Người dùng khi cài đặt sẽ được lựa chọn các cài đặt như Github Dark, GitHub Dark Default, GitHub Light Default, GitHub Dark Dimmed. Hiện tại, theme này đã có tới 5,9 triệu lượt tải xuống và nhận được rate 4.5/5.


Giao diện GitHub Theme

Lượt tải: ~5,947,122

Link download: GitHub Theme

9. Night Owl
Night Owl được tạo ra với mong muốn tiếp cận được tới càng nhiều người càng tốt. Độ tương phản và cách phối màu ở giao diện này được chú trọng nhằm mang đến cảm giác dễ chịu nhất cho người dùng (bao gồm cả những người mù màu) nên có thể đáp ứng được nhu cầu của những người thường làm việc khuya (đúng như cái tên “Cú đêm” của nó).


Giao diện Night Owl

Lượt tải: ~1,703,508

Link download: Night Owl

10. Andromeda
Andromeda là một chủ đề có màu sắc rực rỡ trên nền tối. Tác giả cũng tạo thêm một biến thể của chủ đề này với các từ khóa in nghiêng phù hợp với phông chữ, bao gồm Operator Mono và Catograph Mono. Ngoài ra còn có một biến thể có viền giúp người dùng phân biệt khi sử dụng nhiều tab cùng lúc.


Giao diện Andromeda

Lượt tải: ~618,861

Link download: Andromeda

11. Tokyo Night
Đúng như tên gọi, Tokyo Night là một chủ đề tôn vinh ánh đèn đêm tuyệt đẹp của trung tâm thành phố Tokyo. Tác giả đặt giao diện người dùng có độ tương phản thấp để không làm các lập trình viên mất tập trung. Chủ đề đi kèm với hai biến thể bổ sung, đó là Tokyo Night Light và Tokyo Night Storm. Ngoài ra còn có các cấu hình để tắt chữ in nghiêng, làm sáng văn bản Codelens và tùy chỉnh có/không có viền.


Giao diện Tokyo Night

Lượt tải: ~701,930

Link download: Tokyo Night

12. City Lights
Một chủ đề VS Code tuyệt vời khác là City Lights với tone màu xanh đậm chủ đạo. Giao diện này có thể hỗ trợ hơn tám ngôn ngữ lập trình phổ biến với gói biểu tượng “Ánh đèn thành phố” chứa hơn 60 biểu tượng loại tệp.


Giao diện City Lights

Lượt tải: ~191,972

Link download: City Lights

13. Shades of Purple
Bạn có thích màu tím không? Nếu có thì hãy thử trải nghiệm tone màu tím “lịm tìm sim” của Shades of Purple nhé! Với theme này, bạn sẽ được thấy từng sắc thái của màu tím, từ đó cũng có thể tăng cảm hứng làm việc đấy!


Giao diện Shades of Purple

Lượt tải: ~1,322,505

Link download: Shades of Purple

14. Outrun
Đây được coi là một chủ đề mang đậm văn hóa khi được lấy cảm hứng từ màu sắc, phong cách và văn hóa của nền âm nhạc synthwave. Sự kết hợp của màu sắc, font chữ của theme này mang đến cho người dùng một cảm giác rất sôi động, nhiệt huyết.


Giao diện Outrun

Lượt tải: ~58,187

Link download: Outrun

15. Ayu
Nếu bạn thích chủ đề đơn giản với cách phối màu tươi sáng, thì đây chắc chắn là một trong những chủ đề vscode tốt nhất dành cho bạn. Nhà phát triển Ayu đã tạo chủ đề trang nhã này bằng cách sử dụng màu sắc ấm áp và giao diện tối giản. Độ tương phản linh hoạt và phù hợp giúp nó dễ dàng thích ứng với những người có thị lực kém hơn.


Giao diện Ayu

Lượt tải: ~1,564,499

Link download: Ayu

Trên đây là tổng hợp các theme đẹp dành cho VS Code của mình. Hi vọng rằng các bạn có thể lựa chọn được những giao diện yêu thích thông qua 15 theme mình vừa kể để có thêm nhiều cảm hứng khi làm việc. Chúc các bạn học tập và làm việc hiệu quả!', N'Image\63845d1ac5fa8.png', N'Thinh123', CAST(N'2023-01-24' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (14, N'Bỏ túi 21 lệnh Git cơ bản + Cách nhớ, giúp newDev làm chủ Git quản lý tốt mã nguồn!', N'Git một nội dung khá mới mẻ với các bạn mới bắt đầu code, nhiều bạn còn bỡ ngỡ với Git nên mình tổng hợp khái quát một số kiến thức về Git gửi các bạn tham khảo.

Trong bài viết này mình xin giới thiệu đến các bạn những lệnh cơ bản nhất (Cần nhớ và cách ghi nhớ nó) khi sử dụng, làm việc với Git. Đồng thời mô phỏng một quy trình làm việc với Git theo từng giai đoạn. Ở giai đoạn nào thì sử dụng những lệnh nào. Nhằm giúp các bạn mới nắm được bức tranh tổng quan nhất khi làm việc với Git, để sử dụng dòng lệnh cho phù hơp trong quá trình học tập, thực hành cũng như phục vụ công việc sau này.', N'Bài viết được chia làm ba Phần:

Phần I: Những lênh Git cơ bản thường dùng.
Phần II: Mẹo ghi nhớ lênh Git rất đơn giản.
Phần III: Tổng quan một quy trình làm việc với Git.
Mời các bạn theo dõi nội dung chi tiết:


I/. Những lệnh Git cơ bản thường dùng:
1. Create a new remote repository:
Tạo một tài khoản Git và tạo một kho lưu trữ từ xa (remote repository).

{Phần này tạo trên GitHub} https://github.com/

2. Git version:
$ git --v
Kiểm tra phiên bản của Git.
3. Git config:
$ git config --g user.name "Dev name"
$ git config --g user.email "Dev email"
$ git config --list
Định cấu hình các biến cấu hình chung – Nếu bạn đang làm việc với các developer khác, bạn sẽ cần biết ai đang kiểm tra mã xuất nhập và thực hiện thay đổi.
4. Git help:
Nếu bạn cần hỗ trợ, hãy sử dụng các lệnh:

$ git help -a or $ git help --all - Hướng dẫn bạn có thể làm được những gì, tất cả các lệnh có thể.

$ git config --help or $ git help config - Đưa bạn tới trang hướng dẫn chính thống của Git.

$ git command -help . Xem tất cả các tùy chọn có sẵn cho lệnh cụ thể

5. Git mkdir:
$ git mkdir folder_name  - Tạo repository trong hệ thống local.

$ cd folder_name - Di chuyển đến folder_name repository vừa tạo ra.

6. Git remote:
$ git remote add origin https... <url> - Liên kết đến remote repository (local & GitHub)

$ git remote set-url <name> <new url> - Thay đổi địa chỉ của remote repository đã Liên kết vào địa chỉ của <new url>.

$ git remote rename <old> <new> - Thay đổi tên của remote repository đã Liên kết.

7. Git init:
$ git init (Khởi tạo git trong thư mục dự án của bạn) - Lệnh này được dùng khi bạn muốn tạo một phiên bản git mới cho một dự án.

8. Git status:
$ git status

$ git status --short 

(Kiểm tra trạng thái của kho lưu trữ)

Giải thích:

?? - Tập tin không bị theo dõi
A - Tệp được thêm vào giai đoạn
M - Tệp đã sửa đổi
D - Các tệp đã xóa
Câu lệnh Git status dùng để kiểm tra status của repository.

9. Git add:
$ git add . (Chú ý dấu chấm)
Hoặc:

$ git add --all  (git add -A)

$ git add index.html (có thể chỉ định trực tiếp tên tệp cần add)

Add những thay đổi (bạn đã tạo mới hoặc chỉnh sửa) để thực hiện commit.
10. Git commit
$ git commit -m "Thông điệp của bạn"

Git commit: Ghi lại các thay đổi vào kho lưu trữ. (Cần thêm các thông điệp rõ ràng vào mỗi mục commit)
Cách đặt tên branch hay commit nên rõ ràng, thể hiện branch đó, commit đó thực hiện feature gì hay là fix bug gì... (thường thì sẽ theo quy định của công ty)
11. Git diff:
$ git diff So sánh sự khác biệt kể từ lần commit cuối cùng của bạn.

$ git log Xem lịch sử làm việc với git (lịch sử commit)

12. Git push:
$ git push -u origin branch_mane - Push (đẩy) branch vào remote repository.

$ git push - Push (đẩy) tất cả mọi thay đổi (đã commit) lên remote repository.

$ git push -d origin branch_mane - Xóa một branch trên remote repository.

$ git push -f origin branch_mane - Push force sẽ apply toàn bộ log ở local của bạn lên branch ở repo, bất chấp log 2 nơi khác nhau. (Xóa vĩnh viễn branch cũ Push branch mới. Dễ gây conflict cho người khác cẩn trọng trước khi dùng)

13. Git branch:
$ git branch -M branch_mane (main) - Đổi tên nhánh chính.

$ git branch- Kiểm tra các nhánh hiện có của bạn ở local.

$ git branch -c branch_mane Hoặc:

$ git checkout -b branch_mane (Tạo và chuyển luôn sang nhánh mới) - Tạo một nhánh có tên “branch_mane” và hợp nhất (merge) nó với nhánh chính.

$ git branch -d branch_mane - Xóa một nhánh tại local có tên: "branch_mane" (branch đã được hợp nhất (push) vào remote repository)

$ git branch -D branch_mane - Xóa một nhánh tại local có tên: "branch_mane" (branch đã commit nhưng chưa hợp nhất vào remote repository)

$ git branch -a - Kiểm tra các branch hiện có trên remote repo của bạn.

14. Git checkout:
$ git checkout -b branch_mane (Tạo và chuyển luôn sang nhánh mới)

$ git checkout branch_mane - Lệnh trên giúp di chuyển không gian làm việc, kiểm tra tệp giữa các branch_mane.

15. Git fetch: (Lấy code về nhưng chưa muốn merge)
$ git fetch origin

Git fetch cho phép CẬP NHẬT để xem điều gì đã thay đổi trên GitHub của bạn.
Lệnh fetch (xác nhận nội dung thay đổi trong branch của remote repository) nhưng nội dung branch của local repository không bị thay đổi.
16. Git merge: (merge kết hợp nhánh hiện tại, với một nhánh được chỉ định.)
Di chuyển về branch cần hợp nhất bằng lệnh checkout.
$ git checkout branch_mane1 (Nhánh nhận hợp nhất or nhánh hiện tại)

Tiến hành hợp nhất:
$ git merge branch_mane2 (Nhánh chỉ định hợp nhất)

(Nhánh hiện tại là nhánh bạn đang đứng, nhánh chỉ định là nhánh sau lệnh $ git merge)

Lệnh trên giúp hợp nhất các branch (Hợp nhất branch_mane2 vào branch_mane1). (Chú ý xử lý xung đột code)

17. Git pull: (Hợp nhất từ xa)
$ git pull origin main - Git pull kéo tất cả các thay đổi từ main về local.

$ git pull - Git pull kéo tất cả các thay đổi từ branch_mane về local.

$ git pull origin - Git pull kéo tất cả các thay đổi từ kho lưu trữ từ xa vào branch bạn đang làm việc. (pull là sự kết hợp của 2 lệnh khác nhau: fetch và merge)

$ git pull --rebase (Cach pull chống xung đột)

Git clone:
$ git clone <url>  (Địa chỉ dự án bạn muốn Clone) - Clone dự án có sẵn trên GitHub. $ git clone <url> folder_name - Clone đồng thời đổi tên dự án theo ý bạn khi save vào local.

19. Git stash:
$ git stash save # Hoặc $ git stash - Lưu lại công việc đang làm ở branch này để chuyển sang branch khác (Khi bạn chưa muốn commit code)

$ git stash list - Xem lại lịch sử thay đổi.

$ git stash show stash@{n} - Xem lại lịch sử thay đổi cụ thể của lần stash save{n}.

$ git stash apply stash@{1} - Apply thay đổi của lần stash save{n}.

$ git stash clear - Xoá toàn bộ stash.

20. Git rebase: (Hợp nhất code)
Di chuyển về nhánh nhận sự hợp nhất.
$ git checkout branch_mane1

Tiến hành hợp nhất.
$ git rebase branch_mane2 (Code từ branch_mane2 được hợp nhất vào branch_mane1)

Tương đồng với merge nhưng có sự khác biệt như sau:

Merge: Chỉ lấy nội dung commit cuối cùng của hai nhánh, tích hợp tạo thành commit mới. Các commit trước đó được giữ nguyên không thay đổi.
Rebase: Lấy code từ branch_mane2, từ những commit ở branch_mane2 tích hợp đồng thời tái tạo lại commit mới ở branch_mane1 (Các commit đã tồn tại bị bỏ đi).
21. Git revert:
$ git revert <commit_id>

Lệnh này tạo commit đảo ngược commit có commit_id được chọn.
$ git reset –hard <commit_id> - Lệnh này xoá toàn bộ các commit trước đó, đưa branch về trạng thái của commit_id được chọn.

$ git reset –soft <commit_id> - Đưa branch về trạng thái của commit_id được chọn. Giữ nguyên tất cả thay đổi của file và các thay đổi ở stage. (Được khuyến khích sử dụng)

Note:

Nhấn phím mũi tên chỉ xuống để đọc tiếp nội dung bị che khuất phía dưới.
Nhấn phím chữ ''q'' để thoát khỏi chế độ xem, đưa bạn về dấu nhắc lệnh branch hiện tại.
II/. Mẹo ghi nhớ lệnh Git rất đơn giản:
Copy toàn bộ hoặc một phần nội dung bài viết (hoặc tự tóm tắt lại theo ý hiểu) của bạn. Dùng VSCode tạo một file có phần mở rộng .txt (tên file rõ ràng dễ nhớ). Sau đó lưu nội dung bạn vừa tóm tắt vào file vừa tạo, lưu file vào Workspace của bạn.

Mỗi lần làm việc với dự án cần dùng đến, thì Open file đó ngay trên VSCode thôi. Sẽ rất thuận tiện cho việc xem lại gõ lại theo... (Việc gó lại được khuyến khích để mưa dầm thì...). Nếu bạn nào lười THẤM thì có thể copy and paste (chú ý đổi tên branch, thay đổi nội dung commit... cho phù hơp). OK! "Nhớ lke mạnh nha!"

III/. Tổng quan một quy trình làm việc với Git:
Tất nhiên rồi! Đối với những proDev, lỡ có quên... chỉ một dòng lệnh: $ git help -a là lại Ok. Nhưng với những bạn mới dù $ git help -a thì cũng không biết bắt đầu từ đâu? Không biết thực thi dòng lệnh nào trong giai đoạn nào?

Các bạn đừng quá lo lắng, bức tranh tổng quát sau sẽ giúp các bạn phần nào giải tỏa được những băn khoăn đó:

Trong hướng dẫn này, tôi mặc định rằng các bạn đã có cho mình một tài khoản GitHub và thành thạo với việc tạo một kho lưu trữ từ xa (remote repository) trên GitHub nha. (Phần này tạo trên GitHub) Nếu bạn nào chưa tạo được remote repository thì xem lại bài giảng này nhé:


A/. Quy trình chủ động: (Bạn chủ động triển khai một dự án mới)
1/. Cài đặt, tạo tài khoản Github:
- Bạn có thể tạo Github account tại đây https://github.com/signup/free

- Cài đặt Github client vào máy cá nhân https://desktop.github.com/

2/. Cấu hình Github client để làm việc với máy chủ Github
- Cấu hình Github client được hướng dẫn cụ thể trên Github, mình xin tóm lược một số bước chính:

- Tạo SSH key: https://github.com/centic9/generate-and-send-ssh-key

- Cài đặt thông tin cá nhân:

$ git config --g user.name “Tên của bạn”

$ git config --g user.email “Địa chỉ email của bạn”

3/. Khởi tạo repo:
- Khởi tạo thư mục repo trên máy client (máy của lập trình viên)

mkdir (Đường dẫn bạn muốn đặt thư mục repo)

cd (Tên repo vừa tạo) để chuyển sang repo đó làm việc $ git init

4/. Đưa file từ client lên Github:
- Kết nối tới Github repo

$ git remote add origin git@github.com:(Tên repo)

Chú ý: Luôn cập nhật server trước khi push nội dung mới từ client lên bằng lệnh git pull: $ git pull git@github.com:(Tên repo) main

Sau khi có một repo và kết nối với sever là bạn đã sẵn sàng cho việc ra mắt một dự án rồi.

Công việc bây giờ là: Code... code... và code...! và sau đó:

- Kiểm tra trạng thái thay đổi $ git status

- Add file vào danh sách commit (bỏ qua nếu không có file mới được tạo) $ git add -A (all files)

- Commit những thay đổi trước khi push: $ git commit -a -m “Thông tin về commit” (-a Tất cả thay đổi)

- Tải lên server nhánh main $ git push -u origin main

+ Tạo nhánh (branch) riêng:
- Xem toàn bộ các nhánh đang có $ git branch -a

- Tạo nhánh mới $ git branch <tên mới>

- Chuyển nhánh git checkout <tên nhánh>

- Xóa nhánh $ git branch -d <Tên branch>

- Nhập nhánh con vào nhánh hiện tại $ git merge <Tên nhánh>

5/. Settings và xuất bản GitHub Pages thôi nào!
B/. Quy trình bị động: (Bạn được Sếp giao hoặc tham gia dự án cùng Team)
Từ bước 1 đến bước 3 (Tương tự như trên)
Chỉ khác là sau bước 3 thì bước tiếp theo là bạn Clone dự án: (Sau khi tạo repo thành công) Chắc chắn rằng bạn đang đứng tại repo cần lưu dự án và chạy lệnh:

$ git clone <url> (Địa chỉ dự án bạn muốn Clone) Rồi lại tiếp tục Code... code... theo yêu cầu và lặp lại quy trình các bước như trên để xuất bản dự án.

Trên đây là một số bước cơ bản để làm việc nhóm với Git. Mục đích chính của mình nhằm giúp các bạn hiểu được các giai đoạn sử dụng dòng lệnh cho phù hợp. Còn thực chất một quy trình làm việc nhóm thực tế sẽ còn rất nhiều công đoạn, nhiều việc phải làm... Nhưng cũng chỉ xoay quanh một số lênh thường dùng bạn nên nắm chắc và hiểu về chúng!

Chúc các bạn sức khỏe và thành công 💖', N'Image\git-github.png', N'Duong123', CAST(N'2023-01-24' AS Date))
GO
INSERT [dbo].[News] ([ID], [Name], [Desc], [Detail], [Image], [User_author], [Date]) VALUES (15, N'Các nguồn tài nguyên hữu ích cho 1 front-end developer', NULL, N'1. Trình soạn thảo code

Visual studio code: là 1 trình soạn thảo code được nhiều người sử dụng nhất hiện nay với khả năng code được nhiều ngôn ngữ và rất nhiều extension hổ trợ cho việc code.
2. Nguồn học HTML, CSS, JS,...
w3schools

W3School: là 1 trang web học code miễn phí đang tin cậy với nhiều bài giảng chất lượng có đầy đủ cả lý thuyết lận thực hành với nhiều bài code mẫu ngay sau những kiến thức lý thuyết cực kỳ trực quan.
MDN Web Docs

MDN Docs: như một kho thư viện định nghĩa các thuộc tính, chức năng và cách sử dụng của các thẻ, hàm, câu lệnh... của các ngôn ngữ như HTML, CSS, Javascript,... vô cùng đầy đủ và chính xác.
Và 1 số trang web khác như:
CSS-Trick
Stack Overflow
F8
...
3. Nguồn chứa các font chữ thường hay được sử dụng:
Google Font
Fontsquirrel
Myfont
4. Nguồn chứa các màu sắc thường hay được sử dụng:
Tailwind Colors
Coolors Contrast Checker
Flat UI Colors
Colorhunt Palettes
5. Nguồn chứa các kho ảnh trực tuyến thường hay được sử dụng:
Unsplash
Pexels
unDraw
Pixaby
6. Nguồn chứa các Icon thường hay được sử dụng:
Font Awesome
Ionicons
Icons8
Hero Icons
7. Nguồn chứa các mẫu design đẹp thường hay được sử dụng:
Dribbble
Land Book
One Page Love
Screelane', N'Image\613a1e8d8fc47.jpg', N'Linh123', CAST(N'2023-01-23' AS Date))
GO
SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[Users] ([UserName], [Password], [Name], [Gender], [DOB], [IsAuthor]) VALUES (N'Admin', N'123', N'Thinh', 1, CAST(N'2003-09-27' AS Date), 1)
GO
INSERT [dbo].[Users] ([UserName], [Password], [Name], [Gender], [DOB], [IsAuthor]) VALUES (N'Duong123', N'123', N'Duong', 1, CAST(N'2003-09-20' AS Date), 0)
GO
INSERT [dbo].[Users] ([UserName], [Password], [Name], [Gender], [DOB], [IsAuthor]) VALUES (N'Linh123', N'123', N'Linh', 0, CAST(N'2004-09-29' AS Date), 0)
GO
INSERT [dbo].[Users] ([UserName], [Password], [Name], [Gender], [DOB], [IsAuthor]) VALUES (N'Thinh123', N'123', N'Minh', 1, CAST(N'2004-09-23' AS Date), 0)
GO
ALTER TABLE [dbo].[Catogories_News]  WITH CHECK ADD FOREIGN KEY([ID_Catogories])
REFERENCES [dbo].[Catogories] ([ID])
GO
ALTER TABLE [dbo].[Catogories_News]  WITH CHECK ADD FOREIGN KEY([ID_News])
REFERENCES [dbo].[News] ([ID])
GO
ALTER TABLE [dbo].[Count_News]  WITH CHECK ADD FOREIGN KEY([ID_News])
REFERENCES [dbo].[News] ([ID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([User_author])
REFERENCES [dbo].[Users] ([UserName])
GO
