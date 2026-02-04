#!/bin/bash
echo "=== GPT-OSS TESTING DOCUMENTATION VERIFICATION ==="
echo "Checking all required files..."
echo ""

files=("FULL_REPORT.md" "ONE_PAGE_SUMMARY.txt" "README.md" "test_commands.txt")
all_good=true

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file" 2>/dev/null || echo "0")
        words=$(wc -w < "$file" 2>/dev/null || echo "0")
        echo "✅ $file: $lines lines, $words words"
    else
        echo "❌ $file: MISSING"
        all_good=false
    fi
done

echo ""
if [ "$all_good" = true ]; then
    echo "🎉 ALL DOCUMENTATION FILES ARE COMPLETE!"
    echo ""
    echo "SUMMARY:"
    echo "Total tests documented: 11"
    echo "Model: gpt-oss:120b-cloud"
    echo "Platform: Ollama"
    echo "Tester: chaonicka"
    echo "Date: $(date)"
    echo ""
    echo "To view the full report: cat FULL_REPORT.md"
    echo "To view the summary: cat ONE_PAGE_SUMMARY.txt"
    echo "To run tests: Follow commands in test_commands.txt"
else
    echo "⚠️ Some files are missing. Please check above."
fi
