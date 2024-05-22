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
    @Action NVARCHAR(50) = 'get_top_by_average_rating'  -- Default to getting top by average rating if no action is provided
AS
BEGIN
    SET NOCOUNT ON;

    IF @Action = 'get_top_by_average_rating'
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
            vote_average DESC;
    END
    ELSE IF @Action = 'get_top_by_vote_count'
    BEGIN
        -- Get top 10 movies by vote count
        SELECT TOP 10
            movie_id,
            title,
            image,
            vote_average
        FROM
            movies
        ORDER BY
            vote_count DESC; -- Assuming the vote_count field is in the movies table
    END
    ELSE
    BEGIN
        -- Invalid action provided, return an empty result set
        SELECT
            'Invalid action' AS Error;
    END
END
GO
