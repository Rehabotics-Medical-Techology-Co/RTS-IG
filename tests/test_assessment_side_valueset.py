import re
import unittest
from pathlib import Path


class AssessmentSideValueSetTest(unittest.TestCase):
    def test_snomed_codes_match_chinese_side_labels(self):
        source = (
            Path(__file__).resolve().parents[1]
            / "input/fsh/Profiles/Profile-ARATQR.fsh"
        ).read_text(encoding="utf-8")
        value_set = source.split("ValueSet: AssessmentSideValueSet", 1)[1]
        entries = dict(
            re.findall(r'^\* \$SCT#(\d+) "([^"]+)"', value_set, re.MULTILINE)
        )

        self.assertEqual(set(entries), {"24028007", "7771000"})
        self.assertIn("右", entries["24028007"])
        self.assertNotIn("左", entries["24028007"])
        self.assertIn("左", entries["7771000"])
        self.assertNotIn("右", entries["7771000"])


if __name__ == "__main__":
    unittest.main()
