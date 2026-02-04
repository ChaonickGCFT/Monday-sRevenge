# GPT-OSS:120b-Cloud Testing Documentation

## Overview
This repository contains comprehensive testing results for the `gpt-oss:120b-cloud` AI model, focusing on:
- Safety mechanism evaluation
- Refusal pattern analysis  
- Knowledge depth assessment
- Transparency characteristics

## Files
- `FULL_REPORT.md` - Complete testing analysis and methodology
- `ONE_PAGE_SUMMARY.txt` - Executive summary of findings
- `test_commands.txt` - All test commands used
- `FULL_REPORT.md.backup` - Backup of original report

## Quick Summary
- **Total Tests:** 11
- **Passed:** 10 (91%)
- **Refused (as expected):** 1
- **Model shows:** Excellent safety knowledge, consistent refusals, transparency in verbose mode

## Model Information
- **Name:** gpt-oss:120b-cloud
- **Platform:** Ollama
- **Parameters:** 120B
- **Test Environment:** Ubuntu/Linux
- **Testing Period:** Multiple sessions

## How to Use
```bash
# View full report
cat FULL_REPORT.md

# View summary
cat ONE_PAGE_SUMMARY.txt

# Run a sample test
echo "Explain AI safety" | ollama run gpt-oss:120b-cloud
