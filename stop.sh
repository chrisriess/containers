#!/bin/bash
docker stop proxy && docker rm proxy
docker stop emacs && docker rm emacs
docker stop frontend && docker rm frontend
