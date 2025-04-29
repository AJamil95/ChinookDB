CREATE TABLE [dbo].[MediaType] (
    [MediaTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (120) NULL,
    [RowVersion]  ROWVERSION     NOT NULL,
    CONSTRAINT [PK_MediaType] PRIMARY KEY CLUSTERED ([MediaTypeId] ASC)
);

