USE [master]
GO
/****** Object:  Database [MovieDB]    Script Date: 5/25/2024 10:58:41 PM ******/
CREATE DATABASE [MovieDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MovieDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MovieDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MovieDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MovieDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MovieDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MovieDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MovieDB] SET  MULTI_USER 
GO
ALTER DATABASE [MovieDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MovieDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [MovieDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MovieDB]
GO
/****** Object:  Table [dbo].[movies]    Script Date: 5/25/2024 10:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies](
	[movie_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[vote_average] [float] NOT NULL,
 CONSTRAINT [PK_movies] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[movies] ON 

INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (3, N'The Shawshank Redemption', N'/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg', 8.705)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (4, N'The Godfather', N'/tmU7GeKVybMWFButWEGl2M4GeiP.jpg', 8.695)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (5, N'The Godfather Part II', N'/kGzFbGhp99zva6oZODW5atUtnqi.jpg', 8.6)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (6, N'Schindler''s List', N'/zb6fM1CX41D9rF9hdgclu0peUmy.jpg', 8.568)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (7, N'12 Angry Men', N'/qqHQsStV6exghCM7zbObuYBiYxw.jpg', 8.5)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (8, N'Dilwale Dulhania Le Jayenge', N'/90ez6ArvpO8bvpyIngBuwXOqJm5.jpg', 8.537)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (9, N'Spirited Away', N'/mSDsSDwaP3E7dEfUPWy4J0djt4O.jpg', 8.5)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (10, N'The Dark Knight', N'/dqK9Hag1054tghRQSqLSfrkvQnA.jpg', 8.5)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (11, N'Parasite', N'/TU9NIjwzjoKPwQHoHshkFcQUCG.jpg', 8.509)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (12, N'The Green Mile', N'/vxJ08SvwomfKbpboCWynC3uqUg4.jpg', 8.505)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (13, N'Your Name.', N'/dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg', 8.496)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (14, N'Pulp Fiction', N'/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg', 8.489)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (15, N'The Lord of the Rings: The Return of the King', N'/2u7zbn8EudG6kLlBzUYqP8RyFU4.jpg', 8.48)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (16, N'Forrest Gump', N'/qdIMHd4sEfJSckfVJfKQvisL02a.jpg', 8.475)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (17, N'The Good, the Bad and the Ugly', N'/Adrip2Jqzw56KeuV2nAxucKMNXA.jpg', 8.5)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (18, N'GoodFellas', N'/sw7mordbZxgITU877yTpZCud90M.jpg', 8.465)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (19, N'Grave of the Fireflies', N'/dlC0ed9Ugh3FzydnkBtV5lRXUu4.jpg', 8.5)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (20, N'Radical', N'/gutU32BiBxJvJdzLv5RWC9hQhNh.jpg', 8.5)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (21, N'Seven Samurai', N'/qvZ91FwMq6O47VViAr8vZNQz3WI.jpg', 8.456)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (22, N'Cinema Paradiso', N'/k3SBILYxHRgjORb5tbvA5dm2N4h.jpg', 8.452)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (23, N'Life Is Beautiful', N'/gavyCu1UaTaTNPsVaGXT6pe5u24.jpg', 8.5)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (24, N'Dou kyu sei – Classmates', N'/3RMLbSEXOn1CzLoNT7xFeLfdxhq.jpg', 8.445)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (25, N'Fight Club', N'/hZkgoQYus5vegHoetLkCJzb17zJ.jpg', 8.4)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (26, N'Psycho', N'/uif5fUshJrXyyDzfpzp1DLw3N0S.jpg', 8.435)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (27, N'Interstellar', N'/xJHokMbljvjADYdit5fK5VQsXEG.jpg', 8.4)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (28, N'City of God', N'/uvitbjFU4JqvMwIkMWHp69bmUzG.jpg', 8.429)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (29, N'Impossible Things', N'/bxSBOAD8AuMHYMdW3jso9npAkgt.jpg', 8.4)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (30, N'Hope', N'/l5K9elugftlcyIHHm4nylvsn26X.jpg', 8.425)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (31, N'Gabriel''s Inferno', N'/w2uGvCpMtvRqZg6waC1hvLyZoJa.jpg', 8.423)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (32, N'Once Upon a Time in America', N'/uPYa165sraN2c8gZBM9C47g3JoU.jpg', 8.423)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (33, N'One Flew Over the Cuckoo''s Nest', N'/uA8eSNAUUUyfHNIrG4h0zHxzt9W.jpg', 8.4)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (34, N'The Lord of the Rings: The Fellowship of the Ring', N'/x2RS3uTcsJJ9IfjNPcgDmukoEcQ.jpg', 8.412)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (35, N'Primal: Tales of Savagery', N'/uBZQOYZLIU9dBmd62fdzBAoropu.jpg', 8.41)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (36, N'Howl''s Moving Castle', N'/xqaN2WYQclQlqvKvsOcNgOx2vRn.jpg', 8.409)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (37, N'Gabriel''s Inferno: Part II', N'/jtAI6OJIWLWiRItNSZoWjrsUtmi.jpg', 8.404)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (38, N'Spider-Man: Into the Spider-Verse', N'/b9YkKJcW3pPaXgMZu9uoT7v9yRB.jpg', 8.404)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (39, N'A Dog''s Will', N'/alQqTpmEkxSLgajfEYTsTH6nAKB.jpg', 8.399)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (40, N'The Lord of the Rings: The Two Towers', N'/hjDpYTSyJZFGzqKhZARtr6wAfIm.jpg', 8.395)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (41, N'Taylor Swift: Reputation Stadium Tour', N'/ySaK6hpbCc2OE13ac7ovhgWwR5u.jpg', 8.391)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (42, N'The Empire Strikes Back', N'/aJCtkxLLzkk1pECehVjKHA2lBgw.jpg', 8.39)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (43, N'Gabriel''s Inferno: Part III', N'/fQq1FWp1rC89xDrRMuyFJdFUdMd.jpg', 8.386)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (44, N'TAYLOR SWIFT | THE ERAS TOUR', N'/wVJG3u5Ru9tInxYiTCrJr4MpJ7Z.jpg', 8.4)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (45, N'The Legend of Hei', N'/aVFx1VtlOxR3v0ADEatalXOvwbu.jpg', 8.385)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (46, N'Harakiri', N'/nC3IjYhUgZWgfKfFX0ygMigFwgc.jpg', 8.385)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (47, N'The Pianist', N'/dVr11o9or7AS8AMPfwjSpEU83iU.jpg', 8.4)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (48, N'Whiplash', N'/vNXGrknx4GjWLgmuNTftWZluIUl.jpg', 8.381)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (49, N'A Silent Voice: The Movie', N'/5lAMQMWpXMsirvtLLvW7cJgEPkU.jpg', 8.379)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (50, N'Se7en', N'/iwgl8zlrrfvfWp9k9Paj8lvFEvS.jpg', 8.374)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (51, N'Inception', N'/28kKbSUvUz6P5RE1AuMJMO7IMfK.jpg', 8.4)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (52, N'Spider-Man: Across the Spider-Verse', N'/4HodYYKEIsGOdinkGi2Ucz6X9i0.jpg', 8.364)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (53, N'The Quintessential Quintuplets Movie', N'/jBIMZ0AlUYuFNsKbd4L6FojWMoy.jpg', 8.347)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (54, N'Rear Window', N'/zGs5tZOlvc9cprdcU6kDOVNpujf.jpg', 8.352)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (55, N'The Silence of the Lambs', N'/aYcnDyLMnpKce1FOYUpZrXtgUye.jpg', 8.3)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (56, N'American History X', N'/6qHI1IYj7QlLSCwHRzkL62X175s.jpg', 8.346)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (57, N'Princess Mononoke', N'/gl0jzn4BupSbL2qMVeqrjKkF9Js.jpg', 8.3)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (58, N'Once Upon a Studio', N'/8KJMOKyl9rpgb9ELEwhfBMIaTHw.jpg', 8.325)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (59, N'The Great Dictator', N'/c8Pi8F1FzpNebtgXcSjC9nWCdSW.jpg', 8.324)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (60, N'Hotarubi no Mori e', N'/qknxyRgP6UTmwJ4B9tDAmzHMq7u.jpg', 8.323)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (61, N'Dedicated to my ex', N'/1fOsyhVz5qyX2rl1qqX6KImVhTx.jpg', 8.32)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (62, N'Back to the Future', N'/hxSB02ksqnkXY4hPGAXqgO2fL01.jpg', 8.316)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (63, N'Neon Genesis Evangelion: The End of Evangelion', N'/xLMJCCSatxENpHO9rLW9yD8A12C.jpg', 8.315)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (64, N'High and Low', N'/gSCT6oP2Sbm71naW28Lh7afcMgY.jpg', 8.3)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (65, N'Dead Poets Society', N'/tJRToZBfb52NhF6SMGAe0bWQc6z.jpg', 8.314)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (66, N'Sunset Boulevard', N'/p47ihFj4A7EpBjmPHdTj4ipyq1S.jpg', 8.309)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (67, N'Léon: The Professional', N'/jynfI114q3kOAbIiVjVfFFmttU2.jpg', 8.3)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (68, N'Perfect Blue', N'/A1Larywbw79kZQqkvCEiPHJqdLN.jpg', 8.306)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (69, N'Ikiru', N'/yn6DvHSEXE8Ao3QaNlELpqeSOqx.jpg', 8.303)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (70, N'Modern Times', N'/kSlO1pHpwQfPQdgVPr7dJiJNtJ8.jpg', 8.3)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (71, N'Once Upon a Time in the West', N'/26SUDI2iKhZTIKcU4ZzezTH1G15.jpg', 8.3)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (72, N'The Boy, the Mole, the Fox and the Horse', N'/jGKQks1bd3rmltqaXbEbS9DnsPv.jpg', 8.283)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (73, N'Apocalypse Now', N'/1oWqzZft4AfDvtu48Z1J8t93DDM.jpg', 8.283)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (74, N'City Lights', N'/n0Cju2Eu3VyrUFl32thblHFWznA.jpg', 8.282)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (75, N'Le Trou', N'/f72GEQF2lKsdmEULSI9bWCbQylH.jpg', 8.281)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (76, N'The Intouchables', N'/bGksau9GGu0uJ8DJQ8DYc9JW5LM.jpg', 8.279)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (77, N'Life in a Year', N'/88J6waYVTta8Qz3iX3qUeWNA5d5.jpg', 8.272)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (78, N'It''s a Wonderful Life', N'/ch3lDc4xQ9MpsNEpnRhvR8PIxxK.jpg', 8.271)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (79, N'Paths of Glory', N'/354kfjVb96mtFALMhBE6jzHGiA2.jpg', 8.271)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (80, N'Five Feet Apart', N'/27ZkYMWynuK2qiDP6awc3MsCaOs.jpg', 8.269)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (81, N'Josee, the Tiger and the Fish', N'/i1GT0e6Crg6UezT3ibXnMS3pBAd.jpg', 8.266)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (82, N'Miracle in Cell No. 7', N'/inEy3A5OPgeYW4rjRiGycfEeQzA.jpg', 8.266)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (83, N'Given', N'/u1wHUA0R48FH4WV3sGqjwx3aNZm.jpg', 8.263)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (84, N'The Legend of 1900', N'/6rmb35g7XoMCMQtnbH0rUecFZlV.jpg', 8.262)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (85, N'Oldboy', N'/sdwjQEM869JFwMytTmvr6ggvaUl.jpg', 8.257)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (86, N'The Lion King', N'/wXsQvli6tWqja51pYxXNG1LFIGV.jpg', 8.256)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (87, N'Clouds', N'/nbAbAk80aWCpOS5kOPYJ1L9kE1R.jpg', 8.254)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (88, N'Violet Evergarden: The Movie', N'/aLqtWLA6NQHBwQHvHDq5z4EKUm0.jpg', 8.254)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (89, N'Avengers: Endgame', N'/7RyHsO4yDXtBv1zUU3mTpHeQ0d5.jpg', 8.254)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (90, N'Come and See', N'/xGzcusHWxLPvRYSBMeOJOVkdJbj.jpg', 8.254)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (91, N'Evangelion: 3.0+1.0 Thrice Upon a Time', N'/1EAxNqdkVnp48a7NUuNBHGflowM.jpg', 8.3)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (92, N'Klaus', N'/mlxKite1x1PgmIhJgAxNS9eHmH8.jpg', 8.248)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (93, N'Avengers: Infinity War', N'/mDfJG3LC3Dqb67AZ52x3Z0jU0uB.jpg', 8.246)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (94, N'Green Book', N'/2Xe9lISpwXKhvKiHttbFfVRERQX.jpg', 8.243)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (95, N'Puss in Boots: The Last Wish', N'/jr8tSoJGj33XLgFBy6lmZhpGQNu.jpg', 8.238)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (96, N'We All Loved Each Other So Much', N'/2Kkqmy3EpXqBDqv1vvsNXX3pwww.jpg', 8.238)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (97, N'Justice League Dark: Apokolips War', N'/sQkRiQo3nLrQYMXZodDjNUJKHZV.jpg', 8.2)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (98, N'Mommy', N'/oA7EHjQPgtPKSrvtNtzA82opnrQ.jpg', 8.2)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (99, N'Rascal Does Not Dream of a Dreaming Girl', N'/tyxqfALuq02khuKNCwmeMxrqt8T.jpg', 8.2)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (100, N'Demon Slayer -Kimetsu no Yaiba- The Movie: Mugen Train', N'/qjGrUmKW78MCFG8PTLDBp67S27p.jpg', 8.23)
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (101, N'I Want to Eat Your Pancreas', N'/YLyORLsYIjC0d1TFBSpJKk7piP.jpg', 8.226)
GO
INSERT [dbo].[movies] ([movie_id], [title], [image], [vote_average]) VALUES (102, N'The Handmaiden', N'/9o9ci7ZH9chSy8B7YXCBYih8Kkd.jpg', 8.227)
SET IDENTITY_INSERT [dbo].[movies] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_GETTopTenMovies]    Script Date: 5/25/2024 10:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GETTopTenMovies] 
AS
BEGIN
    -- Get top 10 movies by average rating and return as JSON
    SELECT TOP 10
        movie_id,
        title,
        image,
        vote_average
    FROM
        movies
    ORDER BY
        vote_average DESC
    FOR JSON PATH;
END
GO
USE [master]
GO
ALTER DATABASE [MovieDB] SET  READ_WRITE 
GO
