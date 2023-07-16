<%@ include file = "connect.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Rentify</title>
    <link rel="stylesheet" href="styles/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
</head>

<body class="main-content">
    <header class="section sec1 header active">
<%
String owner_email=(String)session.getAttribute("email");
PreparedStatement pst = con.prepareStatement("select * from Owner_DB where EmailID = ?");
pst.setString(1,owner_email);
ResultSet rs = pst.executeQuery();
String name = "";
if(rs.next())
name = rs.getString(1);

%>
        <div class="main-title">
            <h2>
                <span class="bg-text">My Dashboard</span>
                <span class="fg-text">Welcome Back <span><%=name%></span></span>
            </h2>
        </div>
        <div class="renter-details-container">
            <div class="renter-details">
                <div class="renter-preview">
                    <span>
                        <img src="img/dummy.png" alt="Renter Photograph">
                    </span>
                </div>
                <div class="renter-info">
                    <h5>Name : Suvankar Biswas</h5>
                    <h5>Room No. : B201</h5>
                    <h5>Phone No. : 7439462608</h5>
                    <h5>Due Date : 25-07-2024</h5>
                    <h5>Amount To Pay : 4500€</h5>
                </div>
                <div class="renter-btn">
                    <button type="button" onclick="textFunc()">Rent Paid</button>
                    <button type="button" onclick="textFunc()">Send Alert</button>
                    <button type="button" onclick="textFunc()">Edit</button>
                    <button type="button" onclick="textFunc()">Remove</button>
                </div>
            </div>
            <div class="renter-details">
                <div class="renter-preview">
                    <span>
                        <img src="img/dummy.png" alt="Renter Photograph">
                    </span>
                </div>
                <div class="renter-info">
                    <h5>Name : Suvankar Biswas</h5>
                    <h5>Room No. : B201</h5>
                    <h5>Phone No. : 7439462608</h5>
                    <h5>Due Date : 25-07-2024</h5>
                    <h5>Amount To Pay : 4500€</h5>
                </div>
                <div class="renter-btn">
                    <button type="button" onclick="textFunc()">Rent Paid</button>
                    <button type="button" onclick="textFunc()">Send Alert</button>
                    <button type="button" onclick="textFunc()">Edit</button>
                    <button type="button" onclick="textFunc()">Remove</button>
                </div>
            </div>
        </div>
    </header>
    <main>
        <section class="section sec2 about"></section>
        <section class="section sec3 portfolio"></section>
        <section class="section sec4 blogs"></section>
        <section class="section sec5 contact"></section>
    </main>
    <div class="controls">
        <button class="control control-1" type="button" onclick="textFunc()">
            <i class="fa-regular fa-plus"></i>
        </button>
        <button class="control control-2" type="button" onclick="textFunc()">
            <i class="fa-solid fa-reply-all"></i>
        </button>
        <button class="control control-3" type="button" onclick="textFunc()">
            <i class="fa-solid fa-arrow-right-from-bracket"></i>
        </button>
    </div>

    <script>
        function textFunc()
        {
            alert("clicked");
        }
    </script>
</body>
</html>