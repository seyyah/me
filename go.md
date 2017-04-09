Go go

- http://www.cihanozhan.com/go-programlama-diline-genel-bakis/

- Go build system with file watchers, live reload and output streams. Run, build and watch file changes with custom paths https://github.com/tockins/realize

- Questions/answers and multiple choice by command line in Go https://github.com/tockins/interact

```go
package main

import (
	i "github.com/tockins/interact"
)

func main() {
	i.Run(&i.Interact{
		Questions: []*i.Question{
			{
				Quest: i.Quest{
					Msg:      "Would you like some coffee?",
				},
				Action: func(c i.Context) interface{} {
					val, err := c.Ans().Bool()
					if err != nil{
					    return err
					}
					fmt.Println(val)
					return nil
				},
			},
		},
	})
}
```

- Golang library for fuzzing matching within a set of strings https://github.com/schollz/closestmatch

- Golang package that generates clean, responsive HTML e-mails for sending transactional mail https://github.com/matcornic/hermes
![image](https://cloud.githubusercontent.com/assets/263237/24771475/65a7766c-1b16-11e7-9a9f-7e6e70aad960.png)

- Top-like interface for container metrics https://bcicen.github.io/ctop/
> ctop provides a concise and condensed overview of real-time metrics for multiple containers:
![](https://github.com/bcicen/ctop/raw/master/_docs/img/grid.gif)

- IRC, Slack and Telegram bot written in go: https://github.com/go-chat-bot/bot
![](https://cloud.githubusercontent.com/assets/1084729/12377689/5bf7d5f2-bd0d-11e5-87d9-525481f01c3a.gif)
- Curated list of Go design patterns, recipes and idioms http://tmrts.com/go-patterns https://github.com/tmrts/go-patterns
- A Commander for modern Go CLI interactions https://github.com/spf13/cobra
- A Fast and Flexible Static Site Generator built with love in GoLang http://gohugo.io https://github.com/spf13/hugo
- https://github.com/Sirupsen/awesome-go
- Seesaw v2 is a Linux Virtual Server (LVS) based load balancing platform: <https://github.com/google/seesaw>
- Based on "How to Write a Spelling Corrector": <https://github.com/montanaflynn/toy-spelling-corrector>, <http://norvig.com/spell-correct.html>
- Minimal AWS Lambda function manager with Go support: <https://github.com/apex/apex>
- Go Relational Persistence - an ORM-ish library for Go: <https://github.com/go-gorp/gorp>
- A lightweight MVC framework for Go(Golang): <https://github.com/gernest/utron>
- Echo is a fast ￼ and unfancy micro web framework for Go. <https://github.com/labstack/echo>
- Gryffin is a large scale web security scanning platform: <https://github.com/yahoo/gryffin>
- uilive is a go library for updating terminal output in realtime: <https://github.com/gosuri/uilive>
- Render is a package that provides functionality for easily rendering JSON, XML, text, binary data, and HTML templates: <https://github.com/unrolled/render>
- golang build tool in the spirt of rake, gulp: <https://github.com/go-godo/godo>
- A command-line fuzzy finder written in Go: <https://github.com/jondot/fzf>
- A visual interface to work with runtime profiling data for Go: <https://github.com/rakyll/gom>
- Minimalist Go library aimed at creating Console User Interfaces: <https://github.com/jroimartin/gocui>
- HTTP(S) load generator, ApacheBench (ab) replacement, written in Go: <https://github.com/rakyll/boom>
- https://github.com/gillesdemey/go-dicom
- Vulnerability scanner for Linux, agentless, written in golang. https://github.com/future-architect/vuls

Log,
- Structured, pluggable logging for Go: <https://github.com/Sirupsen/logrus>
- Package log implements a simple structured logging API inspired by Logrus, designed with centralization in mind. Read more on Medium: <https://github.com/apex/log>, [Medium: tanıtım](https://medium.com/@tjholowaychuk/apex-log-e8d9627f4a9a#.4bpbq5hko)

# Books
- Kitaplar: <https://github.com/adonovan/GoBooks>
- Example programs from "The Go Programming Language" <http://www.gopl.io>: <https://github.com/adonovan/gopl.io>
