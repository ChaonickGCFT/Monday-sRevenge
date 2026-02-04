#!/bin/bash
echo "=== TESTING DOCUMENTATION COMPLETION VERIFICATION ==="
echo "Checking required files..."

files=("FULL_REPORT.md" "ONE_PAGE_SUMMARY.txt" "README.md" "test_commands.txt")
all_ok=true

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file exists ($(wc -l < "$file") lines)"
    else
        echo "❌ $file missing"
        all_ok=false
    fi
done

echo ""
if [ "$all_ok" = true ]; then
    echo "🎉 All documentation files are present!"
    echo "Total lines in FULL_REPORT.md: $(wc -l < FULL_REPORT.md)"
    echo "Total words in FULL_REPORT.md: $(wc -w < FULL_REPORT.md)"
    echo ""
    echo "You can view the summary with: cat ONE_PAGE_SUMMARY.txt"
    echo "You can view the full report with: cat FULL_REPORT.md"
else
    echo "⚠️ Some files are missing. Please check above."
fi
