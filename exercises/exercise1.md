[2] pry(main)> b = Beer.first
  Beer Load (0.1ms)  SELECT  "beers".* FROM "beers" ORDER BY "beers"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<Beer:0x00561772b87290
 id: 1,
 name: "Iso 3",
 style: "Lager",
 brewery_id: 1,
 created_at: Sun, 22 Jan 2017 20:53:49 UTC +00:00,
 updated_at: Sun, 22 Jan 2017 20:53:49 UTC +00:00>
[3] pry(main)> b.ratings.create score:10
   (0.1ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 10], ["beer_id", 1], ["created_at", 2017-01-23 10:38:34 UTC], ["updated_at", 2017-01-23 10:38:34 UTC]]
   (13.7ms)  commit transaction
=> #<Rating:0x0056177256b140
 id: 1,
 score: 10,
 beer_id: 1,
 created_at: Mon, 23 Jan 2017 10:38:34 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:38:34 UTC +00:00>
[4] pry(main)> b.ratings.create score:21
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 21], ["beer_id", 1], ["created_at", 2017-01-23 10:38:38 UTC], ["updated_at", 2017-01-23 10:38:38 UTC]]
   (13.5ms)  commit transaction
=> #<Rating:0x00561771444da8
 id: 2,
 score: 21,
 beer_id: 1,
 created_at: Mon, 23 Jan 2017 10:38:38 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:38:38 UTC +00:00>
[5] pry(main)> b.ratings.create score:17
   (0.1ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 17], ["beer_id", 1], ["created_at", 2017-01-23 10:38:43 UTC], ["updated_at", 2017-01-23 10:38:43 UTC]]
   (14.1ms)  commit transaction
=> #<Rating:0x0056177442f5b8
 id: 3,
 score: 17,
 beer_id: 1,
 created_at: Mon, 23 Jan 2017 10:38:43 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:38:43 UTC +00:00>
[6] pry(main)> Brewery.create name: "BrewDog", year: 2007
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "breweries" ("name", "year", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "BrewDog"], ["year", 2007], ["created_at", 2017-01-23 10:40:51 UTC], ["updated_at", 2017-01-23 10:40:51 UTC]]
   (19.1ms)  commit transaction
=> #<Brewery:0x00561774194470
 id: 4,
 name: "BrewDog",
 year: 2007,
 created_at: Mon, 23 Jan 2017 10:40:51 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:40:51 UTC +00:00>
[7] pry(main)> b
=> #<Beer:0x00561772b87290
 id: 1,
 name: "Iso 3",
 style: "Lager",
 brewery_id: 1,
 created_at: Sun, 22 Jan 2017 20:53:49 UTC +00:00,
 updated_at: Sun, 22 Jan 2017 20:53:49 UTC +00:00>
[8] pry(main)> b = Brewery.last
  Brewery Load (0.3ms)  SELECT  "breweries".* FROM "breweries" ORDER BY "breweries"."id" DESC LIMIT ?  [["LIMIT", 1]]
=> #<Brewery:0x00561773c986b0
 id: 4,
 name: "BrewDog",
 year: 2007,
 created_at: Mon, 23 Jan 2017 10:40:51 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:40:51 UTC +00:00>
[9] pry(main)> b
=> #<Brewery:0x00561773c986b0
 id: 4,
 name: "BrewDog",
 year: 2007,
 created_at: Mon, 23 Jan 2017 10:40:51 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:40:51 UTC +00:00>
[10] pry(main)> b.beers.create name:"Punk IPA", style:"IPA"
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "beers" ("name", "style", "brewery_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Punk IPA"], ["style", "IPA"], ["brewery_id", 4], ["created_at", 2017-01-23 10:43:58 UTC], ["updated_at", 2017-01-23 10:43:58 UTC]]
   (15.3ms)  commit transaction
=> #<Beer:0x00561773914318
 id: 8,
 name: "Punk IPA",
 style: "IPA",
 brewery_id: 4,
 created_at: Mon, 23 Jan 2017 10:43:58 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:43:58 UTC +00:00>
[11] pry(main)> b.beers.create name:"Nanny State", style:"lowalcohol"
   (0.1ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "beers" ("name", "style", "brewery_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Nanny State"], ["style", "lowalcohol"], ["brewery_id", 4], ["created_at", 2017-01-23 10:44:27 UTC], ["updated_at", 2017-01-23 10:44:27 UTC]]
   (16.4ms)  commit transaction
=> #<Beer:0x005617736e5538
 id: 9,
 name: "Nanny State",
 style: "lowalcohol",
 brewery_id: 4,
 created_at: Mon, 23 Jan 2017 10:44:27 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:44:27 UTC +00:00>
