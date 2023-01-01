measurements = {}
best = nil
# [[0.6, 1, 2, 4, 8], 17.6298421807748]

# 10	12	15	18	22	27 33	39	47	56	68	82
standard_rs = [1, 1.2, 1.5, 1.8, 2.2, 2.7, 3.3, 3.9, 4.7, 5.6, 6.8, 8.2, 10]

(standard_rs.map { |v| v / 10.0} + standard_rs).each do |r_denom|
  standard_rs.each do |r_a|
    standard_rs.each do |r_b|
      standard_rs.each do |r_c|
        standard_rs.each do |r_d|

          splits = (0...16).map do |i|
            b_a, b_b, b_c, b_d = ("%04d" % i.to_s(2)).chars.map(&:to_i)
            r = 1.0 / [r_a, r_b, r_c, r_d].zip([b_a, b_b, b_c, b_d]).map { |a, b| b / a.to_f }.sum
            r.infinite? ? 1024 : 1024 * (r / (r + r_denom))
          end.sort
          min_delta = splits[0..-2].zip(splits[1..-1]).map { |a, b| (b - a).abs }.min

          key = [r_denom, r_a,r_b,r_c,r_d]
          measurements[key] = min_delta

          best = [key, min_delta] if best.nil? || min_delta > best[1]
        end
      end
    end
  end
end
