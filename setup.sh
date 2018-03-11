#!/bin/bash


docker build -t ce 202 .
docker run -t -i --privileged ce202 bash