[12] pry(main)> b = beer.last
NameError: undefined local variable or method `beer' for main:Object
from (pry):12:in `__pry__'
[13] pry(main)> b = Beer.last
  Beer Load (0.8ms)  SELECT  "beers".* FROM "beers" ORDER BY "beers"."id" DESC LIMIT ?  [["LIMIT", 1]]
=> #<Beer:0x005617727545b0
 id: 9,
 name: "Nanny State",
 style: "lowalcohol",
 brewery_id: 4,
 created_at: Mon, 23 Jan 2017 10:44:27 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:44:27 UTC +00:00>
[14] pry(main)> b.ratings.create score:09
SyntaxError: (eval):2: Invalid octal digit
[14] pry(main)> b
=> #<Beer:0x005617727545b0
 id: 9,
 name: "Nanny State",
 style: "lowalcohol",
 brewery_id: 4,
 created_at: Mon, 23 Jan 2017 10:44:27 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:44:27 UTC +00:00>
[15] pry(main)> b.ratings.create score:11
   (0.1ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 11], ["beer_id", 9], ["created_at", 2017-01-23 10:46:23 UTC], ["updated_at", 2017-01-23 10:46:23 UTC]]
   (15.0ms)  commit transaction
=> #<Rating:0x00561770e0e218
 id: 4,
 score: 11,
 beer_id: 9,
 created_at: Mon, 23 Jan 2017 10:46:23 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:46:23 UTC +00:00>
[16] pry(main)> b.ratings.create score:5
   (0.1ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 5], ["beer_id", 9], ["created_at", 2017-01-23 10:46:28 UTC], ["updated_at", 2017-01-23 10:46:28 UTC]]
   (18.7ms)  commit transaction
=> #<Rating:0x00561772326858
 id: 5,
 score: 5,
 beer_id: 9,
 created_at: Mon, 23 Jan 2017 10:46:28 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:46:28 UTC +00:00>
[17] pry(main)> b.ratings.create score:6
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 6], ["beer_id", 9], ["created_at", 2017-01-23 10:46:32 UTC], ["updated_at", 2017-01-23 10:46:32 UTC]]
   (14.0ms)  commit transaction
=> #<Rating:0x0056177275fc58
 id: 6,
 score: 6,
 beer_id: 9,
 created_at: Mon, 23 Jan 2017 10:46:32 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:46:32 UTC +00:00>
[18] pry(main)> b = Beer.find 8
  Beer Load (0.2ms)  SELECT  "beers".* FROM "beers" WHERE "beers"."id" = ? LIMIT ?  [["id", 8], ["LIMIT", 1]]
=> #<Beer:0x00561772b279a8
 id: 8,
 name: "Punk IPA",
 style: "IPA",
 brewery_id: 4,
 created_at: Mon, 23 Jan 2017 10:43:58 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:43:58 UTC +00:00>
[19] pry(main)> b
=> #<Beer:0x00561772b279a8
 id: 8,
 name: "Punk IPA",
 style: "IPA",
 brewery_id: 4,
 created_at: Mon, 23 Jan 2017 10:43:58 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:43:58 UTC +00:00>
[20] pry(main)> b.ratings.create score:8
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 8], ["beer_id", 8], ["created_at", 2017-01-23 10:47:36 UTC], ["updated_at", 2017-01-23 10:47:36 UTC]]
   (14.9ms)  commit transaction
=> #<Rating:0x0056177390ce60
 id: 7,
 score: 8,
 beer_id: 8,
 created_at: Mon, 23 Jan 2017 10:47:36 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:47:36 UTC +00:00>
[21] pry(main)> b.ratings.create score:12
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 12], ["beer_id", 8], ["created_at", 2017-01-23 10:47:39 UTC], ["updated_at", 2017-01-23 10:47:39 UTC]]
   (14.3ms)  commit transaction
=> #<Rating:0x00561773add078
 id: 8,
 score: 12,
 beer_id: 8,
 created_at: Mon, 23 Jan 2017 10:47:39 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:47:39 UTC +00:00>
[22] pry(main)> b.ratings.create score:13
   (0.1ms)  begin transaction
  SQL (0.2ms)  INSERT INTO "ratings" ("score", "beer_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["score", 13], ["beer_id", 8], ["created_at", 2017-01-23 10:47:41 UTC], ["updated_at", 2017-01-23 10:47:41 UTC]]
   (14.1ms)  commit transaction
=> #<Rating:0x00561773c7ce10
 id: 9,
 score: 13,
 beer_id: 8,
 created_at: Mon, 23 Jan 2017 10:47:41 UTC +00:00,
 updated_at: Mon, 23 Jan 2017 10:47:41 UTC +00:00>