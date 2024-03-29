create database OnlinePostOfficeManagement
go
use OnlinePostOfficeManagement
go 

create table tblAdmin (
adminUserName varchar(100) primary key,
adminPassword nvarchar(100),
adminFunction int,  -- =0 nếu là supper admin -- =1 nếu là admin
adminStatus bit default'0' -- = 0 là chưa kích hoạt, bằng 1 là kích hoạt
)
go
create table tblBranch
(
branchID int identity(1,1) primary key,
branchCity nvarchar(100) not null, -- Thành phố nơi đặt chi nhánh
branchDistrict nvarchar(100) not null , -- Quận nơi đặt chi nhánh
branchArea nvarchar(100) not null, -- Chi nhánh thuộc khu vực nào (có 3 khu vực là miền bắc, miền trung, và miền nam)
adminUserName varchar(100) references tblAdmin(adminUserName), -- Lưu lại tên admin khởi tạo chi nhánh này
branchStatus bit default'0' -- = 0(false) là chưa kích hoạt, bằng 1(true) là đã kích hoạt
)
go

create table tblEmployee
(
empUserName nvarchar(100) primary key,
empPassword nvarchar(100) not null,
empFullName nvarchar(100) not null,
empAddress nvarchar(100) not null,
empEmail nvarchar(100) not null,
empFunction int not null, --=0 nếu là nhân viên văn phòng có chức năng hoàn thiện các hóa đơn khách hàng, =1 nếu là nhân viên giao hàng và nhận hàng đặt gửi từ khách hàng
branchID int references tblBranch(branchID),-- Nhận biết chi nhánh làm việc của nhân viên này
adminUserName varchar(100) references tblAdmin(adminUserName), -- Lưu lại tên admin kích hoạt tài khoản này 
empStatus bit default'0' -- = 0 là chưa kích hoạt bằng 1 là kích hoạt
)
go

create table tblCustomer (
cusUserName nvarchar(100) primary key,
cusPassword nvarchar(100) not null,
cusFullName nvarchar(100) not null,
cusAddress nvarchar(100) not null,
cusEmail nvarchar(100) not null,
empUserName nvarchar(100) references tblEmployee(empUserName), -- Lưu tên nhân viên kích hoạt tài khoản khách hàng này
cusStatus bit default'0' -- = 0 là chưa kích hoạt bằng 1 là kích hoạt
) 

go

create table tblNews 
(
newsID int identity (1,1) primary key,
newsTitle nvarchar(100) not null,
newsBrief nvarchar(250) not null,
newsContent nvarchar(max) not null,
newsImage nvarchar(100),
adminUserName varchar(100) references tblAdmin(adminUserName), -- lưu tên admin khởi tạo tin tức
newsStatus bit default'0' -- =0 nếu chưa kích hoạt, = 1 là kích hoạt
)

go

create table tblFeedBack
(
feedID int identity (1,1) primary key,
feedContent nvarchar(max),
cusUserName nvarchar(100) references tblCustomer(cusUserName), -- Lưu lại tên khách hàng gửi ý kiến phản hồi
adminUserName varchar(100) references tblAdmin(adminUserName), -- Lưu lại tên admin trả lời phản hồi
feedStatus bit default'0' -- = 0 là chưa trả lời , =1 là đã trả lời 
)

go

create table tblService
(
serviceID int identity(1,1) primary key,
serviceName nvarchar(100) not null , -- tên các dịch vụ bưu điên (ví dụ: dịch vụ đưa báo (MagazineDaily), Bưu phẩm (ParcelPost))
serviceDescription nvarchar(500) not null , -- Miêu tả qua dịch vụ
adminUserName varchar(100) references tblAdmin(adminUserName),
serviceStatus bit default'0'
)

go
--Bảng này dùng để lưu chi tiết dịch vụ bưu điện, ví dụ: dịch vụ đưa báo đặc biệt ( nằm trong dịch vụ đưa báo), dịch vụ chuyển phát nhanh ( nằm trong dịch vụ ParcelPost) 
-- Mục đích sử dụng bảng này để thêm chi phí nếu khách hàng lựa chọn dịch vụ này (thông thường là dịch vụ thường)
create table tblServiceDetail
(
serviceDetailID int identity (1,1) primary key,
serviceID int references tblService(serviceID), 
serviceDetailName nvarchar(100) not null,
serviceDetailDescription nvarchar(max) not null,
serviceDetailPrice float default'0',
serviceDetailImage nvarchar(100),
adminUserName varchar(100) references tblAdmin(adminUserName),
serviceDetailStatus bit default'0'
)

