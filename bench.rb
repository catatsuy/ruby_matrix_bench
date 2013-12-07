require "benchmark"
require "json"
require "nmatrix"
require "matrix"

term = 28

cs_json = File::open("cs.json")
cs = JSON.load(cs_json)

cc_n_a = []
cc_a = []

cs.each do |c|
  cc_n = NMatrix.zeros(term)
  cc = Matrix.zero(term).to_a
  for j in 0..(term - 1)
    for i in j..(term - 1)
      cc_n[j,i] = cc_n[i,j] = c[i - j]
      cc[j][i] = cc[i][j] = c[i - j]
    end
  end
  cc_n_a.push(cc_n)
  cc_a.push(cc)
end

Benchmark.bm do |x|
  x.report do
    cc_n_a.each.with_index do |cc_n, index|
      cc_n.invert.dot NMatrix.new([term, 1], cs[index])
    end
  end
  x.report do
    cc_a.each.with_index do |cc, index|
      Matrix.rows(cc).inv * Vector.elements(cs[index])
    end
  end
end
