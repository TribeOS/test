#!/bin/bash

if ! grep -q github.com ~/.ssh/known_hosts ; then
	ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
fi

if ! grep -q "\[remote \"github\"\]" .git/config ; then
	git remote add github $1
fi