go
--Bảng này thể hiện rõ chức năng chính của bưu điện trong đó có giá của từng loại báo trên 1 tháng đăng ký
create table tblMagazineDaily
(
magazineDailyID int identity(1,1) primary key,
serviceID int references tblService(serviceID), -- tên dịch vụ này thường là báo tuần (magazineDaily)
serviceDetailID int references tblServiceDetail(serviceDetailID), -- Trường này để thông báo xem báo này có dịch vụ phụ thêm nào hay là dịch vụ thông thường
magazineName nvarchar(100) not null ,
magazineDescription nvarchar(max) , 
magazineImage nvarchar(100),
adminUserName varchar(100) references tblAdmin(adminUserName),
magazineStatus bit default'0'
)

go
-- Bảng này là nghiệp vụ chính của web OnlinePostOffice dịch vụ gửi bưu phẩm
create table tblParcelPost
(
parcelPostID int identity (1,1) primary key,
serviceID int references tblService(serviceID), -- tên dịch vụ này thường là dịch vụ chuyển phát thư và bưu phẩm (ParcelPost)
serviceDetailID int references tblServiceDetail(serviceDetailID) , -- trường này để thông báo xem loại dịch vụ này có dịch vụ phụ thêm không (ví dụ : dịch vụ chuyển phát nhanh, dịch vụ trả tiền bên người nhận)
parcelPostName nvarchar(150) not null , -- tên dịch vụ ví dụ chuyển phát trong khu vực hoặc từ khu vực này sang khu vực kia, chuyển phát sang nước ngoài ( nghĩa là nơi gửi và nơi nhận trong 1 khu vực (miền bắc, miền nam, hoặc miền trung))
parcelPostDescription nvarchar(max), -- mô tả dịch vụ
parcelPostPrice float not null , -- giá dịch vụ
adminUserName varchar(100) references tblAdmin(adminUserName),
parcelPostStatus bit default'0' -- bằng 0 chưa kích hoạt dịch vụ, bằng 1 đã kích hoạt
)

go
--Bảng hóa đơn khởi tạo trường mới khi khách hàng lựa chọn dịch vụ
create table tblOrder
(
orderID int identity(1,1) primary key,
cusUserName nvarchar(100) references tblCustomer(cusUserName),
empUserName nvarchar(100) references tblEmployee(empUserName),
orderStatus bit default'0'
)
go

