
def fn(r, x)
    r*x / (r - (x-1)*x)
end

def r_squared(x, y)
  n = x.length.to_f
  mean_x = x.sum / n
  mean_y = y.sum / n

  # Calculate covariance components for slope (m)
  num = x.zip(y).map { |xi, yi| (xi - mean_x) * (yi - mean_y) }.sum
  den = x.map { |xi| (xi - mean_x)**2 }.sum

  # Handle perfectly vertical line or zero variance case
  return 0.0 if den == 0

  # Calculate regression line parameters (y = mx + c)
  m = num / den
  c = mean_y - (m * mean_x)

  # Calculate Sum of Squared Residuals (SS_res) and Total Sum of Squares (SS_tot)
  ss_res = x.zip(y).map { |xi, yi| (yi - (m * xi + c))**2 }.sum
  ss_tot = y.map { |yi| (yi - mean_y)**2 }.sum

  # Handle perfectly horizontal line case where all Y values are identical
  return 1.0 if ss_tot == 0

  # Calculate and return R-squared
  1.0 - (ss_res / ss_tot)
end

def fit(r)
    ins = (0..1).step(0.001).to_a[1..]
    outs = ins.map { |x| fn(r, x) }
    outs_db = outs.map { |y| 20*Math.log10(y) }
    r_squared(ins, outs_db)
end

rs = (-4..1).step(0.01).map { |v| 10**v }
fits = rs.map { |r| fit(r) }
rs.zip(fits).each { |r,f| puts "#{r}\t#{f}" }
