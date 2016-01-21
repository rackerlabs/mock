#! /bin/bash -e

mockgen github.com/rackerlabs/mock/gomock Matcher \
  > gomock/mock_matcher/mock_matcher.go
mockgen github.com/rackerlabs/mock/sample Index,Embed,Embedded \
  > sample/mock_user/mock_user.go
gofmt -w gomock/mock_matcher/mock_matcher.go sample/mock_user/mock_user.go

echo >&2 "OK"