create table tblOrderDetail
(
orderDetailID int identity(1,1) primary key,
orderID int references tblOrder(orderID),
serviceDetailID int references tblServiceDetail(serviceDetailID), -- Khách hàng lựa chọn tự điền vào dịch vụ phụ thêm
magazineDailyID int references tblMagazineDaily(magazineDailyID), -- Khách hàng lựa chọn báo 
monthMagazineDaily int,
parcelPostID int references tblParcelPost(parcelPostID),-- Nhân viên hoàn thiện đơn hàng do khách hàng khởi tạo (xem bảng dịch vụ bưu phẩm để lựa chọn đúng loại hình dịch vụ xem nơi gửi và nơi nhận ở đâu để chọn đúng)
parcelFromAddress nvarchar(150) not null , -- địa chỉ gửi bưu phẩm (do khách hàng tự điền thông qua textbox)
parcelFromDistrict nvarchar(100) not null , -- Quận nơi bưu phẩm cần gửi ( do khách hàng tự điền thông tin qua combobox(fix sẵn các quận thông qua các chi nhánh đã mở))
parcelFromCity nvarchar(100) not null , -- Thành phố nơi sử dụng dịch vụ ( do khách hàng tự điền thông qua combobox(fix sẵn thông qua chi nhanh đã mở) việc này giúp nhân viên theo chi nhánh tiện xử lý đơn hàng nhân viên chi nhánh nào sẽ hiển thị hóa đơn theo chi nhánh đó)
parcelToAddress nvarchar(150) not null, -- Khách hàng tự điền qua text box
parcelToDistrict nvarchar(100) not null , -- Khách hàng tự điền qua text box 
parcelToCity nvarchar(100) not null,-- Khách hàng tự điền thông qua text box 
parcelWeight float, -- nhân viên hoàn thiện đơn hàng sau khi đã nhận bưu phẩm của khách 
parcelAdditionalFee float, -- Nhân viên điền phí dịch vụ sau khi nhận bưu phẩm thông qua dịch vụ phụ thêm
totalAmount float, -- Tổng số tiền đơn hàng, nhân viên tự điền phí sau khi xử lý đơn hàng và báo lại cho khách hàng
dateOrder datetime not null , -- Lưu lại ngày khách hàng đăng ký dịch vụ
dateTreat datetime, -- Lưu lại ngày nhân viên sử lý đơn hàng
orderDetailStatus int default'0' -- Bằng 0 khi đơn hàng chờ xử lý (hiển thị ra ngoài là pending), bằng 1 khi đơn hàng đã được xử lý (Sending) và bằng 2 khi khách hàng nhận được dịch vụ (Delivered)
)
go
create proc pc_insertFeedBack @feedbackContent nvarchar(max), @cusID nvarchar(50)
as
INSERT INTO tblFeedBack
                         (feedContent, cusUserName, adminUserName)
VALUES        (@feedbackContent,@cusID,'')
go
create proc pc_ViewHotNews
as
SELECT        TOP (1) *
FROM            tblNews
ORDER BY newsID DESC

go

create proc pc_View3News
as
SELECT        TOP(3) *
FROM            tblNews
order by NewsID desc
go
create proc pc_View10News
as
SELECT        TOP (10) newsID, newsTitle, newsBrief, newsContent, newsImage, adminUserName, newsStatus
FROM            tblNews
ORDER BY newsID DESC

go

create proc sp_AddCustomer
@cusUsername nvarchar(100),
@cusPassword nvarchar(100),
@cusFullname nvarchar(100),
@cusAddress nvarchar(100),
@cusEmail nvarchar(100)
as
insert into tblCustomer (cusUserName,cusPassword,cusFullName,cusAdress,cusEmail) values (@cusUsername,@cusPassword,@cusFullname,@cusAddress,@cusEmail)



-- Chú ý Proc này chưa được thực thi hiện đang chạy thử bên PostOfficeMainFunction

create PROCEDURE pc_getCity
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	/* SET NOCOUNT ON */
	SELECT       distinct(  branchCity)
	FROM            tblBranch

create PROCEDURE pc_getDistrictByCity @city nvarchar(100)
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	/* SET NOCOUNT ON */
	SELECT        branchDistrict
	FROM            tblBranch
	where branchCity = @city
	go
create PROCEDURE pc_viewmagazine_byID
@maga_ID int
AS
	SELECT        magazineDailyID, serviceID, magazineName
	FROM            tblMagazineDaily where magazineDailyID=@maga_ID
go
create PROCEDURE pc_view_magazine

AS
SELECT        tblMagazineDaily.*
	  FROM            tblMagazineDaily
	  go
	  CREATE PROCEDURE pc_Insert_order
@CusName nvarchar(200)
AS

insert into tblOrder values(@CusName,'',0)
go
create proc pc_insert_oderdetail
@serviceDetailID

go
CREATE PROCEDURE pc_view_service_maga
as
SELECT        serviceDetailName, serviceDetailID
FROM            tblServiceDetail
go
CREATE PROCEDURE insert_Order_detail
	@orderID int,
	@serviceDetailID int,
	 @magazineDailyID int,
	 @monthMagazineDaily int,
	 @addressMagazineDaily nvarchar(max)
	 as
	 insert  into tblOrderDetail(orderID,serviceDetailID,magazineDailyID,monthMagazineDaily,addressMagazineDaily,dateOrder,orderDetailStatus)  values(@orderID,@serviceDetailID,@magazineDailyID,@monthMagazineDaily,@addressMagazineDaily,getdate(),0)
	 
