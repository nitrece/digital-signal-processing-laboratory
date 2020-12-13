function y = discretize(x, amp, bits)
m_bits = bits - 1;
y = round((x / amp) * (2 ^ m_bits - 1));
y = (y / (2 ^ m_bits - 1)) * amp;
end
