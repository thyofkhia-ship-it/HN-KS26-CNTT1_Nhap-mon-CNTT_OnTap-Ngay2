# Script: auto_warning.sh
# Tac gia: Tran Manh Hoa
# Ngay tao: 21/10/2026
echo "Dang loc canh bao thanh toan..."
echo "=== CANH BAO THANH TOAN ===" > logs/warning_report.txt
cat logs/payment.log | grep "WARNING" >> logs/warning_report.txt
echo "Hoan thanh!"
