-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GETTopTenMovies] 
AS
BEGIN
    -- Get top 10 movies by average rating 
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



