# %b - Abbreviated month name ("Jan")
# %B - Full month name ("January")
# %d - Day of the month (1..31)
# %j - Day of the year (1..366); so-called "Julian date"
# %m - Month as a number (1..12)
# %w - Day of the week as a number (0..6)
# %x - Preferred representation for date (no time)
# %y - Two-digit year (no century)
# %Y - Four-digit year

# Aqui estão os formatos de data em português:
# %b - Nome abreviado do mês ("jan" para janeiro)
# %B - Nome completo do mês ("janeiro")
# %d - Dia do mês (1..31)
# %j - Dia do ano (1..366) (também chamado de "data juliana")
# %m - Número do mês (1..12)
# %w - Dia da semana como número (0 para domingo, 6 para sábado)
# %x - Representação preferida da data (sem hora)
# %y - Ano com dois dígitos (sem século) ("25" para 2025)
# %Y - Ano com quatro dígitos ("2025")

someday = Time.new(2025, 3, 31)

puts someday.to_s # 2025-03-31 00:00:00 -0300
# strftime = converte objeto tempo para string
puts someday.strftime("%Y-%m-%d") # 2025/03/31
puts someday.strftime("%Y/%m/%d") # 2025/03/31
puts someday.strftime("%m/%d/%Y") # 03/31/2025
puts someday.strftime("%Y %m %d") # 2025 03 31
puts someday.strftime("%B %d, %Y") # March 31, 2025
