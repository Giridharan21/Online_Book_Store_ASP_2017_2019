--select * from signup;
--select  * from addbook
--where bid = 41;
--select * from author;
--select * from publisher;

select catname,subname,authorname,publisher.name,btitle,price,addbook.image,description,stock,langname from category,subcategory,addbook,author,publisher,addlang where addbook.catid=category.catid and addbook.subcatid=subcategory.subid and bid=41 and addbook.langid=addlang.id and addbook.aemail=author.authorid and addbook.pemail=publisher.pubid
select catname,subname,authorname,publisher.name,btitle,price,addbook.image,description,stock,langname 
from category,subcategory,addbook,author,publisher,addlang 
where addbook.catid=category.catid and 
addbook.subcatid=subcategory.subid and 
bid=14 and 
addbook.LangId=addlang.id and 
addbook.aemail=author.authorid and
addbook.pemail=publisher.pubid

--1. bookID
--2.Title          
--3.Author
--4. average_rating 1-5
--5. Price in $USD
--6.Quantity
--7. isbn
--8.Language
--9.Number of pages
--10. Publication date
--11. Publisher
--12.text reviews on book
--13:description
