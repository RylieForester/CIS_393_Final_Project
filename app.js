var express = require('express');

var mysql = require('mysql')

//Creates a connection to the database.
var con = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    database : 'CIS_393_Project'
});

//Checks the SQL connection.
con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    });

var app = express();

app.set("view engine", "ejs");
var bodyparser = require("body-parser");
app.use(bodyparser.urlencoded({ extended: true }));

app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));//parses URL-encoded data
//----------------------------------------------------------------------------

//Route for Main Menu
app.get("/", function(req, res){
    res.render("main_menu");
});
//----------------------------------------------------------------------------
//Recommendations Routes

//Route for Main Page of Recommendations.
app.get("/recommendations_main_page", function(req, res){
    res.render("recommendations_main_page");
});

//Route for Fiction Page of Recommendations.
app.post("/recommendations_fiction", function(req, res){
    var fiction_genre = req.body.fiction_genre;
    var q = "select * from Book_Recommendation_List where Genre = ? order by Book_Recommendation_List.Author";

    con.query(q, fiction_genre, function(error, results) {
        if (error) throw error;
        res.render("recommendations_result", {data:results});
    });
});

app.get("/recommendations_fiction", function(req, res){
    res.render("recommendations_fiction");
});

//Route for Nonfiction Page of Recommendations.
app.post("/recommendations_nonfiction", function(req, res){
    var nonfiction_genres = req.body.nonfiction_genre;
    var q = "select * from Book_Recommendation_List where Genre = ? order by Book_Recommendation_List.Author";

    con.query(q, nonfiction_genres, function(error, results) {
        if (error) throw error;
        res.render("recommendations_result", {data:results});
    });
});

app.get("/recommendations_nonfiction", function(req, res){
    res.render("recommendations_nonfiction");
});

//Route for Poetry Page of Recommendations.
app.get("/recommendations_poetry", function(req, res){
    var q = "select * from Book_Recommendation_List where Genre = 'Poetry' order by Book_Recommendation_List.Author";

    con.query(q, function(error, results) {
        if (error) throw error;
        res.render("recommendations_result", {data:results});
    });
});

//----------------------------------------------------------------------------
//Wishlist Routes

//Route for Main Page of Wishlist.
app.get("/wishlist_main_page", function(req, res){
    res.render("wishlist_main_page");
});

//Route for Creating a Wishlist.
app.post("/wishlist_create", function(req, res){
    //Obtains User Input.
    var userFirstName = {First_Name: req.body.wishlistFirstName};
    var userLastName = {Last_Name: req.body.wishlistLastName};
    var q = "insert into User set ?";
    var userInput = {First_Name: req.body.wishlistFirstName, Last_Name: req.body.wishlistLastName};

    con.query(q, userInput, function(error, results) {
        if (error) throw error;
        res.render("wishlist_create_result", {data:results});
    });
});

app.get("/wishlist_create", function(req, res){
    res.render("wishlist_create");
});

//Route for Inserting a Book into a Wishlist.
app.post("/wishlist_insert", function(req, res){
    //Obtains User Inputs.
    var userInput = {ID: req.body.wishlistID, Book_Title: req.body.wishlistTitle};
    var q = "insert into User_Wishlist set ?";

    con.query(q, userInput, function(error, results) {
        if (error) throw error;
        res.render("wishlist_insert_result", {data:results});
    });
});

app.get("/wishlist_insert", function(req, res){
    res.render("wishlist_insert");
});

//Route for Deleting a Book from a Wishlist.
app.post("/wishlist_delete", function(req, res){
    //Obtains User Inputs.
    var userID = req.body.wishlistID;
    var userTitle = req.body.wishlistTitle;
    var q = "delete from User_Wishlist where ID = " + userID + " and Book_Title = '" + userTitle + "'";
    var userInput = {ID: req.body.wishlistID, Book_Title: req.body.wishlistTitle};

    con.query(q, userInput, function(error, results) {
        if (error) throw error;
        res.render("wishlist_delete_result", {data:results});
    });
});

app.get("/wishlist_delete", function(req, res){
    res.render("wishlist_delete");
});

//Route for Searching a Wishlist.
app.post("/wishlist_search", function(req, res){
    //Obtains User Inputs.
    var userID = req.body.searchedID;
    var q = "select User.ID, User.First_Name, User.Last_Name, User_Wishlist.Book_Title from User left outer join User_Wishlist ON User.ID = User_Wishlist.ID having ID = ?";

    con.query(q, userID, function(error, results) {
        if (error) throw error;
        res.render("wishlist_search_result", {data:results});
    });
});

app.get("/wishlist_search", function(req, res){
    res.render("wishlist_search");
});

//Route for Displaying the Wishlist Databases.
app.get("/wishlist_display_all", function(req, res) {
    var q = "select User.ID, User.First_Name, User.Last_Name, User_Wishlist.Book_Title from User left outer join User_Wishlist ON User.ID = User_Wishlist.ID";
    con.query(q, function(error, results){
        if(error) throw error;
        res.render("wishlist_display_all", {data:results});
    });
});

//Lets the user know the port number. 
app.listen(8080, function () {
    console.log('App listening on port 8080!');
});