bootstrap: docker
from: python:3.7.4-alpine3.10

%post

  apk add --update \
      build-base \
      git

  cd /
  git clone https://github.com/facebookresearch/fastText.git
  cd fastText
  pip install .
  cd / && rm -r fastText

%runscript

  python $@
