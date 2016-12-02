CREATE SCHEMA [Tests]
GO


EXECUTE sp_addextendedproperty	@name = N'MS_Description'
								,@value = N'Contains solutions to a interesting problems.'
								,@level0type = N'SCHEMA'
								,@level0name = N'Tests';