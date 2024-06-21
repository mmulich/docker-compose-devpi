import re
from pathlib import Path

expression = r'#--Start devpi local configuration--(.*)#--End devpi local configuration--'

with Path('/etc/hosts').open('r+') as fb:
    content = fb.read()
    # Replace the section with nothing
    new_content = re.sub(expression, '', content, flags=re.S).strip() + '\n'
    fb.seek(0)
    fb.truncate(len(new_content))
    fb.write(new_content)
