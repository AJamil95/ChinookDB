CREATE TABLE [dbo].[DimEmployee] (
    [EmployeeSK] INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]     NVARCHAR (20) NULL,
    [Apellido]   NVARCHAR (20) NULL,
    [Titulo]     NVARCHAR (30) NULL,
    [Ciudad]     NVARCHAR (40) NULL,
    [Pais]       NVARCHAR (40) NULL,
    [Email]      NVARCHAR (60) NULL,
    PRIMARY KEY CLUSTERED ([EmployeeSK] ASC)
);

