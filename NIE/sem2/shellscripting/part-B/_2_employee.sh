echo "Enter the basic salary"
read basic

ta=$((basic*10/100))
hra=$((basic*20/100))
da=$((basic*10/100))
total=$((basic+hra+da+ta))

echo "Travelling allowance : $ta"
echo "House rent allowance : $hra"
echo "TravDearness allowance : $da"
echo "Total Salary  : $total"