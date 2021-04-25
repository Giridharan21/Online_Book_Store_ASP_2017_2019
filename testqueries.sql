----SELECT r.id as id,r.Comment as comment,r.Rating as rating,r.UserFK as userFK,r.BookFK as BookFK ,  u.Value
----FROM Ratings r, UsefulnessRating u
----where  r.bookFK = 54 and r.id=u.RatingFK

----SELECT Top 1 r.id as id,r.Comment as comment,r.Rating as rating,r.UserFK as userFK,r.BookFK as BookFK , avg( u.Value) as ratingValue
----FROM Ratings r, UsefulnessRating u
----where  r.bookFK = 54 and r.id=u.RatingFK
----group by r.id,r.Comment,r.rating,r.UserFK,r.BookFK
----order by ratingValue desc 


----select * from addcart where 
----sessionid IN 
----(select sessionId from addcart
----where bookid in( 52)) and bookid not in (52)


----select * from addcart where 
----sessionid IN 
----(select sessionId from addcart
----where bookid in( 31)) and bookid not in (31)


----SELECT [Bid], [btitle], [price], [image] from addbook
----where bid in 
----(select bookid from addcart where 
----sessionid IN 
----(select sessionId from addcart
----where bookid in( select bookid from addcart
----where sessionid = 'jzzvcsouosmuyynmtok3lq3c')) and bookid not in (select bookid from addcart
----where sessionid = 'jzzvcsouosmuyynmtok3lq3c'))


----select bid,aemail from addbook

----insert into CoAuthors  select bid,aemail from addbook


------1 deg co authors
----select authorName from author
----where authorid in(
----select authorFk from CoAuthors where
----BookFK in(
----select BookFK from CoAuthors
----where AuthorFK = 1)
----and AuthorFK !=1 );


------Books done by co authors
------select distinct * from CoAuthors
------where AuthorFK in (
------select authorFk from CoAuthors where
------BookFK in(
------select BookFK from CoAuthors
------where AuthorFK = 1)
------and AuthorFK !=1);

----select authorName from author
----where authorid in(
----select authorfk from CoAuthors
----where bookfk in 
----(
----select distinct bookfk from CoAuthors
----where AuthorFK in 
----(
----select authorFk from CoAuthors where
----BookFK in
----(
----select BookFK from CoAuthors
----where AuthorFK = 1
----)
----and AuthorFK !=1
----) 
----)  and AuthorFK not in (
----select authorFk from CoAuthors where
----BookFK in(
----select BookFK from CoAuthors
----where AuthorFK = 1)
----and AuthorFK !=1) and authorfk !=1 );



----Top 10 books
--select top 10 (select btitle from addbook where bid = bookid) as name ,count(*) as c from addcart
--where sessionid in (

--select sessionid from newpayment
--where Lower(status) = lower('delivered') )
--group by bookid
--order by c desc;


---- Top publisher
--select  (select [name] from publisher where pubid=pemail) as name,count(*) as c from addbook 
--where bid in (
--select top 10 bookid  from addcart
--where sessionid in (

--select sessionid from newpayment
--where Lower(status) = lower('delivered') )
--)
--group by pemail
--order by c desc


---- top authors

--select  (select authorname from author where authorid=authorfk) as name,count(*) as c from CoAuthors
--where bookfk in (
--select top 10 bookid  from addcart
--where sessionid in (

--select sessionid from newpayment
--where Lower(status) = lower('delivered') )
--)
--group by authorfk
--order by c desc




----select authorname,d.c from author a, d
----where a.AuthorID = d.AuthorFK;



select Top 10 userFk, sum(value) as tot from UsefulnessRating
group by userfk
order by tot desc;

select top 10 ToUser, sum(Istrusted) as tot from UsersTrust
group by touser
order by tot desc;