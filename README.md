# parsecom-notifier

You can register many pushes at once.

## Installation

    $ gem install parsecom-notifier

If you are using rbenv, please don't forget call rehash

    $ rbenv rehash

## Usage

Set environment variables to connect parse.com

    export PARSE_APPLICATION_ID="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    export PARSE_API_KEY="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    export PARSE_MASTER_KEY="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

Create a file describing about pushes in yaml format. For instance:

    message: Hello from parsecom-notifier
    pushes:
    -
      at: 2014-12-02T15:00:00+09:00
      conditions:
        createdAt:
          from: 2014-10-01T00:00:00Z
    -
      at: 2014-12-02T15:20:00+09:00
      conditions:
        createdAt:
          from: 2014-07-18T10:51:00Z
          to: 2014-09-30T23:59:59Z

Call parsecom-notify command with the file.

    $ parsecom-notify pushes.yaml
