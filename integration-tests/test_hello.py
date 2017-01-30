import requests
from django.test import TestCase


class ViewsTestClass(TestCase):
    def testhello(self):
        r = requests.get("web:8000")
        self.assertIn("hello", r)
