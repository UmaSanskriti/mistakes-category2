# Student Performance Dashboard

A comprehensive interactive web dashboard that visualizes student performance data, mistake patterns, and learning analytics.

## Overview

This dashboard displays detailed performance metrics for three students, organized by topics, subtopics, and mistake categories. It provides an intuitive interface for educators to identify learning gaps and track student progress.

## Features

### 1. Student Organization
- Dashboard is sectioned by student ID (3 students: 181246, 191956, 192153)
- Each student has their own dedicated section with clear visual separation

### 2. Topic-Level Analytics
For each topic, the dashboard displays:
- **Skill Level**: Current proficiency level of the student in that topic
- **Total Questions**: Number of questions attempted in the topic
- **Mistake Rate**: Accuracy percentage (mistakes / total questions × 100%)

### 3. Subtopic Breakdown
- Each topic is further divided into subtopics based on the CSV data
- Subtopics are clearly labeled and organized within their parent topics

### 4. Interactive Mistake Category Pills
- Mistake categories are displayed as colorful, clickable pills
- **Frequency Counts**: Each pill shows how many times that mistake occurred (e.g., "3x Magnetic materials")
- No duplicate pills - repeated mistakes are consolidated with frequency indicators
- Pills are color-coded with gradient styling for visual appeal

### 5. Question Detail Modal
When clicking on any mistake category pill, a modal displays:
- **All questions** associated with that mistake category
- **Question text** with HTML rendering support
- **Question images** (if available)
- **Model solution** - the correct answer
- **Student answer** - what the student submitted
- **Marks awarded** out of maximum marks
- Visual indicators: Green for full marks, Yellow for partial, Red for zero

## Files

- `dashboard.html` - Main dashboard file (self-contained)
- `dataset_with_mistake_tags - Sheet2 (1).csv` - Source data file
- `test_dashboard.py` - Comprehensive test suite for QC
- `README.md` - This file

## Usage

### Opening the Dashboard

**Method 1: Direct File Open**
1. Simply double-click on `dashboard.html`
2. It will open in your default web browser

**Method 2: Local Server (Recommended)**
1. Open a terminal in this directory
2. Run: `python3 -m http.server 8000`
3. Open your browser and navigate to: `http://localhost:8000/dashboard.html`

### Navigating the Dashboard

1. **Browse Students**: Scroll through the page to see different students
2. **Review Topics**: Each student section shows all topics they attempted
3. **Explore Subtopics**: Within each topic, expand to see subtopic details
4. **Click Pills**: Click on any mistake category pill to see associated questions
5. **View Questions**: Modal shows complete question details with solutions and marks

## Quality Control

Run the comprehensive test suite to verify all requirements:

```bash
python3 test_dashboard.py
```

This will validate:
- CSV data loading
- Student sectioning
- Topic statistics (skill level, totals, accuracy)
- Subtopic organization
- Mistake pill functionality
- Question detail display
- No duplicate pills
- HTML structure integrity

## Technical Details

### Data Structure

The dashboard organizes data hierarchically:
```
Student ID
  └── Topic (with skill level, total questions, mistake rate)
      └── Subtopic
          └── Mistake Category (with frequency)
              └── Questions (with all details)
```

### Technologies Used

- **HTML5**: Structure and semantics
- **CSS3**: Responsive styling with gradients and animations
- **JavaScript**: Data parsing, structuring, and interactivity
- **CSV Parsing**: Custom parser handling quotes and commas

### Browser Compatibility

Tested and compatible with:
- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+

## Requirements Verification

All specified requirements have been implemented and tested:

- ✅ Uses CSV file for data
- ✅ Sections webpage by student_id
- ✅ Shows skill level for each topic
- ✅ Shows total questions per topic
- ✅ Shows accuracy (mistake rate) per topic
- ✅ Creates subtopic sections from CSV "subtopic" column
- ✅ Displays mistake categories as pills
- ✅ Shows frequency count for repeated mistakes
- ✅ No duplicate pills in same subtopic
- ✅ Pills are clickable
- ✅ Displays questions with solutions
- ✅ Shows student answers
- ✅ Shows marks out of maximum

## Performance

- Loads 294 records from CSV
- Processes data for 3 students
- Handles 13 topics (maximum per student)
- Displays hundreds of questions efficiently
- Modal-based design for optimal performance

## Styling

The dashboard features:
- Modern gradient backgrounds
- Responsive card-based layout
- Hover effects on interactive elements
- Smooth animations
- Color-coded badges for different metrics
- Professional typography

## Future Enhancements

Possible improvements:
- Export functionality for reports
- Filtering by topic or mistake category
- Search functionality
- Comparison view between students
- Progress tracking over time
- Print-friendly view

## Support

For issues or questions about the dashboard, please refer to the test results or examine the comprehensive QC test output.

---

**Created**: 2025
**Version**: 1.0
**Status**: Production Ready ✅
